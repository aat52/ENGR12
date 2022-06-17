%given a grading scale, write a program that displays a student's final
%letter grade given a numerical number

clear
clc

disp('Score to Letter Grade Converter');

%ask user for the grade
score=input('What score did you receive? ');

%if loop to determine and display grade
while score>100
    disp('The score must be between 0 and 100. Please reenter your score.')
    score=input('What score did you receive? ');
end

if score>=90
    disp(['A score of ', num2str(score),' is an A.'])
elseif score>=80
    disp(['A score of ', num2str(score),' is a B.'])
elseif score>=70
    disp(['A score of ', num2str(score),' is a C.'])
elseif score>=60
    disp(['A score of ', num2str(score),' is a D.'])
else
    disp(['A score of ', num2str(score),' is an F.'])
end

%separate method
disp('Separate Method');
score1=input('What score did you receive? ');
grade=0;

if score1>=90
    grade='A';
elseif score1>=80
    grade='B';
elseif score1>=80
    grade='C';
elseif score1>=80
    grade='D';
else
    grade='F';
end

disp(['A score of ', num2str(score1),' is a letter grade of ', num2str(grade), '.'])
    
