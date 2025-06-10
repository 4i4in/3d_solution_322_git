function exe_openbuffer_translate(_buff_here,_x,_y,_z)	//takes open buff
{
	for(var _ii = 0; _ii < buffer_get_size(_buff_here); _ii+= (32 * 3)	)//because of triangle
		{
			//vert1
			var _ox = buffer_peek(_buff_here, _ii, buffer_f32);
			var _oy = buffer_peek(_buff_here, _ii +4, buffer_f32);
			var _oz = buffer_peek(_buff_here, _ii +8, buffer_f32);
			
			var _nx = _ox + _x;
			var _ny = _oy + _y;
			var _nz = _oz + _z;
			
			buffer_poke(_buff_here, _ii, buffer_f32, _nx);
			buffer_poke(_buff_here, _ii + 4, buffer_f32, _ny);
			buffer_poke(_buff_here, _ii + 8, buffer_f32, _nz);
			
			//vert2
			var _ox = buffer_peek(_buff_here, _ii	+32, buffer_f32);
			var _oy = buffer_peek(_buff_here, _ii +4+32, buffer_f32);
			var _oz = buffer_peek(_buff_here, _ii +8+32, buffer_f32);
			
			var _nx = _ox + _x;
			var _ny = _oy + _y;
			var _nz = _oz + _z;
			
			buffer_poke(_buff_here, _ii	   +32, buffer_f32, _nx);
			buffer_poke(_buff_here, _ii + 4+32, buffer_f32, _ny);
			buffer_poke(_buff_here, _ii + 8+32, buffer_f32, _nz);
			
			//vert3
			var _ox = buffer_peek(_buff_here, _ii	+64, buffer_f32);
			var _oy = buffer_peek(_buff_here, _ii +4+64, buffer_f32);
			var _oz = buffer_peek(_buff_here, _ii +8+64, buffer_f32);
			
			var _nx = _ox + _x;
			var _ny = _oy + _y;
			var _nz = _oz + _z;
			
			buffer_poke(_buff_here, _ii	   +64, buffer_f32, _nx);
			buffer_poke(_buff_here, _ii + 4+64, buffer_f32, _ny);
			buffer_poke(_buff_here, _ii + 8+64, buffer_f32, _nz);
		}
	
	return(_buff_here);
}