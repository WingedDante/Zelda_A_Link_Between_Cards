/// @description Insert description here
// You can write your code in this editor

if(FlipFromBack && !FlipFromFront){
	image_xscale = image_xscale - (2 /room_speed);
	if (image_xscale <= 0){
		sprite_index = Face;
		FlipFromFront = true;
		with(obj_game){
			Card_Flipping = false;
		}
	}

}
if(FlipFromFront && !FlipFromBack){
	image_xscale = image_xscale - (2 /room_speed);
	if (image_xscale <= 0){
		sprite_index = Back;	
		FlipFromBack = true;
		with(obj_game){
			Card_Flipping = false;
		}
	}

}
if (FlipFromFront && FlipFromBack){
		image_xscale = image_xscale + (2/room_speed)
		if (image_xscale >= 1){
			FlipFromBack = false;
			FlipFromFront = false;
			image_xscale = 1;
			with(obj_game){
			Card_Flipping = false;
		}
		}
}