% �ǉ����|�[�g �E�B�[�i�[�t�B���^�̓K��
% �E�B�[�i�[�t�B���^��K�p���C�m�C�Y����

ORG = imread('Mandrill.jpg'); % �摜�̓ǂݍ���
ORG = rgb2gray(ORG); % �����Z�W�摜�ɕϊ�
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
pause;
ORG = imnoise(ORG,'gaussian',0,0.01); % �m�C�Y�Y�t
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
pause;
IMG = wiener2(ORG, [3 3]); % �E�B�[�i�[�t�B���^�ŎG������
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��
pause;
IMG = medfilt2(ORG,[3 3]); % ���f�B�A���t�B���^�ŎG������
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��
pause;
