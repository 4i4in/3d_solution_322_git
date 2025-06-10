function exe_floor_items_swaps_5x5_01()
{
	var _struct =
		{
			main_part :
				{
					floor_5x5_01 :
						{
							show :		["vbuff_floor_5x5_01_show","N","N"],
							colider :	["vbuff_floor_5x5_01_colider","N","N"],
							material :	[7.,1.,0.],
						},
					floor_5x5_02 :
						{
							show :		["vbuff_floor_5x5_02_show","N","N"],
							colider :	["vbuff_floor_5x5_02_colider","N","N"],
							material :	[7.,1.,0.],
						},
					floor_5x5_03 :
						{
							show :		["vbuff_floor_5x5_03_show","N","N"],
							colider :	["vbuff_floor_5x5_03_colider","N","N"],
							material :	[7.,1.,0.],
						},
					floor_5x5_03a ://wood
						{
							show :		["vbuff_floor_5x5_03a_show","N","N"],
							colider :	["vbuff_floor_5x5_01_colider","N","N"],
							material :	[7.,1.,0.],
						},
					floor_d5_01 :
						{
							show :		["vbuff_floor_d5_01_show","N","N"],
							colider :	["vbuff_floor_d5_01_colider","N","N"],
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
							show :		["vbuff_deco_floor_5x5_01","N","N"],
							colider :	["vbuff_empty","N","N"],
							material :	[101.,5.,0.],
						},
					grass3 :
						{
							show :		["vbuff_deco_floor_5x5_03","N","N"],
							colider :	["vbuff_empty","N","N"],
							material :	[101.,5.,0.],
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