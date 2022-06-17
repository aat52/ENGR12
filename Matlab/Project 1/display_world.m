function display_world(world_array,fig,plot_title)
image=world_array;
    for i=1:length(image)
        fig.Name =plot_title;
        pause(.2)
        imshow(image(i));
    end
end

