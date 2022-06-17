%image manipulation
clear
clc

choice=0;
disp('Welcome to Image Manipulation!');
disp('Menu');
disp('************************************');
disp('1) Lower image size');
disp('2) Flip image up/down or left/right');
disp('3) Rotate image');
disp('4) Find the negative of an image');
disp('5) Blend two images');
disp('************************************');

while(choice<1||choice>5)
    choice=input('Enter your choice: ');
end

filename='0';
while exist(filename)==0
    filename=input('Enter image file name including extension: ', 's');
end
img=imread(filename);
switch choice
    case 1
        low_res=img(1:5:end,1:5:end,:);
        imshow(low_res);
        imwrite(low_res,['lowres_',filename]);
    case 2
        flip_style=input('Enter U for up/down and L for left/right flip: ','s');
        if flip_style=='U'
            img_flip=img(end:-1:1,:,:);
        else
            img_flip=img(:,enf:-1:1,:);
        end
        imshow(img_flip)
        imwrite(img_flip,['flip_',filename]);
    case 3
        turns=input('How many 90 degree CCW turns? ');
        img_rot=rot90(img,turns);
        imshow(img_rot)
        imwrite(img_rot,['rot_',filename]);
    case 4
        img_neg=255-img;
        imshow(img_neg);
        imwrite(img_neg,['neg_',filename]);
    case 5
        filename2='0';
        while exist(filename2)==0
            filename2=input('Entwer image file name: ');
        end
        img2=imread(filename2);
        blend_img=img*.5+img2*.5;
        imshow(blend_img);
        imwrite(blend_img,'blend.jpg');
end

    