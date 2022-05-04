depth = 0

solved = false

liquid_list = ds_list_create()



// Creates a list and adds liquid objects contained in the glass object
for (i = 0; i < 4; i ++) {
	
	liquid_y = (y - 5) - (i * 20)
	
	liquid = instance_create_depth(x, liquid_y, 1, obj_liquid)
	
	liquid.liquid_color = color_array[i]
	
	ds_list_add(liquid_list, liquid)
}



// Adds the glass object to an array of glasses
// The array is used to check which glasses have been solved
array_push(glasses_array, id)
