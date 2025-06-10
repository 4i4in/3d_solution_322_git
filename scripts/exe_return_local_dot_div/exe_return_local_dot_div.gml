function exe_return_local_dot_div(_biome_paints_in_range,_n)//_n is local triangle normal
{
	var _local_dot_div_grups = [0,0,0,0,0];
	var _bpl = menus.world_control_menu._biome_paint_list;
	for(var _ii = 0; _ii < array_length(_biome_paints_in_range); _ii++)
		{	
			var _ref = _biome_paints_in_range[_ii];
			var _c_bpl = menus.world_control_menu._biome_paint_list[_ref];
			
			var _c_n = _c_bpl[1];
			var _dot = dot_product_3d(_c_n[0],_c_n[1],_c_n[2],_n[0],_n[1],_n[2]);
			if _dot < -0.75		//up
				{	_local_dot_div_grups[0] = 1;	}
			else if	_dot < -0.25//diagonal up
				{	_local_dot_div_grups[1] = 1;	}
			else if	_dot < 0.25	//side
				{	_local_dot_div_grups[2] = 1;	}
			else if	_dot < 0.75	//diagonal down
				{	_local_dot_div_grups[3] = 1;	}
			else				//down
				{	_local_dot_div_grups[4] = 1;	}
		}
	return(_local_dot_div_grups);
}