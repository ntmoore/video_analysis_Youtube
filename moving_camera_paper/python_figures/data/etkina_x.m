# Nathan Moore
# make images that can be bw

# how do you read from file?
# https://www.mathworks.com/help/matlab/ref/csvread.html
# skip the first two rows, read all columns
R1=1;
C1=0;
exp_data=csvread(
'etkina_data.csv',
R1,
C1
);

# create 1D arrays from 2D CSV data
t = exp_data(:, 1);
x_ball = exp_data(:, 2);
y_ball = exp_data(:,3)  ;
x_clock = exp_data(:, 4);
y_clock = exp_data(:,5)  ;
x_relative = exp_data(:, 6);
y_relative = exp_data(:,7)  ;

# theoretical line
t_th = linspace(min(t),max(t));

plot(t,x_ball, "o",'DisplayName',"ball")
hold on
plot(t,x_clock, "x",'DisplayName',"clock")
plot(t,x_relative,"*",'DisplayName',"ball relative to clock")
plot(t_th,4.031-1.1*t_th,'DisplayName',"-1.1m/s slope")
hold off
grid()
ylabel("horizontal position (m)", 'FontSize', 14);
xlabel("time (s)", 'FontSize', 14);
%legend boxoff
%legend( "location", "northoutside",  "orientation", "horizontal", 'FontSize', 14)
legend( "location", "northoutside",  "orientation", "horizontal")
print etkina_x.png

