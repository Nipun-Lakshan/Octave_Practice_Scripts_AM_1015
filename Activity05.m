clc
distance = [0:10:90]
#distance = linspace(0,90,10)
fuel_amount = [35.0 34.1 33.0 31.9 31.0 30.2 29.0 28.2 27.1 26.0]

fuel_consumption = 35 - fuel_amount

model = polyfit(distance, fuel_consumption, 1)
predict = polyval(model, distance)

plot(distance, fuel_consumption, 'bo')
hold on
plot(distance, predict)
xlabel('Distance (Km)')
ylabel('Fuel Consumption (l)')
title('Fuel Consumption vs. Distance')
hold off

% Fuel Remaining at 100km
fuel_at_100km = polyval(model, 100)
fuel_remaining = 35 - fuel_at_100km

% Maximum Distance
Maximum_Distance = (35 - model(2))/model(1)

Distance = (fuel_consumption - model(2))/model(1)

% Error Calculation

Error = abs(fuel_consumption - predict)
sum_absolute_error = sum(Error)

sum_sqs = sum(Error.^2)
