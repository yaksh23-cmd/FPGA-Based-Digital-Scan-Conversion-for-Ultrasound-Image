USG MATLAB Reference Implementation
===================================

Files:
- demo_usg.m            : Run this to generate a synthetic polar frame, map via DSC+WABI, then SRI
- dsc_polar_to_cart.m   : Polar->Cartesian with WABI interpolation
- wabi_edge_metric.m    : Computes Ai and warped s0
- wabi_mixer.m          : Computes interpolated intensity using Ai & s0
- median3x3.m           : 3x3 median filter (no toolbox dependency)
- box_stats_window.m    : Sliding window sum and sumsq via convolution
- margf_decider.m       : Homogeneity decision and mean output
- sri_filter.m          : Full SRI pass (mean in homogeneous areas, else median)

Quick start:
1) Open MATLAB (or Octave) in the folder containing these files.
2) Run:  demo_usg
3) Tweak parameters in demo_usg.m:
   - k_const (WABI strength)
   - W (window size for SRI, odd)
   - h0 (homogeneity threshold, ~ variance level)

Notes:
- This is a clean reference for understanding. For real-time FPGA, you'd
  replace loops with hardware pipelines and BRAM windows.
- The demo creates a synthetic polar frame; you can swap in real data by
  loading a [num_radius x num_scanlines] uint8 matrix into `polar_img`.
