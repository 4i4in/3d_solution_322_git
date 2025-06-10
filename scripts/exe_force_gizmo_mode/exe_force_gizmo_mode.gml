function exe_force_gizmo_mode(_carry)
{
	menus.obj_editor.select_by_mouse = 0;
	cam_struct.cam1.show.helpers = 1;
	cam_struct.cam1.shd_pass_modulo[0] = 1;
	cam_struct.cam1.throw_colisions_helpers[0] = 0;
	
	cam_struct.cam1.g_buff_full[3] = 0;
	
	cam_struct.cam1.shd_pass_seq[0] = 1;
	cam_struct.cam1.shd_pass_seq[1] = 1;
	cam_struct.cam1.shd_pass_seq[2] = 1;
	
	cam_struct.cam1.shd_pass_seq[4] = 0;
	cam_struct.cam1.shd_pass_seq[5] = 0;
	
	cam_struct.cam1.show.help_obj = 1;
	
	//reverse : exe_force_gameplay_mode
	//reverse : exe_force_gameplay_mode
}