ORG=imread('Lenna.png'); % ���摜�̓���
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); % �摜�̕\��
pause; % �ꎞ��~

IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;
pause;

IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 +IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar;
