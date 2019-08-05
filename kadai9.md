
# 課題9 レポート

標準画像「Lundgren9」を原画像とする．この画像は縦1920画像，横1280画素による長方形のディジタルカラー画像である．

ORG=imread('Lundgren9.jpg'); % 原画像の入力
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示



によって，原画像を読み込み，カラー画像を白黒濃淡画像へ変換し,カラーバーを追加し,表示した結果を図１に示す．

![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/9001.jpg)  
図1 グレースケール化原画像（カラーバー追加）


メディアンフィルターを適用し，ノイズ除去を体験する.よって,

ORG = imnoise(ORG,'salt & pepper',0.02); % ノイズ添付

imagesc(ORG); colormap(gray); colorbar;  axis image; % 画像の表示

pause;

IMG = filter2(fspecial('average',3),ORG); % 平滑化フィルタで雑音除去

imagesc(IMG); colormap(gray); colorbar;  axis image; % 画像の表示

pause;

IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去

imagesc(IMG); colormap(gray); colorbar;  axis image; % 画像の表示
pause;

f=[0,-1,0;-1,5,-1;0,-1,0]; % フィルタの設計

IMG = filter2(f,IMG,'same'); % フィルタの適用

imagesc(IMG); colormap(gray); colorbar;  axis image; % 画像の表示

pause;


とする.

図2にノイズ添付した画像を示す.


図3に平滑化フィルタで雑音除去した画像を示す.


図4にメディアンフィルタで雑音除去した画像を示す.


図5にフィルタの適用した画像を示す.


![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/9002.jpg)  
図2 ノイズ添付した画像


![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/9003.jpg)  
図3 平滑化フィルタで雑音除去した画像


![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/9004.jpg)  
図4 メディアンフィルタで雑音除去した画像


![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/9005.jpg)  
図5 フィルタの適用した画像



以上より,フィルタを用いたノイズ除去を体験することが出来た.
