function Health = org_health(local,world_array)

%extract x and y and set live neighbors=0
locx=local(1);
locy=local(2);
liven=0;

%find life status of neighbors
for x=-1:1
    for y=-1:1
        %continue the function for the center cell 
        if x==0 && y==0
            continue
        %find the condition of the neighbors
        else
            %wrap around if neighbor doesn't exist
            neighborx=locx+x;
            if neighborx < 1
                neighborx=length(world_array);
            elseif neighborx > length(world_array)
                neighborx = 1;
            end
            
            %wrap around if neighbors don't exist
            neighbory = locy+y;
            if neighbory < 1
                neighbory = length(world_array);
            elseif neighbory > length(world_array)
                neighbory = 1;
            end
        end
        
        %find status of neighbor
        if world_array(neighborx,neighbory)==255
            liven = liven+1;
        end
        
    end
end

if liven==3
    Health=255;
elseif liven == 2 && world_array(locx,locy)==255
    Health=255;
else
    Health=0;
end