function exe_paint_d100_items_swaps_01()
{
	var _struct =
		{
			main_part :
				{
					gras_01_d100 :
						{
							show :		["vbuff_helper_gras_01_d100","N","N"],
							colider :	["vbuff_empty","N","N"],
							body_measures_swap : ["biome_radius",50.,	"biome_chance_up",20.,	"granulation",11.,	"biome",["grassland_low_small"]		],
						},
					gras_01_d250 :
						{
							show :		["vbuff_helper_gras_01_d250","N","N"],
							colider :	["vbuff_empty","N","N"],
							body_measures_swap : ["biome_radius",125.,	"biome_chance_up",30.,	"granulation",12.,	"biome",["grassland_low_medium"]	],
						},
					gras_01_d500 :
						{
							show :		["vbuff_helper_gras_01_d500","N","N"],
							colider :	["vbuff_empty","N","N"],
							body_measures_swap : ["biome_radius",250.,	"biome_chance_up",40.,	"granulation",15.,	"biome",["grassland_low_big"]	],
						},
					/* 
					it dosent make sense to make it invisible;
					vbuff_empty :
						{
							show :		["vbuff_empty","N","N"],
							colider :	["vbuff_empty","N","N"],
						},
					*/
				},
		}
	return(_struct);
}