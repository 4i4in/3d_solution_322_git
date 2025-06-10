function exe_draw_menu_backgrounds()
{
	if !surface_exists(main_surface)	{	main_surface = surface_create(dgw,dgh);	}

	surface_set_target(main_surface);
	
	//draw frozen 3d if exist
	if freeze_3d_operations > 1	
		{	
			if surface_exists(frozen_3d_surface)	{draw_surface(frozen_3d_surface,0,0);}
			else	{exe_draw_text_on_background([dgw,dgh,"FROZEN 3d SURFACE/n broken","center",c_dkgray,0.7,c_white,1.,1]);}
		};
		
	for(_ii = 0; _ii < array_length(click_restricted); _ii++)
		{
			var _this_restricted = click_restricted[_ii];
			var _xx1 = floor(_this_restricted[0]);
			var _yy1 = floor(_this_restricted[1]);
			var _xx2 = ceil(_this_restricted[2]);
			var _yy2 = ceil(_this_restricted[3]);
			var _background = _this_restricted[4];
			var _border = _this_restricted[5];
			
			//backgroudns
			switch(_background)
				{
					case -1:
						draw_set_color(c_dkgray);
						draw_rectangle(_xx1,_yy1,_xx2,_yy2,0);
						draw_set_color(-1);
						break;
					case "_background_1":	 
						for(var _x_start = _xx1; _x_start < _xx2; _x_start+=255)
							{
								for(var _y_start = _yy1; _y_start < _yy2; _y_start+=255)
									{
										var _width = 256;
										if _x_start + 256 > _xx2	{_width -= _x_start + 256 - _xx2};
										
										var _height = 256;
										if _y_start + 256 > _yy2	{_height -= _y_start + 256 - _yy2};
										
										draw_sprite_part(_background_1, 0, 0, 0, _width, _height, _x_start, _y_start);
									}
							}
						break;
					case "_background_2":	 
						for(var _x_start = _xx1; _x_start < _xx2; _x_start+=255)
							{
								for(var _y_start = _yy1; _y_start < _yy2; _y_start+=255)
									{
										var _width = 256;
										if _x_start + 256 > _xx2	{_width -= _x_start + 256 - _xx2};
										
										var _height = 256;
										if _y_start + 256 > _yy2	{_height -= _y_start + 256 - _yy2};
										
										draw_sprite_part(_background_2, 0, 0, 0, _width, _height, _x_start, _y_start);
									}
							}
						break;
					case "_background_3":	 
						for(var _x_start = _xx1; _x_start < _xx2; _x_start+=255)
							{
								for(var _y_start = _yy1; _y_start < _yy2; _y_start+=255)
									{
										var _width = 256;
										if _x_start + 256 > _xx2	{_width -= _x_start + 256 - _xx2};
										
										var _height = 256;
										if _y_start + 256 > _yy2	{_height -= _y_start + 256 - _yy2};
										
										draw_sprite_part(_background_3, 0, 0, 0, _width, _height, _x_start, _y_start);
									}
							}
						break;
					case "_background_4":	 
						for(var _x_start = _xx1; _x_start < _xx2; _x_start+=255)
							{
								for(var _y_start = _yy1; _y_start < _yy2; _y_start+=255)
									{
										var _width = 256;
										if _x_start + 256 > _xx2	{_width -= _x_start + 256 - _xx2};
										
										var _height = 256;
										if _y_start + 256 > _yy2	{_height -= _y_start + 256 - _yy2};
										
										draw_sprite_part(_background_4, 0, 0, 0, _width, _height, _x_start, _y_start);
									}
							}
						break;
					case "_background_5":	 
						for(var _x_start = _xx1; _x_start < _xx2; _x_start+=255)
							{
								for(var _y_start = _yy1; _y_start < _yy2; _y_start+=255)
									{
										var _width = 256;
										if _x_start + 256 > _xx2	{_width -= _x_start + 256 - _xx2};
										
										var _height = 256;
										if _y_start + 256 > _yy2	{_height -= _y_start + 256 - _yy2};
										
										draw_sprite_part(_background_5, 0, 0, 0, _width, _height, _x_start, _y_start);
									}
							}
						break;
					case "_background_6":	 
						for(var _x_start = _xx1; _x_start < _xx2; _x_start+=255)
							{
								for(var _y_start = _yy1; _y_start < _yy2; _y_start+=255)
									{
										var _width = 256;
										if _x_start + 256 > _xx2	{_width -= _x_start + 256 - _xx2};
										
										var _height = 256;
										if _y_start + 256 > _yy2	{_height -= _y_start + 256 - _yy2};
										
										draw_sprite_part(_background_6, 0, 0, 0, _width, _height, _x_start, _y_start);
									}
							}
						break;
					case "_background_7":	 
						for(var _x_start = _xx1; _x_start < _xx2; _x_start+=255)
							{
								for(var _y_start = _yy1; _y_start < _yy2; _y_start+=255)
									{
										var _width = 256;
										if _x_start + 256 > _xx2	{_width -= _x_start + 256 - _xx2};
										
										var _height = 256;
										if _y_start + 256 > _yy2	{_height -= _y_start + 256 - _yy2};
										
										draw_sprite_part(_background_7, 0, 0, 0, _width, _height, _x_start, _y_start);
									}
							}
						break;
				}
			//borders
			switch(_border)
				{
					case "_border_1":
						//top line
						var _ammount_top = floor((_xx2 - _xx1) / 64);
						if _ammount_top > 0
							{
								var _spacing_top = floor((_xx2 - _xx1) /_ammount_top);
								var _xstart = _xx1 + floor(_spacing_top/2);
								for(var _at = 0; _at < _ammount_top;_at++)
									{
										draw_sprite_ext(_line_1,0,_xstart,_yy1,1,1,0,-1,1);
										_xstart += _spacing_top;
									}
							}
						//bottom line
						var _ammount_top = floor((_xx2 - _xx1) / 64);
						if _ammount_top > 0
							{
								var _spacing_top = floor((_xx2 - _xx1) /_ammount_top);
								var _xstart = _xx1 + floor(_spacing_top/2);
								for(var _at = 0; _at < _ammount_top;_at++)
									{
										draw_sprite_ext(_line_1,0,_xstart,_yy2,1,1,180,-1,1);
										_xstart += _spacing_top;
									}
							}
						//left line
						var _ammount_top = floor((_yy2 - _yy1) / 64);
						if _ammount_top > 0
							{
								var _spacing_top = floor((_yy2 - _yy1) /_ammount_top);
								var _ystart = _yy1 + floor(_spacing_top/2);
								for(var _at = 0; _at < _ammount_top;_at++)
									{
										draw_sprite_ext(_line_1,0,_xx1,_ystart,1,1,90,-1,1);
										_ystart += _spacing_top;
									}
							}
						//right line
						var _ammount_top = floor((_yy2 - _yy1) / 64);
						if _ammount_top > 0
							{
								var _spacing_top = floor((_yy2 - _yy1) /_ammount_top);
								var _ystart = _yy1 + floor(_spacing_top/2);
								for(var _at = 0; _at < _ammount_top;_at++)
									{
										draw_sprite_ext(_line_1,0,_xx2,_ystart,1,1,90,-1,1);
										_ystart += _spacing_top;
									}
							}
							
						draw_sprite_ext(_corner_1,0,_xx1,_yy1,1,1,0,-1,1);
						draw_sprite_ext(_corner_1,0,_xx1,_yy2,1,1,90,-1,1);
						draw_sprite_ext(_corner_1,0,_xx2,_yy2,1,1,180,-1,1);
						draw_sprite_ext(_corner_1,0,_xx2,_yy1,1,1,270,-1,1);
						break;
				}
		}
		
	surface_reset_target();
}