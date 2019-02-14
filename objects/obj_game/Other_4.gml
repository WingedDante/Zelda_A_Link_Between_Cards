randomize();
if (room == rm_title){
	audio_stop_all();
	audio_play_sound(snd_Title, 2, true);
}
else if (room == rm_game_over){
	audio_stop_all();
	audio_play_sound(snd_Credits, 2, true);
}
else if (room == rm_game){
	audio_stop_all();
	audio_play_sound(snd_Game, 2, true);
	score = 0;
	
	var images = ds_list_create();
	
	var array = [spr_Link_botw, 
				spr_Zelda,  
				spr_Ganondorf, 
				spr_Sheik,
				spr_YoungLink,
				spr_Beast_Ganon,
				spr_Agahnim,
				spr_Zelda_botw,
				spr_Toon_Link,
				spr_Hilda,
				spr_Groose,
				spr_Ghirahim,
				spr_Ganondorf_Twilight_Princess,
				spr_Ganon,
				spr_Fierce_Diety_Link,
				spr_Demise,
				spr_Deku_Link,
				spr_Daruk,
				spr_Darknut,
				spr_Calamity_Ganon,
				spr_Byrne,
				spr_Bokoblin,
				spr_Impa,
				spr_KingBulblin,
				spr_King_Of_Hyrule,
				spr_King_Of_Red_Lions,
				spr_Koume_and_Kotake,
				spr_A_Link_Between_Worlds,
				spr_Link_TLOZ,
				spr_Midna,
				spr_Moblin,
				spr_Octorok,
				spr_Phantom,
				spr_Redead,
				spr_Ruto,
				spr_Skullkid,
				spr_Skullkid_And_Majoras_Mask,
				spr_Tektite,
				spr_Tetra,
				spr_Imprisoned,
				spr_Totem_Link,
				spr_Twinrova,
				spr_Urbosa,
				spr_Vaati,
				spr_Wall_Merged_Link,
				spr_Wolf_Link_And_Midna,
				spr_Young_Zelda,
				spr_Yuga,
				spr_Zant,
				spr_Zelda_Oot,
				spr_Zelda_Spirit_Tracks,
				spr_Zelda_Wind_Waker,
				spr_Agitha,
				spr_Alfonzo,
				spr_Aryll,
				spr_Cucco,
				spr_Dimitri,
				spr_Din,
				spr_Epona,
				spr_Ezlo,
				spr_Fairy_Bottle,
				spr_Fi,
				spr_Merman,
				spr_Happy_Mask_Salesman,
				spr_Goron,
				spr_Great_Fairy,
				spr_Guardian,
				spr_Kaepora_Gaebora,
				spr_Kafei,
				spr_Lifelike,
				spr_Loftwing,
				spr_Madam_Couture,
				spr_Majoras_Mask,
				spr_Malon,
				spr_Marin,
				spr_Medli,
				spr_Mipha,
				spr_Moon,
				spr_Moosh,
				spr_Nayru,
				spr_Postman,
				spr_Ravio,
				spr_Revali,
				spr_Ricky,
				spr_Saria,
				spr_Tingle,
				spr_Valoo,
				spr_Wind_Fish,
				spr_Zora,
				spr_Beedle,
				spr_Darunia,
				spr_Linebeck];
	
	
	for(var i = 0; i < array_length_1d(array); i++){
		ds_list_add(images, array[i]);
	}
	ds_list_shuffle(images);
		
	
	var deck = ds_list_create();


	for (var i = 0; i < Deck_Size/2; i++){
		card = instance_create_layer(0, 0, "Instances", obj_card);
		card.Face = images[| i];
		card2 = instance_create_layer(0, 0, "Instances", obj_card);
		card2.Face = images[| i];
		ds_list_add(deck, card);
		ds_list_add(deck, card2);
	}
	
	//new card placement
	ds_list_shuffle(deck);
	
	var columns = Columns;
	var rows = Rows;
	
	var cardCounter = 0;
	
	var xOffset = (room_width - (columns*obj_card.sprite_width))/(columns +1);
	var yOffset = (room_height - (rows * obj_card.sprite_height))/(rows + 1);
	var topOffset = 30;
	for (var xx = 0; xx < rows; xx++){
			for(var yy = 0; yy< columns; yy++){
				deck[| cardCounter].x = (yy * obj_card.sprite_width) + (xOffset * (yy + 1)) + obj_card.sprite_width/2;
				deck[| cardCounter].y = (xx * obj_card.sprite_height) + (yOffset * (xx + 1)) + obj_card.sprite_height/2 + topOffset;
				cardCounter++;
			}
	}
	//end new card placement
	
	//deck[| 0].x = (room_width - obj_card.sprite_width)/4;
	//deck[| 0].y = 250;
	
	//deck[| 1].x = ((room_width - obj_card.sprite_width)/4)*2;
	//deck[| 1].y = 250;
	
	//deck[| 2].x = ((room_width - obj_card.sprite_width)/4)*3;
	//deck[| 2].y = 250;
	
	//deck[| 3].x = ((room_width - obj_card.sprite_width)/4)*4;
	//deck[| 3].y = 250;
	
	//deck[| 4].x = (room_width - obj_card.sprite_width)/4;
	//deck[| 4].y = 500;
	
	//deck[| 5].x = ((room_width - obj_card.sprite_width)/4)*2;
	//deck[| 5].y = 500;
	
	//deck[| 6].x = ((room_width - obj_card.sprite_width)/4)*3;
	//deck[| 6].y = 500;
	
	//deck[| 7].x = ((room_width - obj_card.sprite_width)/4)*4;
	//deck[| 7].y = 500;
	
	Number_Selected = 0;
	

}