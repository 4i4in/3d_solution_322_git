function exe_openbuffer_scale(_buff_here,_scale)	//takes open buff
{
	for(var _ii = 0; _ii < buffer_get_size(_buff_here); _ii+= (32 * 3)	)//because of triangle
		{
			//vert1
			var _ox = buffer_peek(_buff_here, _ii, buffer_f32);
			var _oy = buffer_peek(_buff_here, _ii +4, buffer_f32);
			var _oz = buffer_peek(_buff_here, _ii +8, buffer_f32);
			
			var _nx = _ox * _scale;
			var _ny = _oy * _scale;
			var _nz = _oz * _scale;
			
			buffer_poke(_buff_here, _ii, buffer_f32, _nx);
			buffer_poke(_buff_here, _ii + 4, buffer_f32, _ny);
			buffer_poke(_buff_here, _ii + 8, buffer_f32, _nz);
			
			//var _p1 = [_nx,_ny,_nz];
			
			//normal 1,2,3
			//var _n_ox = buffer_peek(_buff_here, _ii + 12, buffer_f32);
			//var _n_oy = buffer_peek(_buff_here, _ii + 16, buffer_f32);
			//var _n_oz = buffer_peek(_buff_here, _ii + 20, buffer_f32);
			
			//var _n_nx = -_tm[6] * _n_ox		-_tm[12] * _n_oy	-_tm[15] * _n_oz;
			//var _n_ny = -_tm[7] * _n_ox		-_tm[13] * _n_oy	-_tm[16] * _n_oz;
			//var _n_nz = -_tm[8] * _n_ox		-_tm[14] * _n_oy	-_tm[17] * _n_oz;
			
			//buffer_poke(_buff_here, _ii + 12, buffer_f32, _n_nx);
			//buffer_poke(_buff_here, _ii + 16, buffer_f32, _n_ny);
			//buffer_poke(_buff_here, _ii + 20, buffer_f32, _n_nz);
			
			//vert2
			var _ox = buffer_peek(_buff_here, _ii	+32, buffer_f32);
			var _oy = buffer_peek(_buff_here, _ii +4+32, buffer_f32);
			var _oz = buffer_peek(_buff_here, _ii +8+32, buffer_f32);
			
			var _nx = _ox * _scale;
			var _ny = _oy * _scale;
			var _nz = _oz * _scale;
			
			buffer_poke(_buff_here, _ii	   +32, buffer_f32, _nx);
			buffer_poke(_buff_here, _ii + 4+32, buffer_f32, _ny);
			buffer_poke(_buff_here, _ii + 8+32, buffer_f32, _nz);
			
			//normal 2
			//buffer_poke(_buff_here, _ii + 12+32, buffer_f32, _n_nx);
			//buffer_poke(_buff_here, _ii + 16+32, buffer_f32, _n_ny);
			//buffer_poke(_buff_here, _ii + 20+32, buffer_f32, _n_nz);
			
			//vert3
			var _ox = buffer_peek(_buff_here, _ii	+64, buffer_f32);
			var _oy = buffer_peek(_buff_here, _ii +4+64, buffer_f32);
			var _oz = buffer_peek(_buff_here, _ii +8+64, buffer_f32);
			
			var _nx = _ox * _scale;
			var _ny = _oy * _scale;
			var _nz = _oz * _scale;
			
			buffer_poke(_buff_here, _ii	   +64, buffer_f32, _nx);
			buffer_poke(_buff_here, _ii + 4+64, buffer_f32, _ny);
			buffer_poke(_buff_here, _ii + 8+64, buffer_f32, _nz);
			
			//normal 3
			//buffer_poke(_buff_here, _ii + 12+64, buffer_f32, _n_nx);
			//buffer_poke(_buff_here, _ii + 16+64, buffer_f32, _n_ny);
			//buffer_poke(_buff_here, _ii + 20+64, buffer_f32, _n_nz);
		}
	
	return(_buff_here);
}