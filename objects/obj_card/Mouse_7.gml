/// @description Click on card


if (!Matched && sprite_index != Face){
	ShownCount ++;
	//sprite_index = Face;
	
	with(obj_game){
		if(!Card_Flipping){
		//other.sprite_index = other.Face
		other.FlipFromBack = true;
		Card_Flipping = true;
		if(Match_1 == 0){
				Match_1 = other;
			}
			else {
				Match_2 = other;
			}
		
		if (Number_Selected >= 1){
			
			Number_Selected = 0;	

			if (Match_1.Face == Match_2.Face){
				Matches++;
				if (Match_1.ShownCount <= 2 && Match_2.ShownCount <=2){
					score ++;
				}
				if (Matches == Deck_Size/2){
					alarm[0] = 5 * room_speed;
				}
				//Match_1.sprite_index = 0;
				//Match_2.sprite_index = 0;
			}
			else{
				Match_1.alarm[0] = room_speed * 2;
				Match_2.alarm[0] = room_speed * 2;
				//Match_1.sprite_index = Match_1.Back;
				//Match_2.sprite_index = Match_2.Back;
			}
			Match_1 = 0;
			Match_2 = 0;
		}
		else{
			//other.sprite_index = other.Face;
			Number_Selected ++;
			
		}
		show_debug_message("Match1 " + string(Match_1));
		show_debug_message("Match2 " + string(Match_2));
	}
	}

}


