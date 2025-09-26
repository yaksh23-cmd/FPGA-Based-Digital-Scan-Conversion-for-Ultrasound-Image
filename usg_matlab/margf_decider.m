function [homog_mask, mean_img] = margf_decider(win_sum, win_sumsq, W, h0)
% Decide homogeneity using a variance-like measure
% If sumsq * 1 < (h0) * sum^2 / W^2  --> treat as homogeneous (heuristic form)

W2 = W*W;
% estimated variance * W2 ~ win_sumsq*W2 - (win_sum.^2)
lhs = win_sumsq * W2;
rhs = h0 * (win_sum.^2);

homog_mask = lhs < rhs;

% mean = win_sum / (W^2)
mean_img = win_sum / W2;
end
