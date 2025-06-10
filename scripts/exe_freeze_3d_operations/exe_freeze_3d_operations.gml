function exe_freeze_3d_operations(_carry)
{
	switch(freeze_3d_operations)
		{
			case 0:	freeze_3d_operations = 1; break;
			case 2:	freeze_3d_operations = 0; surface_free(frozen_3d_surface);	break;
		}
	reset_current_menu_array = 1;
}