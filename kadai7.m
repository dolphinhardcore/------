% �ۑ�7�@�_�C�i�~�b�N�����W�̊g��
% ��f�̃_�C�i�~�b�N�����W���O����Q�T�T�ɂ���D 
% ���L�̓T���v���v���O�����ł���D 
% �ۑ�쐬�ɂ������ẮuLenna�v�ȊO�̉摜��p����D 
% ��

ORG = imread('Mandrill.jpg'); % �摜�̓ǂݍ���
ORG = rgb2gray(ORG); % �����Z�W�摜�ɕϊ�
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
pause;
imhist(ORG); % �Z�x�q�X�g�O�����𐶐��A�\��
pause;
ORG1 = double(ORG);
mn = min(ORG1(:)); % �Z�x�l�̍ŏ��l���Z�o
mx = max(ORG1(:)); % �Z�x�l�̍ő�l���Z�o
ORG1 = (ORG1-mn)/(mx-mn)*255;
imagesc(ORG1); colormap(gray); colorbar; % �摜�̕\��
pause;
ORG2 = uint8(ORG); % ���̍s�ɂ��čl�@����
imhist(ORG2); % �Z�x�q�X�g�O�����𐶐��A�\��