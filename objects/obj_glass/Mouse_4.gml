// Stores the selected glasses
if (first_glass == noone) && (second_glass == noone) {
	
	first_glass = instance_nearest(mouse_x, mouse_y, obj_glass)
	
	instance_create_depth(first_glass.x, (first_glass.y + 10), -1, obj_glow)
} else {
	
	if (first_glass != noone) && (second_glass == noone) {
		
		second_glass = instance_nearest(mouse_x, mouse_y, obj_glass)
		
		// Runs the script that transfers liquid between two glasses
		scr_transfer_liquid(first_glass, second_glass)
		
		first_glass = noone
		second_glass = noone
	}
	
	instance_destroy(obj_glow)
}



// Checks to see if the glass is full of the same liquid
same_liquid = true

if (ds_list_size(liquid_list)) == 5 {
	for (i = 0; i < ds_list_size(liquid_list); i ++) {
		
		first_liquid = ds_list_find_value(liquid_list, 0)
		current_liquid = ds_list_find_value(liquid_list, i)
		
		
		
		if current_liquid.liquid_color != first_liquid.liquid_color {
	
			same_liquid = false
		}
	}



// Notifies the game whether a glass has been "solved"
	if same_liquid {
		
		solved = true
	} else {
		
		if !same_liquid {
			
			solved = false
		}
	}
}
