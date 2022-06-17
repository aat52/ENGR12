%Aron Griffin, Angela Tseng, Pragya Malhotra
%R13

clear
clc
w=0;

%while w==0;
    
    %reading user seed input
    world_array=imread(input('Seed : ','s'));
    [rows,cols]=size(world_array);
    %taking user seed calculating population
    population=0;
    for i=1:rows
        for j =cols
            if world_array(i,j) == 255
                population = population+1;
            end
        end
    end
    
    %getting user generations to run an running an indefinite check
    generations=0;
    while generations < 1 || generations > 2500
        generations = input('Generations: ');
    end
    
    %Updating world array given the users generation
    births=0;
    deaths=0;
    developing_world='';
    for i=1:generations
        [new_world, new_births,new_deaths] = next_generation(world_array);
        births=births+new_births;
        deaths=deaths+new_deaths;
        population = population+births-deaths;
        developing_world = [world_array,developing_world,new_world];
    end
    
    %displaying results
    %display_world(developing_world,figure,'The Game of Life');
    
    %displaying the results of the game
    disp('Game Statistics')
    disp('Births')
    disp(['Mean: ' num2str(mean(births))])
    disp(['Standard Deviation: ' num2str(std(births))])
    disp(['Median : ' num2str(median(births))])
    
    disp('Deaths')
    disp(['Mean: ' num2str(mean(deaths))])
    disp(['Standard Deviation: ' num2str(std(deaths))])
    disp(['Median : ' num2str(median(deaths))])
    
    disp('population')
    disp(['Mean: ' num2str(mean(population))])
    disp(['Standard Deviation: ' num2str(std(population))])
    disp(['Median : ' num2str(median(population))])
    
    %graphically Dipslaying results plot histogram side by side
    subplot(1,3,1)
    plot(generationsarray,birtharray,'b-',generationsarray,deatharray,'r-',generationsarray,populationarray,'p-')
    xlabel('Generations')
    ylabel('Number')
    title('Births, Deaths, and Populations Changes over the Generations')
    text(0,10,'Blue-Birth')
    text(0,8,'Red-Death')
    text(0,6,'Purple-Population')
   
    subplot(1,3,2)
    hist(birtharray,generations)
    xlabel('Generations')
    ylabel('Births')
    title('Births/Year')
    subplot(1,3,3)
    hist(deatharray,generations)
    title('Deaths/Year')
    xlabel('Generations')
    ylabel('Deaths')
    
    %repeating the process
    
L=0;
array1=[];

while L==0
    maybe=input('Would you like to run the program again y or n: ','s');
    if maybe=='y' || maybe=='n'
        L=L+1;

    end
    if maybe=='n'
        w=w+1;
    for
       
    
%disp([num2str(array1(q))])
%disp(['Mean: ' num2str(mean(population(q)))])
%disp(['Standard Deviation: ' num2str(std(population(q)))])
               
    end
             
    else
%             q=q+1;
%             population(q)=population;
%             array1=array1+filename;
%             close all;  
        end
end
