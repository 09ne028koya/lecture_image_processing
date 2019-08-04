# 課題8  レポート

標準画像「Schwarzenegger8.jpg」を原画像とする．この画像は縦755画像，横755画素による正方形のディジタルカラー画像である．

ORG=imread('Schwarzenegger8.jpg'); % 原画像の入力
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示



によって，原画像を読み込み，カラー画像を白黒濃淡画像へ変換し、カラーバーを追加し、表示した結果を図１に示す．

![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/8001.jpg)  
図1 原画像

二値化された画像の連結成分にラベルをつけるには,白の部分（または黒の部分）が連続した画素に同じ番号を割り振る処理を行えばよい.
すなわち,

IMG = ORG > 128; % 閾値128で二値化
imagesc(IMG); colormap(gray); colorbar;  axis image; % 画像の表示
pause;
IMG = bwlabeln(IMG);
imagesc(IMG); colormap(jet); colorbar;  axis image; % 画像の表示
pause;

とする.


図2に閾値128で二値化した画像を示す.

図3に連結要素をラベル付けした画像を示す.

![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/8002.jpg)  
図2 閾値128で二値化した画像



![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/8003.jpg)  
図3 連結要素をラベル付けした画像

顔や背景が別のラベリングをされ分かれているのが分かる.
