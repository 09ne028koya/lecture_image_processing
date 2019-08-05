# 課題7  レポート

標準画像「Schwarzenegger7」を原画像とする．この画像は縦320画像，横395画素による長方形のディジタルカラー画像である．

ORG=imread('Schwarzenegger7.jp'); % 原画像の入力 ORG = rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換 imagesc(ORG); colormap(gray); colorbar; axis image; pause;

によって,現画像を読み込み,グレースケール化し,カラーバーを追加したものを図1に示す.



![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/7001.jpg)  
図1 原画像

ダイナミックレンジの拡大をするには濃度値の最小値から最大値の幅を広げればよい.
よって,



imhist(ORG); % 濃度ヒストグラムを生成、表示
pause;
ORG = double(ORG);
mn = min(ORG(:)); % 濃度値の最小値を算出
mx = max(ORG(:)); % 濃度値の最大値を算出
ORG = (ORG-mn)/(mx-mn)*255;
imagesc(ORG); colormap(gray); colorbar;  axis image; % 画像の表示
pause;
ORG = uint8(ORG); % この行について考察せよ
imhist(ORG); % 濃度ヒストグラムを生成、表示


とする.

原画像の濃度ヒストグラムを図2に示す.


ダイナミックレンジを拡大した画像を図3に示す.


ダイナミックレンジを拡大の濃度ヒストグラムを図4に示す.



![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/7002.jpg)  
図2 原画像の濃度ヒストグラム



![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/7003.jpg)  
図3 ダイナミックレンジを拡大した画像



![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/7004.jpg)  
図4 ダイナミックレンジを拡大の濃度ヒストグラム







ORG = uint8(ORG); % この行について考察せよ


この行ではダイナミックレンジを拡大した画像ではコンピューターが正しく表示できないため,
コンピューターで表示できるuint8 クラスのダイナミックレンジに画像を変換している.


