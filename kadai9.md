# 課題9レポート　　
標準画像「Girl」を原画像とする．この画像は縦256画素，横256画素による正方形のディジタルカラー画像である．

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

f=[0,-1,0;-1,5,-1;0,-1,0]; % フィルタの設計  
IMG = filter2(f,IMG,'same'); % フィルタの適用  

によって先鋭化フィルタを設計し適用した．結果を図５に示す．

![kadai9_5](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai9_5.png)  
図５ 先鋭化フィルタ

平滑化フィルタではエッジがなまることが確認できた．  
メディアンフィルタではエッジをぼかすことなくノイズ除去ができていることが確認できた．  
先鋭化フィルタでは濃度値の変化が強調されていることが確認できた．
