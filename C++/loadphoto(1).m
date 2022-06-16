% Author: Gomi Morales

% Function syntax: variable_name = loadphoto('directory_path');

% variable_name is a 2-column cell array. First column contains name of
% file and second column contains corresponding file image data as a 3D
% array of numbers.


function imgfile = loadphoto(fname)
 % fname='images'; % used for testing code
    index = 1;
    directory_list = dir([fname,'/*.jpg']);
    
    for i = 1:length(directory_list)
        if (directory_list(i).bytes==0) 
            continue;
        end
        imgfile{index,1}=directory_list(i).name;
        imgfile{index,2}=imread([fname '/' imgfile{index,1} ],'JPG');
        index = index+1;
    end

end

    

