# 課題10 レポート

標準画像「Lundgren10」を原画像とする．この画像は縦474画像，横472画素による長方形のディジタルカラー画像である．

ORG=imread('Lundgren10.png'); % 原画像の入力
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示



によって，原画像を読み込み，カラー画像を白黒濃淡画像へ変換し,カラーバーを追加し,表示した結果を図１に示す．

![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/10001.jpg)  
図1 グレースケール化原画像（カラーバー追加）


プレウィット法,ソベル法,キャニー法を用いてエッジ抽出を行う.よって,


IMG = edge(ORG,'prewitt'); % エッジ抽出（プレウィット法）

imagesc(IMG); colormap('gray'); colorbar;  axis image;% 画像表示

pause; % 一時停止

IMG = edge(ORG,'sobel'); % エッジ抽出（ソベル法）

imagesc(IMG); colormap('gray'); colorbar;  axis image;% 画像表示

pause; % 一時停止

IMG = edge(ORG,'canny'); % エッジ抽出（キャニー法）

imagesc(IMG); colormap('gray'); colorbar;  axis image;% 画像表示

pause; % 一時停止

とする.

図2にプレウィット法を用いたエッジ抽出画像を示す.
図3にソベル法を用いたエッジ抽出画像を示す.
図4にキャニー法を用いたエッジ抽出画像を示す.



![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/10002.jpg)  
図2 エッジ抽出（プレウィット法）



![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/10003.jpg)  
図3 エッジ抽出（プレウィット法）




![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/10004.jpg)  
図4 エッジ抽出（プレウィット法）



以上より, 画像のエッジ抽出を体験することが出来た.
