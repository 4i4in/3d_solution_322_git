function exe_freeze_3d_operations_create_surface(_carry)
{
	//create freeze surface
	if !surface_exists(frozen_3d_surface)	{	frozen_3d_surface = surface_create(dgw,dgh);	};
		
	//copy main surface to frozen
	surface_set_target(frozen_3d_surface);
	draw_surface(main_surface,0,0);
	
	exe_draw_text_on_background([dgw/2,dgh/2,"FROZEN 3d SURFACE\nPress Space to unfreeze;","center",c_maroon,0.7,c_white,1.,3]);
	
	surface_reset_target();
	
	freeze_3d_operations = 2;
	
	reset_current_menu_array = 1;
}