# 追加レポート　　
標準画像「Mandrill」を原画像とする．この画像は縦512画素，横512画素による正方形のディジタルカラー画像である．

ORG = imread('Girl.bmp'); % 画像の読み込み  
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  

によって原画像を読み込み，白黒濃淡画像で表示した．結果を図１に示す．

![kadai9_1](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai9_1.png)  
図１ 白黒濃淡画像

ORG = imnoise(ORG,'salt & pepper',0.02); % ノイズ添付  

によって画像にノイズを添付した．結果を図２に示す． 

![kadai9_2](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai9_2.png)  
図２ ノイズ添付

IMG = filter2(fspecial('average',3),ORG); % 平滑化フィルタで雑音除去  

によって平滑化フィルタで雑音除去をした．結果を図３に示す． 

![kadai9_3](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai9_3.png)  
図３ 平滑化フィルタ

IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去  

によってメディアンフィルタで雑音除去をした．結果を図４に示す． 

![kadai9_4](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai9_4.png)  
図４ メディアンフィルタ