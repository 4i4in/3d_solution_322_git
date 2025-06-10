function exe_submit_biome_to_world(_buff_here,_tex_here,_x,_y,_z,_xr,_yr,_zr,_scale)
{
	matrix_set(matrix_world, matrix_build(	_x,_y,_z,	_xr, _yr, _zr,	_scale, _scale, _scale));
	vertex_submit(_buff_here, pr_trianglelist, _tex_here);	
}