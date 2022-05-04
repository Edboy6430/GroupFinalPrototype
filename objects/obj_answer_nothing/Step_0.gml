/// @description Handle Keys Presses/Input
if(keyboard_check(vk_anykey)and string_length(text)<20){
	text = text+string(keyboard_string);
	keyboard_string = "";
}

if(keyboard_check(vk_backspace) and !keyboard_check_pressed(vk_backspace) and delete_timer = 2){
	text = string_delete(text, string_length(text),1);
	delete_timer = 0;
	keyboard_string = "";
}

if(keyboard_check_pressed(vk_backspace)){
	text = string_delete(text,string_length(text),1);
	keyboard_string = "";
	delete_timer = -4;
}

//Handle Timer Update
if(delete_timer != 2){
	delete_timer ++;
}