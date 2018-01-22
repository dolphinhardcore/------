# 課題5レポート　　
標準画像「Girl」を原画像とする．この画像は縦256画素，横256画素による正方形のディジタルカラー画像である．

ORG=imread('Girl.bmp'); % 原画像の入力  
ORG = rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示  


によって原画像を読み込み，白黒濃淡画像で表示した．結果を図１に示す．

![kadai5_1](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai5_1.png)  
図１ 白黒濃淡画像

以下のプログラムによって判別分析法を用いて閾値を決定し画像の２値化を行った．結果を図２に示す．

H = imhist(ORG); %ヒストグラムのデータを列ベクトルHに格納  
myu_T = mean(H);  
max_val = 0;  
max_thres = 1;  
for i=1:255  
C1 = H(1:i); %ヒストグラムを2つのクラスに分ける  
C2 = H(i+1:256);  
n1 = sum(C1); %画素数の算出  
n2 = sum(C2);  
myu1 = mean(C1); %平均値の算出  
myu2 = mean(C2);  
sigma1 = var(C1); %分散の算出  
sigma2 = var(C2);  
sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2); %クラス内分散の算出  
sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2); %クラス間分散の算出  
if max_val<sigma_B/sigma_w  
max_val = sigma_B/sigma_w;  
max_thres =i;  
end;  
end;  

IMG = ORG > max_thres;  

![kadai5_2](https://github.com/dolphinhardcore/kadai/blob/master/image/kadai5_2.png)  
図２ 判別分析法を用いた２値化

判別分析法は対象物の濃度と，背景の濃度とがそれぞれもっともよくまとまり，かつ対象物と背景との違いが際立つよう閾値を定める方法である．  
クラス間分散の各クラス内分散に対する比が最も大きくなるように閾値を決定する．  
クラス間分散が大きいということは背景と対象物がよく分離されているということである．  
クラス内分散が小さいということは対象物及び背景がそれぞれよく一つにまとまっているということである．
