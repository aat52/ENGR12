function pop=population(world)
pop=0;
for i=1:length(world_array)
    for j =1:length(world_array)
        if world_array(i,j) == 255
            pop = pop+1;
        end
    end
end
end