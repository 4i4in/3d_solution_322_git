function exe_draw_consoletxt()
{
	if !is_array(keyboard_struct.writing_to)	&&	keyboard_struct.text_input != ""
		{
			if !surface_exists(main_surface)	{	main_surface = surface_create(dgw,dgh);	}
	
			surface_set_target(main_surface);
			
			exe_draw_text_on_background([20,dgh - 100,"console : " + string(keyboard_struct.text_input),"lt_fos",c_olive,0.8,c_white,1.,3]);
			
			surface_reset_target();
		}
}