ORG=imread('Lenna.png'); % ���摜�̓���
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); % �摜�̕\��
pause; % �ꎞ��~

IMG = ORG>128;
imagesc(IMG); % �摜�̕\��
pause; % �ꎞ��~


IMG = bwmorph(IMG,'skel',Inf);
imagesc(IMG); % �摜�̕\��

