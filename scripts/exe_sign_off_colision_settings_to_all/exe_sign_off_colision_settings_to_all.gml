function exe_sign_off_colision_settings_to_all()
{
	map3d.static_colider_arr = map3d.all_static_colider_arr;
	map3d.dynamic_colider_arr = map3d.all_dynamic_colider_arr;
			
	map3d.world_settings.perform_fast_check = 0;
}