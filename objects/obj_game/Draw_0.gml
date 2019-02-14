/// @description Insert description here
// You can write your code in this editor
switch(room){
	case rm_game: 
		draw_set_font(fnt_score);
		draw_text(20,20, "SCORE" + string(score));
		break;
	case rm_title:
	/*
		draw_set_halign(fa_center);
		draw_set_font(fnt_Title);
		draw_text(room_width/2,100, @"ZELDA MATCH
Memory card game featuring every Zelda 
spirit and character from SSBU
Enter to start");
		draw_set_halign(fa_left);*/
		break;
	case rm_game_over:
		draw_set_halign(fa_center);
		draw_set_font(fnt_Title);
		draw_text(room_width/2,100, @"ZELDA MATCH
GAME OVER
Enter to restart");
		draw_set_halign(fa_left);
		break;
}