clear all
clc

% Parameters
growth_rate = 1.1;
harvest = 500;
years = 25;

% Initial Populations
P0_values = [5000, 7000, 4000];
colours = ['b', 'g', 'r']; % Use character array for colors

hold on
for i = 1:length(P0_values)
  P = zeros(1, years + 1); % Initialize Array for Population
  P(1) = P0_values(i); % Set Initial Population
  for n = 1:years
    P(n+1) = growth_rate * P(n) - harvest; % Update Population
  end
  plot(0:years, P, colours(i)); % Plot population
end

xlabel("Years")
ylabel("Population")
legend("P0=5000", "P0=7000", "P0=4000")
hold off

