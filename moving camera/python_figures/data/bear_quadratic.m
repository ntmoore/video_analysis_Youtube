# Nathan Moore
# make images that can be bw

# how do you read from file?
# https://www.mathworks.com/help/matlab/ref/csvread.html
# skip the first two rows, read all columns
R1=1;
C1=0;
exp_data=csvread(
'bear_data.csv',
R1,
C1
);

# create 1D arrays from 2D CSV data
t = exp_data(:, 1);
x_bear = exp_data(:, 2);
y_bear = exp_data(:,3)  ;
x_window = exp_data(:, 4);
y_window = exp_data(:,5)  ;
x_relative = exp_data(:, 7); % note, order is swapped
y_relative = exp_data(:,6)  ;

# theoretical line
t_th = linspace(16.117,max(t));

plot(t,y_bear, "o",'DisplayName',"bear")
hold on
plot(t,y_window, "x",'DisplayName',"window")
plot(t,y_relative,"*",'DisplayName',"bear relative to window")
plot(t_th,-4.6930291*t_th.^2+158.88985*t_th-1343.4845,':','DisplayName',"g=-9.4 m/s^2")
hold off
grid()
ylabel("vertical position (m)", 'FontSize', 14);
xlabel("time (s)", 'FontSize', 14);
legend boxoff
%legend( "location", "northoutside",  "orientation", "horizontal", 'FontSize', 14)
legend( "location", "northoutside",  "orientation", "horizontal")
print bear-quadratic.pdf

