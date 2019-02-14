/// @description Insert description here
if (keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_title:
			room_goto(rm_game);
			break;
		case rm_game_over:
			game_restart();
			break;
	}
}
