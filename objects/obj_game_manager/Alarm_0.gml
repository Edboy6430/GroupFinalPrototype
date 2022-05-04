solved_counter = 0

for (i = 0; i < array_length(glasses_array); i ++) {
	
	if glasses_array[i].solved {
		
		solved_counter ++
	}
	
	if solved_counter == 4 {
		
		next_room = room_next(room)
		
		fade = true
	}
}
