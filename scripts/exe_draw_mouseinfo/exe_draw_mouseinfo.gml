function exe_draw_mouseinfo()
{
	if mouse_info.mx + mouse_info.my > 0	&&	mouse_info.txt != ""
		{
			if !surface_exists(main_surface)	{	main_surface = surface_create(dgw,dgh);	}
	
			surface_set_target(main_surface);
			exe_draw_text_on_background([mouse_info.mx,mouse_info.my,mouse_info.txt,"lt_fos",c_dkgray,0.7,c_white,1.,1]);
			surface_reset_target();
		}
}