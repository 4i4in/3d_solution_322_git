function exe_return_controler_gfield_01(_control_struct,_phy_settings)
{
	//additional values
	
	_control_struct.active[1] = 	"gfield_01";

	struct_set(_control_struct, "behaviour_cycle",	"awaiting");
	struct_set(_control_struct, "ground_state",	"closed");
	
	return(_control_struct);
}