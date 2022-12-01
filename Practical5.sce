//Vaibhav Swami 1/19/FET/BCS/040
// Single Queue System
// The forms for loan arrive at a bank clerk’s desk for 
// processing on average every 4 minutes. Arrivals 
// are assumed to follow Poisson distribution. The 
// service rate is on average, 20 per hour. Calculate 
// the various queue characteristics.

service_rate = 20
processing_time = 4
lambda = (1/4)*60
avg_num_in_system = lambda/(service_rate - lambda)
avg_num_in_queue = avg_num_in_system - (lambda/service_rate)
avg_queueing = avg_num_in_system * (1/service_rate)
avg_time_in_system = avg_queueing + (1/service_rate)
prob_of_no_cust_in_system = 1 - (lambda/service_rate)
avg_num_in_the_queue_when_empty = service_rate/(service_rate-lambda)

disp(avg_num_in_system)
disp(avg_num_in_queue)
disp(avg_queueing)
disp(avg_time_in_system)
disp(prob_of_no_cust_in_system)
disp(avg_num_in_the_queue_when_empty)
