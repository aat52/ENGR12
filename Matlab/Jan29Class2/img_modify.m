%funciton to modify image
function new_img=img_modify(choice, my_img)

switch choice
    case 1
        new_img=my_image*.5;
    case 2
        new_img=my_img*5;
end

