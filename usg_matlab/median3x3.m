function out = median3x3(img)
% 3x3 median filter without toolbox (padding replicate)

img = single(img);
[H,W] = size(img);
out = zeros(H,W, 'single');
pad = padarray(img, [1 1], 'replicate', 'both');

for y = 2:H+1
    for x = 2:W+1
        block = pad(y-1:y+1, x-1:x+1);
        v = sort(block(:));
        out(y-1,x-1) = v(5); % median of 9 values
    end
end

out = uint8(max(0, min(255, round(out))));
end
