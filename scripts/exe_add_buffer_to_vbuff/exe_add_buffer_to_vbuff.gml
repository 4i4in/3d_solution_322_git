function exe_add_buffer_to_vbuff(_buff_here,_vbuff)	//takes v_buff
{
	for(var _ii = 0; _ii < buffer_get_size(_buff_here); _ii+= 32)
		{
			//vert
			var _ox = buffer_peek(_buff_here, _ii, buffer_f32);
			var _oy = buffer_peek(_buff_here, _ii +4, buffer_f32);
			var _oz = buffer_peek(_buff_here, _ii +8, buffer_f32);
			
			//normal
			var _n_ox = buffer_peek(_buff_here, _ii + 12, buffer_f32);
			var _n_oy = buffer_peek(_buff_here, _ii + 16, buffer_f32);
			var _n_oz = buffer_peek(_buff_here, _ii + 20, buffer_f32);
			
			//uv
			var _u = buffer_peek(_buff_here, _ii + 24, buffer_f32);
			var _v = buffer_peek(_buff_here, _ii + 28, buffer_f32);
			
			vertex_position_3d(_vbuff,_ox,_oy,_oz);
			vertex_normal(_vbuff,_n_ox,_n_oy,_n_oz);
			vertex_texcoord(_vbuff,_u,_v);
		}
}