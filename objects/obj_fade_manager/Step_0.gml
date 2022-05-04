if fade {
	
	if alpha < 1 {
		
		alpha += fade_value
	} else {
		
		alarm[0] = 1
	}
} else {
	
	if alpha > 0 {
		
		alpha -= fade_value
	}
}

if !fade {
	
	if alpha > 0 {
		
		alpha -= fade_value
	}
}
