function exe_grab_controled_to_array(_current_cam,_draw_3d_array,_geometry,_coliders,_helpers)
{
	for(var _ii = 0; _ii < array_length(map3d.controlable_objects); _ii++)
		{
			var _obj3d = map3d.controlable_objects[_ii];
			if _current_cam.show.geometry > 0	&&	_geometry > 0
				{	
					for(var _part = 0; _part < array_length(_obj3d.part_naming); _part++)
						{
							//part_show_source
							var _buff_here =			_obj3d.part_show_source[_part];
							//var _buff_here =			_obj3d.part_show_curent[_part];
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
							
							var _draw_pack = [	_cartoon,	_hash,	_tex_normal_here,	_buff_here,	_tex_here,	_obj3d.part_vsubmit[_part],-1,-1,	_material	,_part	,_msm	,_absref		];
							array_push(_draw_3d_array,_draw_pack);
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
							
							var _draw_pack = [	_cartoon,	_hash,	_tex_normal_here,	_buff_here,	_tex_here,	_obj3d.part_vsubmit[_part][0],_obj3d.part_vsubmit[_part][1],_obj3d.part_vsubmit[_part][2],	_material,	_part	,_msm	,_absref		];
							array_push(_draw_3d_array,_draw_pack);
						}
				}
			if _current_cam.show.helpers > 0	&&	_helpers > 0	
				{
					for(var _part = 0; _part < array_length(_obj3d.part_naming); _part++)
						{
							var _buff_here =			_obj3d.part_helpers_source[_part];
							var _tex_here =				_obj3d.helper_texture [_part][0];
							var _tex_normal_here =		_obj3d.helper_texture [_part][1];
							var _hash =					_obj3d.character_sheet.hash;
							var _cartoon =				0.0;
							var _material =				0.0;
							
							var _msm =					1.;//_obj3d.part_texture_shader_setings[_part][1];
							var _absref =				_obj3d.part_texture_shader_setings[_part][2];
							
							var _draw_pack = [	_cartoon,	_hash,	_tex_normal_here,	_buff_here,	_tex_here,	_obj3d.part_vsubmit[_part],-1,-1,	_material	,_part	,_msm	,_absref		];
							array_push(_draw_3d_array,_draw_pack);
						}
				}
		}
		
	return(_draw_3d_array);
}