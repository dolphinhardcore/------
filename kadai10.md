# 課題10レポート　　
標準画像「Girl」を原画像とする．この画像は縦256画素，横256画素による正方形のディジタルカラー画像である．

ORG = imread('Girl.bmp'); % 原画像の入力  
ORG = rgb2gray(ORG); %カラーからグレイへの変換  
imagesc(ORG); colormap('gray'); colorbar;% 画像表示

によって原画像を読み込み，白黒濃淡画像で表示した．結果を図１に示す．

![kadai10_1](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai10_1.png)  
図１ 白黒濃淡画像

IMG = edge(ORG,'prewitt'); % エッジ抽出（プレウィット法）  

プレウィット法によってエッジ抽出をした．結果を図２に示す． 

![kadai10_2](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai10_2.png)  
図２ プレウィット法

IMG = edge(ORG,'sobel'); % エッジ抽出（ソベル法）  

ソベル法によってエッジ抽出をした．結果を図３に示す． 

![kadai10_3](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai10_3.png)  
図３ ソベル法

IMG = edge(ORG,'canny'); % エッジ抽出（キャニー法）

キャニー法によってエッジ抽出をした．結果を図４に示す． 

![kadai10_4](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai10_4.png)  
図４ キャニー法

キャニー法が最もよくエッジを抽出でき，背景のエッジも抽出できていることがわかった．
