function [new_world,births,deaths]=next_generation(world_array)

   %Updates all organisms life statuses
   %gives number of births and deaths
    births=0;
    deaths=0;
    [rows,cols]=size(world_array);
    new_world = zeros(length(world_array));
    for x = 1:rows
        for y = 1:cols
            local=[x,y];
            Health = org_health(local,world_array);
            
            %use 255=white to determine stats
            if Health==255 && world_array(x,y)==0
                births = births + 1;
            end
            if Health==0 && world_array(x,y)==255
                deaths=deaths+1;
            end
            new_world(x,y)=Health;
        end
    end
end