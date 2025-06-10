function exe_entrance_items_swaps_5x5_01()
{
	var _struct =
		{
			main_part :
				{
					e_rubble_5x5 :
						{
							show :		["vbuff_entrance_01_5x5_show","N","N"],
							colider :	["vbuff_entrance_01_5x5_colider","N","N"],
							material :	[7.,1.,0.],
						},
					e_ruins_5x5 :
						{
							show :		["vbuff_entrance_02_5x5_show","N","N"],
							colider :	["vbuff_entrance_02_5x5_colider","N","N"],
							material :	[7.,1.,0.],
						},
					e_dirt_5x5 :
						{
							show :		["vbuff_entrance_03_5x5_show","N","N"],
							colider :	["vbuff_entrance_03_5x5_colider","N","N"],
							material :	[7.,1.,0.],
						},
					vbuff_empty :
						{
							show :		["vbuff_empty","N","N"],
							colider :	["vbuff_empty","N","N"],
							
						},
				},
			decorations :
				{
					grass :
						{
							show :		["vbuff_deco_ent_5x5_01","N","N"],
							colider :	["vbuff_empty","N","N"],
							material :	[101.,5.,0.],
						},
					grass3 :
						{
							show :		["vbuff_deco_ent_5x5_03","N","N"],
							colider :	["vbuff_empty","N","N"],
							material :	[101.,5.,0.],
						},
					vbuff_empty :
						{
							show :		["vbuff_empty","N","N"],
							colider :	["vbuff_empty","N","N"],
						},
				},
			
			conector_4 :
				{
					deadend_01 :
						{
							show :		["vbuff_deadend_2x2_01_show","N","N"],
							colider :	["vbuff_deadend_2x2_01_colider","N","N"],
							material :	[7.,1.,0.],
						},
					deadend_03 :
						{
							show :		["vbuff_deadend_2x2_03_show","N","N"],
							colider :	["vbuff_deadend_2x2_01_colider","N","N"],
							material :	[7.,1.,0.],
						},
					vbuff_empty :
						{
							show :		["vbuff_empty","N","N"],
							colider :	["vbuff_empty","N","N"],
						},
				},
		}
	return(_struct);
}