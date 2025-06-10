function exe_try_catch_delete_vbuff(_vbuff_ref)
{
	var _vbs = 1;
	try{	vertex_get_buffer_size(_vbuff_ref);	}
	catch(_)	{_vbs = -1};
	if _vbs > 0	{	vertex_delete_buffer(_vbuff_ref);};
}