/*
discrepancies = 0

for (i = 0; i < 10; i ++) {
	
	for (j = 0; j < 10; j ++) {
		
		if clicked_cell_matrix[j, i] != correct_cell_matrix[j, i] {
			discrepancies ++
			show_debug_message("\n")
			show_debug_message("clicked_cell_matrix boolean: "
			+ string(clicked_cell_matrix[j, i]))

			show_debug_message("correct_cell_matrix boolean: "
			+ string(correct_cell_matrix[j, i]))
			show_debug_message("\n")
			
			show_debug_message("clicked_cell: " + string(j) + ", " + string(i))
		}
	}
}

show_debug_message("discrepancies: " + string(discrepancies))

if discrepancies = 0 {
	show_debug_message("solved!")
	room_goto(rm_level_1)
}
