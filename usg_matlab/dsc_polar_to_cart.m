function [cart_img, valid_mask] = dsc_polar_to_cart(polar_img, theta_vals, r_vals, outW, outH, center, k_const)
% DSC + WABI mapping: polar (r,theta) -> Cartesian (x,y)
% polar_img: [num_radius x num_scanlines], uint8
% theta_vals: 1 x A (radians)
% r_vals: 1 x R in [0..1]
% Returns cart_img [outH x outW] and valid_mask (logical)

if nargin < 7, k_const = 2; end

[R, A] = size(polar_img);
cart_img = zeros(outH, outW, 'single');
valid_mask = false(outH, outW);

cx = center(1); cy = center(2);
max_r_pix = min(cx, cy); % inscribe circle

% Precompute for speed
cosT = cos(theta_vals); 
sinT = sin(theta_vals);

% Build angle to index mapping helper
dtheta = 2*pi / A;

for y = 1:outH
    for x = 1:outW
        dx = (x - cx); dy = (y - cy);
        r_pix = hypot(dx, dy);
        if r_pix <= 1 || r_pix > max_r_pix
            % outside useful annulus
            continue;
        end

        % Normalize radius to [0..1]
        r = r_pix / max_r_pix;
        if r < 0 || r > 1, continue; end

        % Compute theta in [0, 2pi)
        th = atan2(dy, dx);
        if th < 0, th = th + 2*pi; end

        % Map theta to nearest scanline indices
        a_float = th / dtheta + 1;  % 1-based float index
        a0 = floor(a_float); a1 = a0 + 1;
        s_angle = a_float - a0; % fractional between a0 -> a1

        if a0 < 1, a0 = A; end
        if a1 > A, a1 = 1; end  % wrap around

        % Map radius to sample indices on each scanline
        r_float = r*(R-1) + 1;
        i1 = floor(r_float); i2 = i1 + 1;
        s_rad = r_float - i1; % fractional between i1 -> i2

        if i1 < 2 || i2 > R-1
            % need neighbors i1-1, i1, i2, i2+1 for WABI edge metric
            continue;
        end

        % We will interpolate along the radius on the chosen scanline.
        % Pick one of the two angles (nearest) to keep complexity down here.
        ang_idx = a0;
        col = polar_img(:, ang_idx);

        p_m2 = single(col(i1-1));
        p_m1 = single(col(i1));
        p_p0 = single(col(i2));
        p_p1 = single(col(i2+1));

        s = s_rad;  % fractional position between I0 (i1) and I1 (i2)

        % Edge metric + warp
        [Ai, s0] = wabi_edge_metric(p_m2, p_m1, p_p0, p_p1, s);

        % Mixer
        Ihat = wabi_mixer(p_m1, p_p0, Ai, s0, k_const);

        cart_img(y, x) = Ihat;
        valid_mask(y, x) = true;
    end
end

cart_img = uint8(max(0, min(255, round(cart_img))));
end
