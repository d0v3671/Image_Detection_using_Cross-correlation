<h1 align="center">🎯 Object Detection using Cross-Correlation</h1>
<p align="center">
  <b>MATLAB Mini Project | Digital Signal Processing</b><br>
  🧠 Correlation • 🔍 Pattern Matching • 🖼️ Image Processing
</p>

---

## 📂 Project Overview

- **Topic:** Digital Signal Processing (Correlation Application)  
- **Concept Used:** Cross-Correlation  
- **Language:** MATLAB
  
---

## 🧠 Objectives

- To study and implement the concept of correlation in digital signal processing.  
- To apply cross-correlation for detecting an object within a larger image.  
- To understand how correlation helps in pattern recognition and image matching.  
- To visualize detection results using a 3D correlation map and bounding box.  
- To perform detection using basic MATLAB operations (no toolboxes).

---

## ⚙️ How It Works

1. The main image and template image are converted to grayscale.  
2. Both images are normalized to remove brightness effects.  
3. Cross-correlation is applied using `conv2()` to find similarity regions.  
4. The location of the highest correlation value indicates the detected object.  
5. The detected area is highlighted using a red bounding box.  
6. The correlation surface is displayed in 3D for visualization.

---

## 🖼️ Output

- **Input:**  
  - `mainImage.jpg` – full image
   
    <img width="300" height="300" alt="Screenshot 2025-10-27 105413" src="https://github.com/user-attachments/assets/0316c3ec-939a-4319-acd6-57f022f395e1" />
  - `template.jpg` – cropped portion of the object
    
    ![template](https://github.com/user-attachments/assets/5db2e7fd-523b-4e84-badf-b464fb8507c1)


- **Output:**  
  - Bounding box highlighting the detected object.  
  - 3D correlation surface plot.
<img width="1146" height="384" alt="Screenshot 2025-10-27 105413" src="https://github.com/user-attachments/assets/b969034d-3c37-4479-9668-79b5b9808074" />
<img width="1250" height="598" alt="Screenshot 2025-10-27 105442" src="https://github.com/user-attachments/assets/bb4dea8a-87be-4bb1-a9e0-da947b66feb4" />
