# 追加レポート　　
標準画像「Mandrill」を原画像とする．この画像は縦512画素，横512画素による正方形のディジタルカラー画像である．

ORG = imread('Mandrill.jpg'); % 画像の読み込み  
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  

によって原画像を読み込み，白黒濃淡画像で表示した．結果を図１に示す．

![additional_1](https://github.com/dolphinhardcore/kadai/blob/master/image/additional_1.png)  
図１ 白黒濃淡画像

ORG = imnoise(ORG,'gaussian',0,0.01); % ノイズ添付  

によって画像にホワイトガウスノイズを添付した．結果を図２に示す． 

![additional_2](https://github.com/dolphinhardcore/kadai/blob/master/image/additional_2.png)  
図２ ノイズ添付

IMG = wiener2(ORG, [3 3]); % ウィーナーフィルタで雑音除去

ウィーナーフィルタで雑音除去をした．結果を図３に示す． 

![additional_3](https://github.com/dolphinhardcore/kadai/blob/master/image/additional_3.png)  
図３ ウィーナーフィルタ

IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去  

によってメディアンフィルタで雑音除去をした．結果を図４に示す． 

![additional_4](https://github.com/dolphinhardcore/kadai/blob/master/image/additional_4.png)  
図４ メディアンフィルタ

ウィーナーフィルタは画像の局所分散に適応する．分散が大きいところではあまり平滑化を行わないが，分散が小さいところではより平滑化を行う．  
今回の場合にはウィーナーフィルタもメディアンフィルタも同じような結果が得られた．  
ウィーナーフィルタはホワイトガウスノイズのような一定パワーのノイズに対してよく機能する．
