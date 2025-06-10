function exe_vbuff_dgw_dgh()
{
	var _vbuff_keep = vertex_create_buffer();
	vertex_begin(_vbuff_keep, vformat);
	
	//triangle 1
	vertex_position_3d(_vbuff_keep,0,0,0);
	vertex_normal(_vbuff_keep,0,0,0);
	vertex_texcoord(_vbuff_keep,0.,0.);
					
	vertex_position_3d(_vbuff_keep,dgw,0,0);
	vertex_normal(_vbuff_keep,0,0,0);
	vertex_texcoord(_vbuff_keep,1.,0.);
					
	vertex_position_3d(_vbuff_keep,0,dgh,0);
	vertex_normal(_vbuff_keep,0,0,0);
	vertex_texcoord(_vbuff_keep,0.,1.);
					
	//triangle 2
	vertex_position_3d(_vbuff_keep,dgw,0,0);
	vertex_normal(_vbuff_keep,0,0,0);
	vertex_texcoord(_vbuff_keep,1.,0.);
					
	vertex_position_3d(_vbuff_keep,dgw,dgh,0);
	vertex_normal(_vbuff_keep,0,0,0);
	vertex_texcoord(_vbuff_keep,1.,1.);
					
	vertex_position_3d(_vbuff_keep,0,dgh,0);
	vertex_normal(_vbuff_keep,0,0,0);
	vertex_texcoord(_vbuff_keep,0.,1.);
	
	vertex_end(_vbuff_keep);
	vertex_freeze(_vbuff_keep);
	return(_vbuff_keep);
}