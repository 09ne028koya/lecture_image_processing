ORG=imread('Lenna.png'); % ���摜�̓���
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); % �摜�̕\��
pause; % �ꎞ��~
IMG = ORG>64;
imagesc(IMG); colormap(gray); colorbar;
