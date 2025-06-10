function exe_draw_icon(_xx1,_yy1,_pic)
{
	var _pic_found = 0;
	switch(_pic)
		{
			case "":	_pic_found = 1;	break;
			
			case "_32x32_button":
				draw_sprite_ext(_32x32_button,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x32_button_mo":
				draw_sprite_ext(_32x32_button_mo,game_time mod sprite_get_number(_32x32_button_mo),_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_32x32_button_green":
				draw_sprite_ext(_32x32_button_green,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x32_button_orange":
				draw_sprite_ext(_32x32_button_orange,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_32x64_back":
				draw_sprite_ext(_32x64_back,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x64_back_mo":
				draw_sprite_ext(_32x64_back_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			
			case "_32x64_back_mark_green":
				draw_sprite_ext(_32x64_back_mark_green,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_32x32_move_menu":
				draw_sprite_ext(_32x32_move_menu,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x32_move_menu_mo":
				draw_sprite_ext(_32x32_move_menu_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_32x32_expand":
				draw_sprite_ext(_32x32_expand,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x32_expand_mo":
				draw_sprite_ext(_32x32_expand_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_32x32_minimise":
				draw_sprite_ext(_32x32_minimise,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x32_minimise_mo":
				draw_sprite_ext(_32x32_minimise_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_32x32_button_copy":
				draw_sprite_ext(_32x32_button_copy,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x32_button_copy_mo":
				draw_sprite_ext(_32x32_button_copy_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_32x32_button_close":
				draw_sprite_ext(_32x32_button_close,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x32_button_close_mo":
				draw_sprite_ext(_32x32_button_close_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			
			case "_32x128_back_mark_green":
				draw_sprite_ext(_32x128_back_mark_green,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x128_back":
				draw_sprite_ext(_32x128_back,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x128_back_mo":
				draw_sprite_ext(_32x128_back_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			
			case "_32x192_back":
				draw_sprite_ext(_32x192_back,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x192_back_mo":
				draw_sprite_ext(_32x192_back_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			
			case "_32x256_back_mark_green":
				draw_sprite_ext(_32x256_back_mark_green,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x256_back":
				draw_sprite_ext(_32x256_back,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x256_back_mo":
				draw_sprite_ext(_32x256_back_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_32x256_back_orange":
				draw_sprite_ext(_32x256_back_orange,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x256_back_orange_mo":
				draw_sprite_ext(_32x256_back_orange_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			
			case "_32x384_back_mark_green":
				draw_sprite_ext(_32x384_back_mark_green,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x384_back":
				draw_sprite_ext(_32x384_back,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x384_back_mo":
				draw_sprite_ext(_32x384_back_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_32x512_back":
				draw_sprite_ext(_32x512_back,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x512_back_mo":
				draw_sprite_ext(_32x512_back_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_48x256_back":
				draw_sprite_ext(_48x256_back,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_48x256_back_mo":
				draw_sprite_ext(_48x256_back_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "throwinfo_back":
				var _infostring = menus.throwinfo_control_menu.infostring;
				var _text_w = string_width(_infostring);
				var _text_h = string_height(_infostring);
				
				draw_set_color(c_dkgray);
				draw_set_alpha(0.7);
				draw_rectangle(_xx1-1,_yy1-1,_xx1+_text_w+1,_yy1+_text_h+1,0);
				draw_set_color(c_white);
				draw_set_alpha(1);
				
				_pic_found = 1;	break;
				
			case "vbuffs_list_bar_32_vertical_line":
				
				draw_set_color(c_olive);
				draw_set_alpha(0.5);
				draw_rectangle(_xx1,_yy1,_xx1+control_array.tile_size*0.5,_yy1+control_array.tile_size*0.1+(menus.vbuff_simple_menu.vbuffs_list_bar[2]-1)*0.6 *control_array.tile_size,0);
				draw_set_color(c_white);
				draw_set_alpha(1);
				
				_pic_found = 1;	break;
				
		}
		
	if _pic_found < 1
		{
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			
			draw_sprite_ext(_no_pic,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
			draw_set_color(c_red);
			draw_text(_xx1,_yy1,"no_picture : \n" + string(_pic));
			draw_set_color(c_white);
		}
}