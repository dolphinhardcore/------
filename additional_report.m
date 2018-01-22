% 追加レポート ウィーナーフィルタの適応
% ウィーナーフィルタを適用し，ノイズ除去

ORG = imread('Mandrill.jpg'); % 画像の読み込み
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
pause;
ORG = imnoise(ORG,'gaussian',0,0.01); % ノイズ添付
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
pause;
IMG = wiener2(ORG, [3 3]); % ウィーナーフィルタで雑音除去
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
pause;
IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
pause;
