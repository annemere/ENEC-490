function [ n ] = monthly_stats( vector )
%  reads EIA gas price data, outputs 12 X 2 matrix that describes 
%  the sample mean and standard deviation for each month 2008-present.

years = floor(length(vector)/12);
%row=month, column=year
%totalmonths=length(vector);
m = zeros(12,2);

for j = 1:years
    for i = 1:12
        m(i,1) = mean(vector(j:12:end));
        %(((j-1)*12+i):12:end));
        m(i,2)=std(vector(j:12:end));
    end
end

new_years = 1997:1:2017;
start = find(new_years==2008); %determine which element is 2008
n = m(:,start:end);
%create new matrix that is to the right of 2008 in the old matrix


end

