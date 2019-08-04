標準画像「Schwarzenegger7」を原画像とする．この画像は縦412画像，横618画素による長方形のディジタルカラー画像である．

ORG=imread('Schwarzenegger7.jp'); % 原画像の入力 ORG = rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換 imagesc(ORG); colormap(gray); colorbar; axis image; pause;

によって,現画像を読み込み,グレースケール化し,カラーバーを追加したものを図1に示す.



![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/7001.jpg)  
図1 原画像

