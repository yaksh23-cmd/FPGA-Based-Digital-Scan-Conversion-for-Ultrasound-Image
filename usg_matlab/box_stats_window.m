function [win_sum, win_sumsq] = box_stats_window(img, W)
% Sliding window sum and sum-of-squares using convolution
% img uint8
img = single(img);
ker = ones(W, W, 'single');
win_sum   = conv2(img, ker, 'same');
win_sumsq = conv2(img.^2, ker, 'same');
end
