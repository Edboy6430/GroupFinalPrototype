alpha_value -= blink_value

if (alpha_value == max_value) || (alpha_value == min_value) {
	
	blink_value *= (-1)
}

if (alpha_value == 0.60) && (max_value == 1.00) {
	
	max_value = 0.60
}

if (max_value == 0.60) && (min_value == 0.00) {
	
	min_value = 0.20
	blink_value = 0.005
}
