ORG=imread('Lenna.png'); % ���摜�̓���
imagesc(ORG); % �摜�̕\��
pause; % �ꎞ��~

IMG = imresize(ORG,0.5);
imagesc(IMG);
pause;

IMG = imresize(IMG,0.5);
imagesc(IMG);
pause;

IMG = imresize(IMG,0.5);
imagesc(IMG);
pause;

IMG = imresize(IMG,0.5);
imagesc(IMG);
