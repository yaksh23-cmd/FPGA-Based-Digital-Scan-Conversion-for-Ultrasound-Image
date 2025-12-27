% demo_usg.m
% Ultrasound Scan Conversion + WABI + SRI (MATLAB reference implementation)
% Run this script to generate a synthetic polar frame, convert to Cartesian
% using WABI interpolation, then apply SRI (MARGF + median) speckle reduction.

clear; clc; close all;

%% Synthetic polar frame
num_scanlines = 128;    % angles
num_radius    = 256;    % radial samples
r_vals        = linspace(0, 1, num_radius);     % normalized radius
theta_vals    = linspace(0, 2*pi, num_scanlines+1); theta_vals(end) = []; % [0, 2pi)

% Build a synthetic polar image with a bright curved reflector and noise
polar_img = zeros(num_radius, num_scanlines, 'single');
for a = 1:num_scanlines
    th = theta_vals(a);
    % curve radius as function of angle
    r0 = 0.45 + 0.05*sin(3*th);
    ridx = round(r0*(num_radius-1)) + 1;
    ridx = max(3, min(num_radius-2, ridx));
    polar_img(ridx-1:ridx+1, a) = polar_img(ridx-1:ridx+1, a) + single([0.5; 1.0; 0.5])*180;
end
% Add speckle-like noise
polar_img = polar_img + 25*randn(size(polar_img), 'single');
polar_img = uint8(max(0, min(255, round(polar_img))));

%% DSC + WABI to Cartesian
outW = 512; outH = 512; center = [outW/2, outH/2];
k_const = 2;  % WABI k parameter (1..5 typical)
[cart_img, valid_mask] = dsc_polar_to_cart(polar_img, theta_vals, r_vals, outW, outH, center, k_const);

%% SRI (MARGF + median fallback)
W = 9;          % window size (odd)
h0 = 45^2;      % homogeneity threshold (tune for your data)
sri_img = sri_filter(cart_img, W, h0);

%% Show results
figure; 
subplot(2,2,1); imshow(polar_img, []); title('Synthetic Polar Frame');
subplot(2,2,2); imshow(cart_img, []); title('DSC + WABI Cartesian');
subplot(2,2,3); imshow(sri_img, []); title('After SRI (MARGF + Median)');
subplot(2,2,4); imshow(valid_mask, []); title('Valid mask (mapped pixels)');

fprintf('Done. You can tweak W, h0, and k_const to see different behaviors.\n');
