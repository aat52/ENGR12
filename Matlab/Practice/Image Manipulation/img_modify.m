function new_img=img_modify(choice,my_img)
%send new_img to main, import choice and my_img

switch choice
    case 1
        new_img=my_img*0.5;
    case 2
        new_img=my_img*5;
end

