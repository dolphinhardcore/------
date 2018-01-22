# 課題7レポート　　
標準画像「Mandrill」を原画像とする．この画像は縦512画像，横512画素による正方形のディジタルカラー画像である．

ORG = imread('Mandrill.jpg'); % 画像の読み込み  
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  

によって原画像を読み込み，白黒濃淡画像で表示した．結果を図１に示す．

![kadai7_1](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai7_1.png)  
図１ 白黒濃淡画像

imhist(ORG); % 濃度ヒストグラムを生成、表示

によって濃度ヒストグラムを生成し表示した．結果を図２に示す． 

![kadai7_2](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai7_2.png)  
図２ 白黒濃淡画像の濃度ヒストグラム

ORG = uint8(ORG); 

によって画像を8諧調へ変換した．8諧調は縦256画素，横256画素である．濃度ヒストグラムを図３に示す．

![kadai7_4](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai7_4.png)  
図３ 8諧調での濃度ヒストグラム

濃度ヒストグラムより濃度値が256までになっていることがわかる．
