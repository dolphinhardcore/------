# 課題2レポート　　
標準画像「Girl」を原画像とする．この画像は縦256画像，横256画素による正方形のディジタルカラー画像である．

ORG=imread('Girl.bmp'); % 原画像の入力  
ORG = rgb2gray(ORG); colormap(gray); colorbar;  
imagesc(ORG); axis image; % 画像の表示

によって原画像を読み込み，グレースケールで表示した．結果を図１に示す．

![kadai2_1](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai2_1.png)  
図２ 原画像

IMG = ORG>128;

によって２諧調画像を生成した．結果を図２に示す．

![kadai2_2](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai2_2.png)  
図２ ２諧調画像
