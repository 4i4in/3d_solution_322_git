function exe_return_texture_id(_name)
{
	var _id_found = -1;
	switch(_name)
		{
			case "tex_normal_z":				_id_found = sprite_get_texture(tex_normal_z,0);	 break;
			
			case "tex_helpers":					_id_found = sprite_get_texture(tex_helpers,0);	break;
			case "tex_helpers2":				_id_found = sprite_get_texture(tex_helpers2,0);	break;
			
			case "tex_body_01_nomaterial":		_id_found = sprite_get_texture(tex_body_02_nomaterial,0);	break;
			
		}
		
	return(_id_found);
}