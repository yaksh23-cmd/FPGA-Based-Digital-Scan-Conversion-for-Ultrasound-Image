function [Ai, s0] = wabi_edge_metric(p_m2, p_m1, p_p0, p_p1, s)
% WABI edge metric and warp
% Inputs are intensities (single or double), s in [0..1]
% Output Ai ~ [-1..1], s0 in [0..1]

L = 256;
diff1 = p_p0 - p_m1;
diff2 = p_p1 - p_m2;
abs1  = abs(diff1);
abs2  = abs(diff2);
numer = abs1 - abs2;

Ai = numer / (L - 1);  % small value usually

% Warp: s0 = s - s*Ai*s*(s-1)
s0 = s - s * Ai * s * (s - 1);
s0 = max(0, min(1, s0));
end
