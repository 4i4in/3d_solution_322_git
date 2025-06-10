game_time++;

fps_dt_arr[game_time mod fps_timer] = variable_clone(fps_real);
fps_dt = 0;
for(var _ii = 0; _ii < array_length(fps_dt_arr); _ii++)	{	fps_dt += fps_dt_arr[_ii];	};
fps_dt /= fps_timer;	fps_dt = floor(fps_dt);

//continue deleyed functions
exe_execute_delayed_function_arr();

//hardware input
exe_key_reaction_01();
exe_mouse_reaction_01();
exe_pad_reaction_01();
exe_pad_interpretation_01();
exe_typing_by_keyboard();

//menu operations
exe_secondary_mouse_reaction_01(); //draging menu
exe_secondary_keyboard_reaction_01(); //menu shortkeys
exe_check_form_menu_with_auto_update();
exe_current_menu_load();
exe_check_mouse_vs_clickable_buttons();
exe_check_mouse_vs_screen();

exe_play_pause_obj_activity_control();
exe_perform_moves_on_map3d_v2();

exe_draw_3d(); //gameplay surface should be placed inside by any means

exe_draw_menu_backgrounds();	
exe_draw_clickable();
exe_draw_mouseinfo();
exe_draw_consoletxt();
exe_draw_delayed_function_arr();


if reset_current_menu_array > 0	{control_array.current_menu_array = [];	reset_current_menu_array = 0;};

if game_time mod 4127 < 1	{gc_collect();};



