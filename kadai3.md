# 課題3 レポート

標準画像「Statham3」を原画像とする．この画像は縦755画像，横755画素による正方形のディジタルカラー画像である．

ORG=imread('Statham3.jpg'); % 原画像の入力

ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換

imagesc(ORG); colormap(gray); colorbar; % 画像の表示



によって，原画像を読み込み，カラー画像を白黒濃淡画像へ変換し,カラーバーを追加し,表示した結果を図１に示す．

![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/3001.jpg)  
図1 グレースケール化原画像（カラーバー追加）


原画像を閾値処理するには，輝度値の閾値を設定し,その設定値以上の画素を1，その他を0に変換すればよい.すなわち

IMG = ORG > 64; % 輝度値が64以上の画素を1，その他を0に変換

imagesc(IMG); colormap(gray); colorbar;

によって輝度値の閾値を64に設定し,輝度値が64以上の画素を1，その他を0に変換する.

輝度値の閾値を64に設定し,閾値処理した画像を図２に示す．

![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/3002.jpg)  
図2 輝度値64を閾値とする閾値処理

同様に輝度値の閾値を96に設定し,輝度値が96以上の画素を1，その他を0に変換する.すなわち,


IMG = ORG > 96; % 輝度値が96以上の画素を1，その他を0に変換する。

とする.

輝度値の閾値を96に設定し,閾値処理した画像を図３に示す．

![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/3003.jpg)  

図3 輝度値96を閾値とする閾値処理




同様に輝度値の閾値を128に設定し,輝度値が128以上の画素を1，その他を0に変換する。すなわち



IMG = ORG > 128; % 輝度値が128以上の画素を1，その他を0に変換する。


とする.

輝度値の閾値を128に設定し,閾値処理した画像を図４に示す．

![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/3004.jpg)  

図4 輝度値128を閾値とする閾値処理

同様に輝度値の閾値を196に設定し,輝度値が196以上の画素を1，その他を0に変換する。すなわち



IMG = ORG > 196; % 輝度値が196以上の画素を1，その他を0に変換する。


とする.

輝度値の閾値を196に設定し,閾値処理した画像を図5に示す．

![原画像](https://raw.githubusercontent.com/09ne028koya/lecture_image_processing/master/image/3005.jpg)  

図5 輝度値196を閾値とする閾値処理



このように輝度値の閾値が低すぎると画像の明るい部分がホワイトアウトしてしまい,輝度値の閾値が高すぎると画像の暗い部分がブラックアウトしてしまう.
画像により適切な輝度値の閾値を設定することが必要だと分かる.

