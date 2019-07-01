# 課題2　レポート

標準画像「therock2」を原画像とする．この画像は縦717画像，横518画素による長方形のディジタルカラー画像である．

ORG=imread('therock2.png'); % 原画像の入力
ORG = rgb2gray(ORG); 
imagesc(ORG); colormap(gray); colorbar;  axis image; % 画像の表示
pause; % 一時停止

によって,現画像を読み込み,グレースケール化し,カラーバーを追加したものを図1に示す.

![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/2001.jpg)  
図1 グレースケール化原画像（カラーバー追加）



２階調画像を生成するには，輝度値の0-255の値を2つにわければよい。
よって、0-128と、129-255の2つに分割する。すなわち

IMG = ORG>128;%　画像を輝度値128にて分ける
imagesc(IMG); colormap(gray); colorbar;  axis image;

以上より2階調化した結果を図3に示す．

![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/2002.jpg)  
図2 ２階調画像



同様に４階調画像を生成には，輝度値の0-255を4分割すればよい。
0-64,65-128,129-192,193-255の様に分ける。すなわち

% ４階調画像の生成
IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar;  axis image;

とする．４階調画像の生成結果を図３に示す．

![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/2003.jpg)  
図3 ４階調画像



さらに同様に8階調画像を生成には，輝度値の0-255を8分割すればよい。
0-32,33-64,65-96,97-128,129-160,161-192,193-224,225-255の様に分ける。すなわち

% 8階調画像の生成
IMG0 = ORG>32;
IMG1 = ORG>64;
IMG2 = ORG>96;
IMG3 = ORG>128;
IMG4 = ORG>160;
IMG5 = ORG>192;
IMG6 = ORG>224;
IMG = IMG0 + IMG1 + IMG2 + IMG3+ IMG4 + IMG5 + IMG6;
imagesc(IMG); colormap(gray); colorbar;  axis image;

とする．8階調画像の生成結果を図4に示す．

![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/2004.jpg)  
図4 8階調画像


このように諧調を上げるごとに画像は鮮明になっていく.
