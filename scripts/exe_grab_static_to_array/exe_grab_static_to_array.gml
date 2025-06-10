 function exe_grab_static_to_array(_current_cam,_draw_3d_array,_geometry,_coliders,_helpers)
{
	var _major = [];
	var _minor = [];
	var _first = [];
	var _d3arr_helpers = [];
	for(var _ii = 0; _ii < array_length(map3d.static_objects); _ii++)
		{
			var _obj3d = map3d.static_objects[_ii];
			if _current_cam.show.geometry > 0	&&	_geometry > 0
				{	
					
					for(var _part = 0; _part < array_length(_obj3d.part_naming); _part++)
						{
							var _buff_here =			_obj3d.part_show_curent[_part];
							var _tex_here =				_obj3d.part_texture [_part][0];
						if _tex_here == tex_color_std	{_tex_here = -1.;};
							var _tex_normal_here =		_obj3d.part_texture [_part][1];
						if _tex_normal_here == tex_normal_std	{_tex_normal_here = -1.;};
							var _hash =					_obj3d.character_sheet.hash;
							var _cartoon =				1.0;
							var _material =				_obj3d.part_texture_shader_setings[_part][0];
							
							//material scale multipler
							var _msm =					_obj3d.part_texture_shader_setings[_part][1];
							var _absref =				_obj3d.part_texture_shader_setings[_part][2];
							
							var _draw_pack = [	_cartoon,	_hash,	_tex_normal_here,	_buff_here,	_tex_here,	_obj3d.part_vsubmit[_part][0],_obj3d.part_vsubmit[_part][1],_obj3d.part_vsubmit[_part][2],	_material,	_part	,_msm	,_absref			];
							
							if struct_get(_obj3d.character_sheet,"render_pass_sorting") != undefined
								{
									switch(_obj3d.character_sheet.render_pass_sorting)
										{
											case "static_major":	
												if point_distance_3d(_obj3d.part_vsubmit[_part][0],_obj3d.part_vsubmit[_part][1],_obj3d.part_vsubmit[_part][2],_current_cam.camx,	_current_cam.camy,	_current_cam.camz) < _current_cam.draw_first_dist
														{	array_push(_first,_draw_pack);	};
												else	{	array_push(_major,_draw_pack);	};
												break;
											case "static_minor":	array_push(_minor,_draw_pack);	break;
										}
								}
							else	{array_push(_minor,_draw_pack);}
							
						}
				}
			if _current_cam.show.coliders > 0	&&	_coliders > 0	
				{	
					for(var _part = 0; _part < array_length(_obj3d.part_naming); _part++)
						{
							var _buff_here =			_obj3d.part_colisions_curent[_part];
							var _tex_here =				_obj3d.helper_texture [_part][0];
							var _tex_normal_here =		_obj3d.helper_texture [_part][1];
							var _hash =					_obj3d.character_sheet.hash;
							var _cartoon =				0.0;
							var _material =				0.0;
							
							var _msm =					1.;//_obj3d.part_texture_shader_setings[_part][1];
							var _absref =				_obj3d.part_texture_shader_setings[_part][2];
							
							var _draw_pack = [	_cartoon,	_hash,	_tex_normal_here,	_buff_here,	_tex_here,	_obj3d.part_vsubmit[_part][0],_obj3d.part_vsubmit[_part][1],_obj3d.part_vsubmit[_part][2],	_material,	_part	,_msm	,_absref			];
							
							if struct_get(_obj3d.character_sheet,"render_pass_sorting") != undefined
								{
									switch(_obj3d.character_sheet.render_pass_sorting)
										{
											case "static_major":	
												if point_distance_3d(_obj3d.part_vsubmit[_part][0],_obj3d.part_vsubmit[_part][1],_obj3d.part_vsubmit[_part][2],_current_cam.camx,	_current_cam.camy,	_current_cam.camz) <  _current_cam.draw_first_dist
														{	array_push(_first,_draw_pack);	};
												else	{	array_push(_major,_draw_pack);	};
												break;
											case "static_minor":	array_push(_minor,_draw_pack);	break;
										}
								}
							else	{array_push(_minor,_draw_pack);}
						}
				}
			if _current_cam.show.helpers > 0	&&	_helpers > 0		
				{
					for(var _part = 0; _part < array_length(_obj3d.part_naming); _part++)
						{
							var _buff_here =			_obj3d.part_helpers_curent[_part];
							var _tex_here =				_obj3d.helper_texture [_part][0];
							var _tex_normal_here =		_obj3d.helper_texture [_part][1];
							var _hash =					_obj3d.character_sheet.hash;
							var _cartoon =				2.0;
							var _material =				0.0;
							
							var _msm =					1.;//_obj3d.part_texture_shader_setings[_part][1];
							var _absref =				_obj3d.part_texture_shader_setings[_part][2];
							
							var _draw_pack = [	_cartoon,	_hash,	_tex_normal_here,	_buff_here,	_tex_here,	_obj3d.part_vsubmit[_part][0],_obj3d.part_vsubmit[_part][1],_obj3d.part_vsubmit[_part][2],	_material,	_part	,_msm	,_absref			];
							
							array_push(_d3arr_helpers,_draw_pack);
						}
				}
		}
	if _helpers > 0	{_draw_3d_array = _d3arr_helpers;}
	else			{	_draw_3d_array = [_major,_minor,_first];	}	
	
	return(_draw_3d_array);
}