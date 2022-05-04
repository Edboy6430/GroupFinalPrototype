window_set_fullscreen(false)
game_set_speed(60, gamespeed_fps)
randomize()

globalvar first_glass;
globalvar second_glass;

globalvar max_amount_liquid;

globalvar color_array;
globalvar color_list;

globalvar scale_increment;

globalvar fade;

globalvar next_room;

globalvar text_x;
globalvar text_y;

globalvar glasses_array;



first_glass = noone
second_glass = noone

max_amount_liquid = 5

color_array = ["blue", "red", "purple", "green"]
color_list = ds_list_create()

scale_increment = 0.1

fade = false

text_x = room_width / 2
text_y = room_height - 80

glasses_array = []



for (i = 0; i < 5; i ++) {
	
	count = 0
	
	for (j = 0; j < 4; j ++) {
		
		ds_list_add(color_list, color_array[count])
		count ++
	}
}
