# 課題8レポート　　
標準画像「Girl」を原画像とする．この画像は縦256画像，横256画素による正方形のディジタルカラー画像である．

ORG = imread('Girl.bmp'); % 画像の読み込み  
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  

によって原画像を読み込み，白黒濃淡画像で表示した．結果を図１に示す．

![kadai8_1](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai8_1.png)  
図１ 白黒濃淡画像

IMG = ORG > 64;

によって輝度値が64以上の画素を1，その他を0に変換した．結果を図２に示す． 

![kadai3_2](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai3_2.png)  
図２ 閾値64

IMG = ORG > 96;

によって輝度値が96以上の画素を1，その他を0に変換した．結果を図３に示す． 

![kadai3_3](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai3_3.png)  
図３ 閾値96

IMG = ORG > 128;

によって輝度値が128以上の画素を1，その他を0に変換した．結果を図４に示す． 

![kadai3_4](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai3_4.png)  
図４ 閾値128
