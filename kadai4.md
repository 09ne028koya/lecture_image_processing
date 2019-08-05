# 課題4  レポート

標準画像「Statham4」を原画像とする．この画像は縦900画像，横1200画素による長方形のディジタルカラー画像である．

ORG=imread('Statham4.jpg'); % 原画像の入力
ORG=rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar;  axis image;
pause;

によって,現画像を読み込み,グレースケール化し,カラーバーを追加したものを図1に示す.


![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/4001.jpg)  
図1 グレースケール化原画像（カラーバー追加）

画素の濃度ヒストグラムを生成するには画像中にある階調の画素がいくつあるかをグラフ表示すればよい.すなわち,



imhist(ORG); % ヒストグラムの表示


とする．濃度ヒストグラムの生成結果を図2に示す．



![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/4002.jpg)  
図2 濃度ヒストグラム

このように階調が30付近と180付近に多くあることが分かった.
この間を輝度値の閾値を設定すれば,より鮮明な画像の2値化を行えると分かる.
