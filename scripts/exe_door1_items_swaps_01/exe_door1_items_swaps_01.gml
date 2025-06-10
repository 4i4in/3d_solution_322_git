function exe_door1_items_swaps_01()
{
	var _struct =
		{
			main_part :
				{
					vbuff_doors_1b_wall :
						{
							show :		["vbuff_doors_1b_show_around","N","N"],
							colider :	["vbuff_doors_1b_colider_around","N","N"],
						},
					vbuff_doors_1d_wall :
						{
							show :		["vbuff_doors_1d_show_around","N","N"],
							colider :	["vbuff_doors_1b_colider_around","N","N"],
						},
					vbuff_doors_1b_wall_SMALL :
						{
							show :		["vbuff_doors_1b_show_around_small","N","N"],
							colider :	["vbuff_doors_1b_colider_around_small","N","N"],
						},
					vb_doors_1d_woodwall_S :
						{
							show :		["vbuff_doors_1d_show_around_small","N","N"],
							colider :	["vbuff_doors_1b_colider_around_small","N","N"],
						},
					vbuff_empty :
						{
							show :		["vbuff_empty","N","N"],
							colider :	["vbuff_empty","N","N"],
							
						},
				},
				
			door_1 :
				{
					d_orange :
						{
							show :		["vbuff_doors_1a","N","N"],
							colider :	["vbuff_doors_1","N","N"],
							material :	[2.,3.,1.],
						},
					d_brickwall :
						{
							show :		["vbuff_doors_1b","N","N"],
							colider :	["vbuff_doors_1","N","N"],
							material :	[7.,4.,1.],
						},
					d_mesh :
						{
							show :		["vbuff_doors_1c","N","N"],
							colider :	["vbuff_doors_1c_colider","N","N"],
							material :	[101.,1.,1.],
						},
					d_woodwall :
						{
							show :		["vbuff_doors_1d","N","N"],
							colider :	["vbuff_doors_1c_colider","N","N"],
							material :	[107.,1.,1.],
						},
					vbuff_empty :
						{
							show :		["vbuff_empty","N","N"],
							colider :	["vbuff_empty","N","N"],
							
						},
				},
				
			activator_1 :
				{
					v_doors1_activator2_s :
						{
							show :		["vbuff_doors1_activator2_small","N","N"],
							colider :	["vbuff_doors1_activator2_small","N","N"],
						},
					i_doors1_activator2_s :
						{
							show :		["vbuff_empty","N","N"],
							colider :	["vbuff_doors1_activator2_small","N","N"],
						},
						
					no_activatorvbuff_empty :
						{
							show :		["vbuff_empty","N","N"],
							colider :	["vbuff_empty","N","N"],
							
						},
				},
		}
	return(_struct);
}