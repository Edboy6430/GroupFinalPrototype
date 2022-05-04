depth = 0
liquid_stack = ds_stack_create()

for (i = 0; i < 4; i ++) {
	liquid_y = (y - 5) - (i * 20)
	
	liquid = instance_create_depth(x, liquid_y, 1, obj_liquid)
	
	liquid.liquid_color = color_array[i]
	
	ds_stack_push(liquid_stack, liquid)
}
