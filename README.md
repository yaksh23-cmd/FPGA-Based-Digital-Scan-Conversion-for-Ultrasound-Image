# 🩺 Digital Scan Conversion for Ultrasound Imaging

This repository contains my project **Digital Scan Conversion (DSC) for Ultrasound Imaging**, developed as part of my coursework at **IIIT Guwahati** under the supervision of **Dr. Rakesh Biswas**.  

The project explores efficient interpolation techniques for ultrasound image reconstruction, with the goal of reducing motion blur and improving diagnostic clarity.

---

## 📌 Introduction  
Ultrasonography (USG) uses ultrasound waves for medical imaging. Modern USG systems provide high resolution and clarity, but still face challenges with **motion blur**, especially while imaging moving organs such as the heart.  

### Problem  
- Motion blur caused by limited scanning rates.  
- Existing DSC systems rely on **warped-distance bilinear interpolation** → fast but introduces:  
  - Moiré artifacts  
  - Motion blurring  
  - Speckle noise  

### Proposed Solution  
Implement **Bicubic Interpolation** for DSC:  
- Produces sharper edges  
- Improves diagnostic clarity  
- Targets real-time performance

---

## 📚 Literature Review  
- **Current approaches**: FPGA-based DSC–SRI architectures for motion-blind ultrasound systems.  
- **Drawback**: Bilinear interpolation → suboptimal quality.  
- **Our approach**: Bicubic interpolation → better edge preservation & clarity.  

---

## 🔬 Methodology  
Key parameters used in interpolation:  
- `s` → normalized distance  
- `s′` → warped distance  
- `Ai` → asymmetry factor  
- `τ` → tuning parameter (controls warping)  
- `λ` → edge sensitivity control
- <img width="1071" height="580" alt="image" src="https://github.com/user-attachments/assets/cf14f9a1-ef7d-4038-8bb4-9ae732bbc577" />


➡️ Implemented **Warped Distance Bicubic Interpolation** for DSC.  

---

## 🖼️ Results  
- **Bilinear interpolation** → blurred edges, noise  
- **Bicubic interpolation** → sharper images, improved diagnostic quality
  <img width="954" height="383" alt="image" src="https://github.com/user-attachments/assets/3e182ace-ec06-4a89-a539-fc5ec3aab981" />

---

## 🚀 Future Work  
- [ ] Compute additional quality metrics (Edge Keeping Index, Figure of Merit)  
- [ ] Implement DSC algorithm on FPGA for real-time testing  
- [ ] Explore lightweight enhancements of bilinear interpolation  
- [ ] Hybrid interpolation → apply different techniques across image regions for speed-quality balance  

---

## 📖 References  
1. R. Biswas, K. Sarawadekar, S. Varna et al., *An FPGA-based architecture of DSC–SRI units specially for motion blind ultrasound systems*, J Real-Time Image Proc 10, 573–595 (2015).  
2. D. Bera, L. Agarwal, S. Banerjee, *Multirate scan conversion of ultrasound images using warped distance based adaptive bilinear interpolation*, IEEE CBMS, 2009.  
3. M.M. Hadhoud, M.I. Dessouky, F.E.A. El-Samie, *Adaptive image interpolation based on local activity levels*, Proc. 20th National Radio Science Conference, 2003.  

---

## 👨‍💻 Author  
**Yaksh Shirpurkar (2201238)**  
EC400 Project | IIIT Guwahati  
