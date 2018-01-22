# 課題3レポート　　
標準画像「Girl」を原画像とする．この画像は縦256画像，横256画素による正方形のディジタルカラー画像である．

ORG=imread('Girl.bmp'); % 原画像の入力  
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換

imagesc(ORG); colormap(gray); colorbar; % 画像の表示


によって原画像を読み込み，白黒濃淡画像で表示した．結果を図１に示す．

![kadai3_1](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai3_1.png)  
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

IMG = ORG > 192;

によって輝度値が192以上の画素を1，その他を0に変換した．結果を図５に示す． 

![kadai3_5](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai3_5.png)  
図５ 閾値192

このように閾値を高く設定していくと輝度値が低い画素は0になっていく．よって輝度値が低い画素を多く含む原画像の場合，閾値を高くしていくと黒い部分が多くなっていく．
