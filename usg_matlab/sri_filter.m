function out = sri_filter(img, W, h0)
% SRI: Mean in homogeneous areas, median elsewhere
img = uint8(img);

[win_sum, win_sumsq] = box_stats_window(img, W);
[homog_mask, mean_img] = margf_decider(win_sum, win_sumsq, W, h0);
mean_img_u8 = uint8(max(0, min(255, round(mean_img))));

med = median3x3(img);

out = med;
out(homog_mask) = mean_img_u8(homog_mask);
end
