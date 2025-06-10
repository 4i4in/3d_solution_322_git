function exe_return_g_buff_full_buffer(_current_cam)
{
	var _gbuff_full = 1;
	//_current_cam.surf_depth
	
	buffer_get_surface(_current_cam.g_buff,_current_cam.surf_depth,0);
	
	for(var _ii = 0; _ii < buffer_get_size(_current_cam.g_buff); _ii+= 16	)
		{
			if _gbuff_full == 0	{break;};
			_gbuff_full *= buffer_peek(_current_cam.g_buff, _ii+12, buffer_f32);
		}
	return(_gbuff_full);
}