// Empty cell color is #88889F
// Filled cell color is #59597F

row = ((x - obj_nonogram_grid.x) / obj_nonogram_grid.cell_size) + 5
column = ((y - obj_nonogram_grid.y) / obj_nonogram_grid.cell_size) + 5

if sprite_index == spr_cell {
	
	sprite_index = spr_filled_cell
	
	obj_nonogram_grid.clicked_cell_matrix[row, column] = true
}
else {
	
	if sprite_index == spr_filled_cell {
		
		sprite_index = spr_cell
		
		obj_nonogram_grid.clicked_cell_matrix[row, column] = false
	}
}

scr_check_grid()
