# 課題5　レポート

標準画像「Stallone5」を原画像とする．この画像は縦412画像，横618画素による長方形のディジタルカラー画像である．

ORG=imread('Stallone5.jpg'); % 原画像の入力
ORG = rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar;  axis image;
pause;

によって,現画像を読み込み,グレースケール化し,カラーバーを追加したものを図1に示す.

![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/5001.jpg)  
図1 グレースケール化原画像（カラーバー追加）




判別分析法を用いて画像二値化するには，クラス間分散とクラス内分散により求められる分離度が最大値となる閾値で２値化すればばよい.
すなわち

H = imhist(ORG); %ヒストグラムのデータを列ベクトルEに格納
myu_T = mean(H);
max_val = 0;
max_thres = 1;
for i=1:255
C1 = H(1:i); %ヒストグラムを2つのクラスに分ける
C2 = H(i+1:256);
n1 = sum(C1); %画素数の算出
n2 = sum(C2);
myu1 = mean(C1); %平均値の算出
myu2 = mean(C2);
sigma1 = var(C1); %分散の算出
sigma2 = var(C2);
sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2); %クラス内分散の算出
sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2); %クラス間分散の算出
if max_val<sigma_B/sigma_w
max_val = sigma_B/sigma_w;
max_thres =i;
end;
end;

IMG = ORG > max_thres;
imagesc(IMG); colormap(gray); colorbar;  axis image;



とする.判別分析法を用いた二値化画像を図2に示す.


![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/5002.jpg)  
図2 判別分析法を用いた二値化画像

このように判別分析法をを用いた二値化によって画像二値化を行う際に、適当な閾値を得ることができる.


