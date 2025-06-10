function exe_execute_delayed_function_arr()
{
	if array_length(delayed_function_arr) > 0
		{
			switch(delayed_function_arr[0][0])
				{
					case "exe_force_combined_vbuffs_gameplay_mode":
						if vb_combined_biome == -1		{	create_biome_and_vbuff();	};
						if vb_combined_terrain == -1	{	exe_terrain_combine_vbuff();	};
						exe_force_combined_vbuffs_gameplay_mode(delayed_function_arr[0][1]);
						array_delete(delayed_function_arr,0,1);
						break
				}
		}
}