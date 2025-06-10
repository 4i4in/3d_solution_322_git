function exe_return_cam_struct()
{
	var _struct = 
		{
			cam1 :
				{
					surf_color : surface_create(dgw/2,dgh/2,surface_rgba32float ),
					surf_normals : surface_create(dgw/2,dgh/2,surface_rgba32float ),
					surf_depth : surface_create(dgw/2,dgh/2,surface_rgba32float ),
					temp_surf_depth : surface_create(dgw/2,dgh/2,surface_rgba32float ),
					surf_xyz : surface_create(dgw/2,dgh/2,surface_rgba32float ),
					surf_postproces : surface_create(dgw,dgh),
					
					surf_postproces_colors : surface_create(dgw/2,dgh/2),
					surf_postproces_normals : surface_create(dgw/2,dgh/2),
					surf_postproces_simple_normals : surface_create(dgw/2,dgh/2),
					surf_postproces_croshatch : surface_create(dgw/2,dgh/2),
					
					surf_helpers : surface_create(dgw/4,dgh/4,surface_rgba32float	),
					
					g_buff : buffer_create(	(dgw/2) * (dgh/2) * 4, buffer_fixed, 4),
					g_buff_full :	[0,61,277,0],
					
					camx : 0,	camy : 0,	camz : 0,
					camtox : 0,	camtoy : 0,	camtoz : 0,
					camxup : 0,	camyup : 0,	camzup : 0,
					pitch : 0,	yaw : 0,	tilt : 0,
					camxF : 0,	camyF : 0,	camzF : 0,
					camxR : 0,	camyR : 0,	camzR : 0,
					cam_lookat_dist : 100.,
					CamMat : -1,
					CamMatLookat : -1,
					ProjCamMat : -1,
					fov : 60,
					aspect : dgw/dgh,
					znear : 10.,	zfar : 10000.,
					show : {	
								geometry : 1,
								coliders : 0,
								helpers : 0,
								help_obj : 0,//fexample biome paints
							},
					in_chunk : {_x :-1, _y :-1,_z :-1},
					shader_sol_pos : [0.4,0.6,-0.65], shader_sol_col : [1.,1.,1.],
					shader_draw_grid : [0.,100.,100.,100.,1.,1.,0.5,0.,0.,0.],
					shader_blur_distance : [1.,100.,1024.,8.,0],
					shader_outlines : [1.,1024.,32.,4.,2.,0.1,.001,12.],
					shader_shade_mix : [0.6],
					shd_pass_seq : [1.,1.,1.,1.,0.,0.],	draw_first_dist : 1000.,
					shd_pass_modulo : [29],
					shd_helpers : [4.,16.],
					throw_colisions_helpers : [0],
				},
			cam2 :
				{
					surf_color : surface_create(dgw/2,dgh/2,surface_rgba32float ),
					surf_normals : surface_create(dgw/2,dgh/2,surface_rgba32float ),
					surf_depth : surface_create(dgw/2,dgh/2,surface_rgba32float ),
					temp_surf_depth : surface_create(dgw/2,dgh/2,surface_rgba32float ),
					surf_xyz : surface_create(dgw/2,dgh/2,surface_rgba32float ),
					surf_postproces : surface_create(dgw,dgh),
					
					surf_postproces_colors : surface_create(dgw/2,dgh/2),
					surf_postproces_normals : surface_create(dgw/2,dgh/2),
					surf_postproces_simple_normals : surface_create(dgw/2,dgh/2),
					surf_postproces_croshatch : surface_create(dgw/2,dgh/2),
					surf_helpers : surface_create(dgw/4,dgh/4,surface_rgba32float	),
					
					g_buff : buffer_create(	(dgw/2) * (dgh/2) * 4, buffer_fixed, 4),
					g_buff_full :	[0,61,277,0],
					
					camx : 0,	camy : 0,	camz : 0,
					camtox : 0,	camtoy : 0,	camtoz : 0,
					camxup : 0,	camyup : 0,	camzup : 0,
					pitch : 0,	yaw : 0,	tilt : 0,
					camxF : 0,	camyF : 0,	camzF : 0,
					camxR : 0,	camyR : 0,	camzR : 0,
					cam_lookat_dist : 100.,
					CamMat : -1,
					CamMatLookat : -1,
					ProjCamMat : -1,
					fov : 60,
					aspect : dgw/dgh,
					znear : 10.,	zfar : 10000.,
					show : {	
								geometry : 1,
								coliders : 0,
								helpers : 0,
								help_obj : 0,//fexample biome paints
							},
					in_chunk : {_x :-1, _y :-1,_z :-1},
					shader_sol_pos : [0.4,0.6,-0.65], shader_sol_col : [1.,1.,1.],
					shader_draw_grid : [0.,100.,100.,100.,1.,1.,0.5,0.,0.,0.],
					shader_blur_distance : [1.,100.,1024.,8.,0],
					shader_outlines : [1.,1024.,32.,4.,2.,0.1,.001,12.],
					shader_shade_mix : [0.6],
					shd_pass_seq : [1.,1.,1.,1.,0.,0.],	draw_first_dist : 1000.,
					shd_pass_modulo : [29],
					shd_helpers : [4.,16.],
					throw_colisions_helpers : [0],
				}
		};
	return(_struct);
}