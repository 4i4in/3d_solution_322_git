function exe_force_gameplay_mode(_carry)	//gameplay in editor
{
	menus.obj_editor.select_by_mouse = 1;
	
	cam_struct.cam1.show.geometry = 1;
	cam_struct.cam1.show.coliders = 0;
	cam_struct.cam1.show.helpers = 0;
	
	cam_struct.cam1.shd_pass_modulo[0] = 59;
	cam_struct.cam1.throw_colisions_helpers[0] = 0;
	
	cam_struct.cam1.g_buff_full[3] = 1;
	cam_struct.cam1.shd_pass_seq[0] = 1;
	cam_struct.cam1.shd_pass_seq[1] = 0;
	cam_struct.cam1.shd_pass_seq[2] = 1;
	
	cam_struct.cam1.shd_pass_seq[4] = 0;
	cam_struct.cam1.shd_pass_seq[5] = 0;
	
	cam_struct.cam1.show.help_obj = 0;
	
	//reverse : exe_force_gizmo_mode
	//reverse : exe_force_gameplay_mode
}