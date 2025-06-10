function exe_teleport_obj_to_pos(_carry)
{
	var _selected_object_type = _carry[0];
	var _selected_object_num =	_carry[1];
	var _ny_pos =	_carry[2];

	var _obj = map3d[$ _selected_object_type][_selected_object_num];
	
	var _posMat = _obj.part_posMat[0];
	_posMat[12] = _ny_pos[0];
	_posMat[13] = _ny_pos[1];
	_posMat[14] = _ny_pos[2];
	_obj.part_posMat[0] = _posMat;
	_obj.part_vsubmit[0] = exe_return_v_submit(_posMat,1);
	
	map3d[$ _selected_object_type][_selected_object_num] = _obj;
}