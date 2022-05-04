function scr_check_grid() {
	
	clicked_cell_matrix = obj_nonogram_grid.clicked_cell_matrix
	correct_cell_matrix = obj_nonogram_grid.correct_cell_matrix
	
	discrepancies = 0

	for (i = 0; i < 10; i ++) {
		
		for (j = 0; j < 10; j ++) {
			
			if clicked_cell_matrix[j, i] != correct_cell_matrix[j, i] {
				
				discrepancies ++
			}
		}
	}
	
	
	
	if discrepancies = 0 {
		
		next_room = room_next(room)
		
		fade = true
	}
}