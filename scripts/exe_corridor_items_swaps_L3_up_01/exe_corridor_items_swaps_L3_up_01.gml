function exe_corridor_items_swaps_L3_up_01()
{
	var _struct =
		{
			main_part :
				{
					corridor_UP_01_w3d1 :
						{
							show :		["vbuff_corridor_01up_w3d1_show","N","N"],
							colider :	["vbuff_corridor_01up_w3d1_collider","N","N"],
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
					vbuff_empty :
						{
							show :		["vbuff_empty","N","N"],
							colider :	["vbuff_empty","N","N"],
							
						},
				},
		}
	return(_struct);
}