clc; clear; close all;

mainColor = imread('mainImage.jpg');   
templateColor = imread('template.jpg'); 


mainDisplay = mainColor;
templateDisplay = templateColor;

% Convert to grayscale manually for processing
if size(mainColor, 3) == 3
    mainGray = 0.2989 * double(mainColor(:,:,1)) + ...
               0.5870 * double(mainColor(:,:,2)) + ...
               0.1140 * double(mainColor(:,:,3));
else
    mainGray = double(mainColor);
end

if size(templateColor, 3) == 3
    templateGray = 0.2989 * double(templateColor(:,:,1)) + ...
                   0.5870 * double(templateColor(:,:,2)) + ...
                   0.1140 * double(templateColor(:,:,3));
else
    templateGray = double(templateColor);
end


mainGray = (mainGray - mean(mainGray(:))) / std(mainGray(:));
templateGray = (templateGray - mean(templateGray(:))) / std(templateGray(:));

% Cross-correlation
corrMap = conv2(mainGray, rot90(templateGray, 2), 'same');

% Find peak correlation point
[maxCorr, maxIndex] = max(abs(corrMap(:)));
[yPeak, xPeak] = ind2sub(size(corrMap), maxIndex);

% Compute rectangle position
[yTemp, xTemp] = size(templateGray);
yOffset = yPeak - round(yTemp/2);
xOffset = xPeak - round(xTemp/2);

% Display results 
figure;

subplot(1,3,1);
imshow(mainDisplay);
title('Main Image (Color)');

subplot(1,3,2);
imshow(templateDisplay);
title('Template (Color)');

subplot(1,3,3);
imshow(mainDisplay);
hold on;
rectangle('Position',[xOffset, yOffset, xTemp, yTemp], 'EdgeColor','r', 'LineWidth', 2);
title(sprintf('Detected Object (Corr = %.2f)', maxCorr));
hold off;

% Display correlation surface
figure;
surf(corrMap), shading flat;
title('Cross-Correlation Map');
xlabel('X'); ylabel('Y'); zlabel('Correlation Value');


fprintf('\n===== OBJECT DETECTION REPORT =====\n');
fprintf('Correlation Peak Value: %.4f\n', maxCorr);
fprintf('Detected Position (x, y): (%d, %d)\n', xOffset, yOffset);
fprintf('Template Size: %d x %d\n', xTemp, yTemp);
fprintf('===================================\n');
