function exe_return_controler_door1(_control_struct,_phy_settings)
{
	//additional values
	
	_control_struct.active[1] = 	"door1";

	struct_set(_control_struct, "behaviour_cycle",	"awaiting");
	struct_set(_control_struct, "ground_state",	"closed");
	
	return(_control_struct);
}