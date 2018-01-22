# 課題2レポート　　
標準画像「Girl」を原画像とする．この画像は縦256画素，横256画素による正方形のディジタルカラー画像である．

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

IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 + IMG1 + IMG2;

によって４諧調画像を生成した．結果を図３に示す．

![kadai2_3](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai2_3.png)  
図３ ４諧調画像

IMG0 = ORG>32;
IMG1 = ORG>64;
IMG2 = ORG>96;
IMG3 = ORG>128;
IMG4 = ORG>160;
IMG5 = ORG>192;
IMG6 = ORG>224;
IMG = IMG0 + IMG1 + IMG2 + IMG3 + IMG4 + IMG5 + IMG6;

によって８諧調画像を生成した．結果を図４に示す．

![kadai2_4](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai2_4.png)  
図４ ８諧調画像

このように諧調の数が少ないと疑似輪郭が出るが，諧調の数が多くなると疑似輪郭は抑えられる．
