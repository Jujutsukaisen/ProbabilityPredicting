SELECT experience, MAX(training_hours), MIN(training_hours), target FROM experience
GROUP BY experience, target;