# 課題3 レポート

標準画像「Statham3.jpg」を原画像とする．この画像は縦755画像，横755画素による正方形のディジタルカラー画像である．

ORG=imread('Statham3.jpg'); % 原画像の入力
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示



によって，原画像を読み込み，カラー画像を白黒濃淡画像へ変換し、カラーバーを追加し、表示した結果を図１に示す．

![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/001.png)  
図1 原画像

原画像を閾値処理するには，輝度値の閾値を設定し、その設定値以上の画素を1，その他を0に変換すればよい。

IMG = ORG > 64; % 輝度値が64以上の画素を1，その他を0に変換
imagesc(IMG); colormap(gray); colorbar;

によって輝度値の閾値を64に設定し、輝度値が64以上の画素を1，その他を0に変換する。

輝度値の閾値を64に設定し、閾値処理した画像を図２に示す．

![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/002.png)  
図2 輝度値64を閾値とする閾値処理

同様に輝度値の閾値を96に設定し、輝度値が96以上の画素を1，その他を0に変換する。

輝度値の閾値を96に設定し、閾値処理した画像を図３に示す．

IMG = ORG > 96; % 輝度値が96以上の画素を1，その他を0に変換
imagesc(IMG); colormap(gray); colorbar;

とする．1/4サンプリングの結果を図３に示す．

![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/003.png)  
図3 輝度値96を閾値とする閾値処理

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

