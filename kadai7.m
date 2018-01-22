% 課題7　ダイナミックレンジの拡大
% 画素のダイナミックレンジを０から２５５にせよ． 
% 下記はサンプルプログラムである． 
% 課題作成にあたっては「Lenna」以外の画像を用いよ． 
% 例

ORG = imread('Mandrill.jpg'); % 画像の読み込み
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
pause;
imhist(ORG); % 濃度ヒストグラムを生成、表示
pause;
ORG1 = double(ORG);
mn = min(ORG1(:)); % 濃度値の最小値を算出
mx = max(ORG1(:)); % 濃度値の最大値を算出
ORG1 = (ORG1-mn)/(mx-mn)*255;
imagesc(ORG1); colormap(gray); colorbar; % 画像の表示
pause;
ORG2 = uint8(ORG); % この行について考察せよ
imhist(ORG2); % 濃度ヒストグラムを生成、表示