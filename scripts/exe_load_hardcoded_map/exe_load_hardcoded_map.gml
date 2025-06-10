function exe_load_hardcoded_map()
{
	exe_create_basic_vbuffs();
//creating 3d world
var _worldsize = 1500;		//4k is big enough
var _map_part_size = 180;	//600 or 300	see: exe_return_map_part_ref
var _chunksize = 60;		//200 or 100	see: exe_return_map_part_ref

map3d =	
	{
		map_name : "empty_map_001",
		map_directory : "maps/",
		world_map_bigchunks :
			{
				single_bigchunk_size : _worldsize,
				single_bigchunk_shift : _worldsize/3,
				current_bigchunk_load : [0,0,0],
				bigchunk_x_start: 0,
				bigchunk_y_start: 0,
				bigchunk_z_start: 0,
			},
		world_settings :
			{
				world_sqr_size : _worldsize,
				world_x_start: 0,
				world_y_start: 0,
				world_z_start: 0,
				chunksize : _chunksize,
				chunknumber : -1,
				chunk_check_range : 1,	//refer to exe_fill_gaps_in_refer_to_arr, see: exe_return_map_part_ref
				map_part_size : _map_part_size,
				chunknumber_in_map_part : _map_part_size / _chunksize,
				fast_check_scheeme : [],	//see : exe_check_collision_line_vs_geometry_v2, creation see: exe_create_fast_check_scheeme_for_colisions
				perform_fast_check : 0,	//see : exe_check_collision_line_vs_geometry_v2 -curently turned off in script;
			},		
		controlable_objects : [],//doors, phy fields, characters, cameras
		static_objects : [],//terrain
		
		helpers_objects : [],//used for paint biome and TBD
		temporary_helpers : [],//used by help throw functions
		celestial_objects : [],//TBD
		
		
		//colider settings
		static_colider_arr : -1,			//This holds current static coliders to check
		map_part_static_colider_arr : -1,	//This hold source of coliders to loat for checks
		
		dynamic_colider_arr : -1,			//This holds current dynamic coliders to check
		map_part_dynamic_colider_arr : -1,	//This hold source of coliders to loat for checks
		
		dynamic_colider_build_time : 0,
		static_colider_build_time : 0,
		
		all_static_colider_arr : -1,		//This hold only reference from holder above to pass them to current
		all_dynamic_colider_arr : -1,		//This hold only reference from holder above to pass them to current
		
		general_gravity : [0,0,-9.81 *17],	//*17 where 17 is around 1meter for scale 1 humanoid
		vbuff_list_source : "vbuff_lists/default_vbuff_set",//TBD
	};
map3d.keep_world_settings = 
	{
		world_sqr_size :	variable_clone(map3d.world_settings.world_sqr_size),
		world_x_start :		variable_clone(map3d.world_settings.world_x_start),
		world_y_start :		variable_clone(map3d.world_settings.world_y_start),
		world_z_start :		variable_clone(map3d.world_settings.world_z_start),
		chunknumber :		variable_clone(	ceil(map3d.world_settings.world_sqr_size /  map3d.world_settings.chunksize)	),
	};



exe_create_controlled_objects_v2();
exe_create_static_objects_v2();

exe_return_curently_loaded_bigchunk();

exe_grab_collision_statics_for_current_array();

exe_grab_collision_dynamic_for_current_array();

}