% Load the data from the NFL Combine and pro day data file
% using the read table tool.
data= readtable ('NFL Combine and pro day data (1987 - 2021) (1).csv');
forty  = data{:, 'x40Yard'};
shuttle = data{:, 'Shuttle'};
cone   = data{:, 'x3Cone'};

% View a summary of the data in the table using the summary 
% function. 
summary(data)

% Calculate summary statistics for the timed variables in the
% database using appropriate functions. (Shuttle, 40, 3 cone)
mean(forty)
median(forty)
std(forty)

mean(shuttle)
median (shuttle)
std(shuttle)

mean(cone)
median(cone)
std(cone)

% Create a histogram showing all three distributions for these
% timed variables. Make sure to label your figure and add a legend. 
figure
histogram(forty)
hold on
histogram(shuttle)
histogram(cone)
hold off
title ('NFL Combine Timed Events')
xlabel('Time (seconds)')
ylabel('Number of Players')
legend('40 Yard Dash', 'Shuttle', '3 Cone')

% Create a scatter plot in a new figure showing the relationship 
% between 40 yard dash performance and shuttle time).
figure
scatter (forty,shuttle)
title ('40 Yard Dash vs Shuttle')
xlabel ('40 Yard Dash (seconds)')
ylabel ('Shuttle (seconds)')

% Calculate the correlation coefficient between these two variables.
R=corrcoef(forty,shuttle);
r= R(1,2)

% If your correlation coefficient indicates a strong relationship,
% fit a linear model to your data and calculate the coefficient of
% variation (r-squared). Plot your model on your scatterplot. 
hold on
model = fitlm(forty, shuttle);
plot(forty, predict(model, forty), 'r')
hold off

% Run a t-test to determine if there is a difference in means between
% the 40 yard dash and the shuttle run. 

[h, p]= ttest2(x40Yard,shuttle)
