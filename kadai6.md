# 課題6レポート　　
標準画像「Girl」を原画像とする．この画像は縦256画像，横256画素による正方形のディジタルカラー画像である．

ORG=imread('Girl.bmp'); % 原画像の入力  
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示

によって原画像を読み込み，白黒濃淡画像で表示した．結果を図１に示す．

![kadai6_1](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai6_1.png)  
図１ 白黒濃淡画像

IMG = ORG>128; % 128による二値化  
imagesc(IMG); colormap(gray); colorbar; % 画像の表示  

によって画像を閾値128で二値化した．結果を図２に示す．

![kadai6_2](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai6_2.png)  
図２ 閾値128による二値化

IMG = dither(ORG); % ディザ法による二値化

によって画像をディザ法で二値化した．結果を図３に示す．

![kadai6_3](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai6_3.png)  
図３ ディザ法による二値化

このようにディザ法は解像度成分を保存したまま諧調成分も表示できる方法であることがわかった．
