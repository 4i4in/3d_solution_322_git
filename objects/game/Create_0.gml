randomize();
window_set_fullscreen(true);
game_set_speed(60, gamespeed_fps);
game_speed = game_get_speed(gamespeed_fps);
display_reset(0,1);
//dgw = display_get_width();
//dgh = display_get_height();
window_set_showborder(false);
dgw = window_get_width();
dgh = window_get_height();

room_set_width(room, dgw);
room_set_height(room,dgh);
room_goto(room);		
surface_resize(application_surface,dgw,dgh);

//gpu_set_ztestenable(true); //this only in 3d
gpu_rnd_seed = random_get_seed() mod 65587;
gpu_set_blendenable(true);
gpu_set_zwriteenable(true);
gpu_set_texfilter(false);
surface_depth_disable(false);
gpu_set_texrepeat(true);

//standard color reference
tex_color_std = sprite_get_texture(tex_body_02_nomaterial,0);
tex_normal_std = sprite_get_texture(tex_normal_z,0)

math_set_epsilon(0.0000000001);
gc_enable(true);

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
vformat = vertex_format_end();


x_scale = dgw/1920;	//scaling is just in case of adaptive window size turned on
y_scale = dgh/1080;
icon_scale = x_scale;
tile_base_size = 64;
game_time = 0;

collision_resolution = 5; //determine epsilon for checks in 3d

fps_dt = 0;	fps_timer = 60;	fps_dt_arr = array_create(fps_timer);
for(var _ii = 0; _ii < array_length(fps_dt_arr); _ii++)	{fps_dt_arr[_ii] = variable_clone(fps_real);};

mouse_struct = exe_return_mouse_struct_setup();
keyboard_struct = exe_return_keyboard_struct_setup();
keymouse_preset = exe_preset_key_mouse_mapping();
delayed_function_arr = [];

max_pads = 4; //max is 12, if You need,,,	
pad_struct = 
	{
		pad_array : [],	
		pad_maping : exe_preset_pad_mapping(), 
		pad_result_array : exe_preset_pad_results(),
	};
	
click_restricted = [];	reset_current_menu_array = 1;	current_restricted = -1;
mouse_info =		{	txt : "",	mx : -1,	my : -1,	};
control_array =		{	tile_size : floor(tile_base_size*icon_scale),	current_menu_array : [],	};

freeze_3d_operations = 0;	frozen_3d_surface = -1;	//surface_create(dgw,dgh)

cam_struct = exe_return_cam_struct();
exe_set_cam("cam1");	exe_set_cam("cam2");

main_surface = surface_create(dgw,dgh);

exe_reset_draw_3d_arrays();
draw_3d_helpers_array = [];//this one is not automatic in rendering sequence
draw_3d_biomes_array = [];//this one is not automatic in rendering sequence


menus = exe_return_menus_struct();
menu_templates = exe_create_menu_templates();

exe_create_reference_struct();//very important TBD edit and loading alternative in far far future
//exe_create_basic_vbuffs(); moved to load map, this reference stays to add vbuffs
//exe_create_hardcoded_vbuffs_failswitch
//exe_return_vbuff_by_reference(); also important
//exe_change_value_in_body_measures - handfull for atributes

var _shortcut = string("maps") + "/" + string("mini_test_003") + "\\";
var _pathstring = string(working_directory) + _shortcut + "mini_test_003";
var _loaded_map = file_text_open_read(_pathstring);
if _loaded_map != -1
	{
		file_text_close(_loaded_map);
		exe_load_map_from_defined_file(_pathstring);
	}
else	{	exe_load_hardcoded_map();	}


//show_debug_message("working_directory :" + string(working_directory ));
//show_debug_message("game_save_id  :" + string(game_save_id));


