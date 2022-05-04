cell_size = 40

x_matrix = []
y_matrix = []

cell_matrix = []
clicked_cell_matrix = []
correct_cell_matrix = []

discrepancies = 0



instance_create_depth(x, y, 0, obj_mirror)



// Generates cells row-by-row
for (i = 0; i < 10; i ++) {
	
	for (j = 0; j < 10; j ++) {
		
		x_matrix[j, i] = x + (cell_size * (j - 5))
		y_matrix[j, i] = y + (cell_size * (i - 5))
		
		cell_matrix[j, i] = instance_create_depth(
		x_matrix[j, i], y_matrix[j, i], 0, obj_cell)
		
		clicked_cell_matrix[j, i] = false
		correct_cell_matrix[j, i] = false
	}
}



// Sets the boolean values of the correct cells to true
correct_cell_matrix[2, 0] = true
correct_cell_matrix[3, 0] = true
correct_cell_matrix[4, 0] = true
correct_cell_matrix[5, 0] = true
correct_cell_matrix[6, 0] = true
correct_cell_matrix[7, 0] = true
correct_cell_matrix[8, 0] = true

correct_cell_matrix[2, 1] = true
correct_cell_matrix[3, 1] = true
correct_cell_matrix[5, 1] = true
correct_cell_matrix[7, 1] = true
correct_cell_matrix[8, 1] = true

correct_cell_matrix[1, 2] = true
correct_cell_matrix[2, 2] = true
correct_cell_matrix[8, 2] = true

correct_cell_matrix[0, 3] = true
correct_cell_matrix[3, 3] = true
correct_cell_matrix[7, 3] = true
correct_cell_matrix[9, 3] = true

correct_cell_matrix[0, 4] = true
correct_cell_matrix[3, 4] = true
correct_cell_matrix[5, 4] = true
correct_cell_matrix[7, 4] = true
correct_cell_matrix[9, 4] = true

correct_cell_matrix[0, 5] = true
correct_cell_matrix[5, 5] = true

correct_cell_matrix[0, 6] = true
correct_cell_matrix[2, 6] = true
correct_cell_matrix[4, 6] = true
correct_cell_matrix[5, 6] = true
correct_cell_matrix[6, 6] = true
correct_cell_matrix[8, 6] = true

correct_cell_matrix[0, 7] = true
correct_cell_matrix[2, 7] = true
correct_cell_matrix[8, 7] = true

correct_cell_matrix[0, 8] = true
correct_cell_matrix[2, 8] = true
correct_cell_matrix[4, 8] = true
correct_cell_matrix[5, 8] = true
correct_cell_matrix[6, 8] = true
correct_cell_matrix[8, 8] = true

correct_cell_matrix[1, 9] = true
correct_cell_matrix[2, 9] = true
correct_cell_matrix[5, 9] = true
correct_cell_matrix[8, 9] = true
correct_cell_matrix[9, 9] = true
