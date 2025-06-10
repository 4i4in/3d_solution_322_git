function exe_perform_3d_draw_sequence_for_cam(_current_cam)
{
	exe_prepare_surfaces_3d(_current_cam);
	if _current_cam.show.helpers > 0	{exe_draw_3d_helpers(_current_cam);};
	
	if _current_cam.shd_pass_seq[0]	{exe_render3d_for(_current_cam,draw_3d_array_static_first,"cc");};

	if _current_cam.g_buff_full[3] > 0
		{
			if _current_cam.g_buff_full[0] < 1//empty spaces on gbuff exist
				{
					if game_time mod _current_cam.g_buff_full[1] == 0
					_current_cam.g_buff_full[0] = exe_return_g_buff_full_buffer(_current_cam);
				}
			else
				{
					if game_time mod _current_cam.g_buff_full[2] == 0
					_current_cam.g_buff_full[0] = exe_return_g_buff_full_buffer(_current_cam);
				}
			_current_cam.shd_pass_seq[1] = !_current_cam.g_buff_full[0];
		}
		
	if _current_cam.shd_pass_seq[1]	{exe_render3d_for(_current_cam,draw_3d_array_static_major,"cc");};
	if _current_cam.shd_pass_seq[2]	{exe_render3d_for(_current_cam,draw_3d_array_static_minor,"cc");};
	
	if _current_cam.shd_pass_seq[4]	{exe_render3d_combined_model_material_shdterrain(_current_cam,vb_combined_terrain,[7.,1.,-10.],"cc");};//material number | msm : see shader	| hash
	if _current_cam.shd_pass_seq[5]	{exe_render3d_combined_model_material_shdbiome(_current_cam,vb_combined_biome,[101.,5.,-20.],"nc");};//material number | msm : see shader	| hash
	
	if _current_cam.shd_pass_seq[3]	{exe_render3d_for(_current_cam,draw_3d_array_controled,"cc");};
	
	if cam_struct.cam1.show.help_obj > 0
		{exe_render3d_for(_current_cam,draw_3d_array_helpers_obj,"nc");};
	
	//var _gbuff_full =  exe_return_g_buff_full(_current_cam); pcs of shit
}