ORG=imread('Lenna.png'); % ���摜�̓���
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); % �摜�̕\��
pause; % �ꎞ��~

th = graythresh(ORG)*255;
IMG = ORG>th;
imagesc(IMG); % �摜�̕\��

