function exe_draw_delayed_function_arr()
{
	if array_length(delayed_function_arr) > 0
		{
			switch(delayed_function_arr[0][0])
				{
					case "exe_force_combined_vbuffs_gameplay_mode":
						surface_set_target(main_surface);
						exe_draw_text_on_background([dgw/2,dgh/2,"Generating biome vbuff;\nGenerating terrain vbuff;\nFor current map (first run);\nMay take a few minutes based on\nbiome and terrain complexity;\nVbuffs saved in /maps\nfor faster startup next time;","center",c_maroon,0.7,c_white,1.,3]);
						surface_reset_target();
						break
				}
		}
}