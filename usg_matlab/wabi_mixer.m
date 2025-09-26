function Ihat = wabi_mixer(I0, I1, Ai, s0, k_const)
% WABI mixer: warped adaptive bilinear interpolation
% I0, I1: neighbor pixels
% Ai: asymmetry constant
% s0: warped fractional position
% k_const: typically 1..5

a0 = 1 - k_const * Ai;
a1 = 1 + k_const * Ai;

Ihat = (1 - s0) * a0 * I0 + s0 * a1 * I1;
end
