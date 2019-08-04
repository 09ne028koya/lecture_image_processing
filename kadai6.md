# 課題6 レポート

標準画像「Stallone6」を原画像とする．この画像は縦431画素，横650画素による長方形のディジタルカラー画像である．

ORG=imread('Stallone6.jpg'); % 原画像の入力
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示



によって，原画像を読み込み，カラー画像を白黒濃淡画像へ変換し、カラーバーを追加し、表示した結果を図１に示す．

![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/6001.jpg)  
図1 原画像


輝度値の閾値を128に設定した二値化では,
輝度値の閾値を128に設定し,輝度値が128以上の画素を1，その他を0に変換する。すなわち

IMG = ORG > 128; % 輝度値が128以上の画素を1，その他を0に変換する。

とする. 輝度値の閾値を128に設定し,閾値処理した画像を図2に示す．


![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/6002.jpg)  
図2　輝度値128を閾値とする閾値処理


ディザ法による二値化では,
グレースケールの画像を小さいブロックに分割し，それにマスクを掛けて閾値を越えたピクセルを白，下回ったものを黒というように処理すればよい．


IMG = dither(ORG); % ディザ法による二値化

とする. ディザ法による二値化画像を図3に示す.


![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/6003.jpg)  
図3　ディザ法による二値化画像


以上より２種類の二値化画像を得られた.
