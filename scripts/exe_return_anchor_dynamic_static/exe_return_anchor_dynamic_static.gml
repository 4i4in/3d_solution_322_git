function exe_return_anchor_dynamic_static(_sublist,_refer_to_part,_master_hash)
{
	var _xyz0 =					_sublist[0][0];
	var _xyz1 =					_sublist[0][1];
	var _normal =				_sublist[0][2];
	var _hash_colided =			_sublist[0][3];
	var _who_colided =			_sublist[0][4];
	var _what_list =			_sublist[0][5];
	var _colision_type =		_sublist[0][6];	
	var _colider_part_name =	_sublist[0][7];
	
	if _what_list == "dynamic"
		{
			var _return_obj_and_array = exe_return_obj_and_array(_hash_colided);
			if _return_obj_and_array[0] == 0	&& _return_obj_and_array[1] > -1
				{
					var _snr = _return_obj_and_array[1];
					var _slave_obj = map3d.controlable_objects[_snr];
					var _spart_num = -1;
					for(var _pn = 0; _pn < array_length(_slave_obj.part_naming);_pn++)
						{						
							if _slave_obj.part_naming[_pn] == _colider_part_name
								{
									_spart_num = _pn;
									break;	
								}
						}
					if _spart_num > -1
						{
							//_slave_obj.part_anchored_objects[_spart_num]
							//kill previous entries with master hash
							for(var _anch_i = array_length(_slave_obj.part_anchored_objects[_spart_num])-1;_anch_i > -1; _anch_i--)
								{
									if _slave_obj.part_anchored_objects[_spart_num][_anch_i][0] == _master_hash
										{	array_delete(_slave_obj.part_anchored_objects[_spart_num],_anch_i,1);	};
								}
							var _slave_posMat =  _slave_obj.part_posMat[_spart_num];
							var _vec3to_slave = [_xyz1[0]-_slave_posMat[12],_xyz1[1]-_slave_posMat[13],_xyz1[2]-_slave_posMat[14]];
							var _l_vec3to_slave = vec_length(_vec3to_slave);
							var _n_vec3to_slave =  vec_normalize(_vec3to_slave);
							
							var _slave_cast = exe_return_vec3_cast_on_main(_slave_posMat,_n_vec3to_slave,_l_vec3to_slave);
							_slave_cast = [_slave_cast[2],_slave_cast[1],_slave_cast[0]];
				
				
							var _send_pack = [_master_hash,_slave_cast];
							array_push(_slave_obj.part_anchored_objects[_spart_num],_send_pack);
							map3d.controlable_objects[_snr] = _slave_obj;
							return([_refer_to_part,_xyz1,_hash_colided,_colider_part_name]);
						}
				}
		}
	
	return([_refer_to_part,_xyz1,_hash_colided]);
}