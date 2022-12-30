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
t_th_1 = linspace(min(t),16.06);
t_th_2 = linspace(17.33,max(t));

plot(t,y_bear, "o",'DisplayName',"bear")
hold on
plot(t,y_window, "x",'DisplayName',"window")
plot(t,y_relative,"*",'DisplayName',"bear relative to window")
plot(t_th_1,195.9-12.29*t_th_1,':','DisplayName',"-12.3 m/s")
plot(t_th_2,104.4-5.972*t_th_2,'--','DisplayName',"-6.0 m/s")
hold off
grid()
ylabel("vertical position (m)", 'FontSize', 14);
xlabel("time (s)", 'FontSize', 14);
%legend boxoff
%legend( "location", "northoutside",  "orientation", "horizontal", 'FontSize', 14)
legend( "location", "northoutside",  "orientation", "horizontal")
print bear-y.png

