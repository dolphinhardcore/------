# 課題2レポート　　
標準画像「Girl」を原画像とする．この画像は縦256画像，横256画素による正方形のディジタルカラー画像である．

ORG=imread('Girl.bmp'); % 原画像の入力  
ORG=rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  

によって原画像を読み込み，白黒濃淡画像で表示した．結果を図１に示す．

![kadai4_1](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai4_1.png)  
図１ 白黒濃淡画像

imhist(ORG);

によって画素の濃度ヒストグラムを生成した．結果を図２に示す．

![kadai4_2](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai4_2.png)  
図２ 濃度ヒストグラム

