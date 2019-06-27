# 課題2　レポート

標準画像「therock2」を原画像とする．この画像は縦717画像，横518画素による長方形のディジタルカラー画像である．

ORG=imread('therock2.png'); % 原画像の入力
ORG = rgb2gray(ORG); 
imagesc(ORG); colormap(gray); colorbar;  axis image; % 画像の表示
pause; % 一時停止

によって,現画像を読み込み,グレースケール化し,カラーバーを追加したものを図1に示す.



![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/2001.jpg)  
図1 グレースケール化原画像（カラーバー追加）

２階調画像を生成するには，輝度値の最大値は255なので，0-255の値を2つにわければよい。
よって、0-128と、129-255の2つに分割する。
以上より2階調化した画像を図3に示す．

IMG = ORG>128;%　画像を輝度値128にて分ける
imagesc(IMG); colormap(gray); colorbar;  axis image;

以上より2階調化した結果を図3に示す．

![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/2002.jpg)  
図2 ２階調画像の生成

同様に４階調画像を生成には，輝度値の最大値255を四分割し、





IMG = imresize(ORG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

とする．1/4サンプリングの結果を図３に示す．

![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/003.png)  
図3 1/4サンプリング

1/8から1/64サンプリングは，

IMG = imresize(ORG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

を繰り返す．サンプリングの結果を図４～７に示す．

![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/004.png)  
図4 1/8サンプリング

![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/005.png)  
図5 1/16サンプリング

![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/006.png)  
図6 1/32サンプリング

![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/007.png)  
図7 1/64サンプリング

このようにサンプリング幅が大きくなると，モザイク状のサンプリング歪みが発生する．
