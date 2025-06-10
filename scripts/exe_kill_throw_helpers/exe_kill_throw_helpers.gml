function exe_kill_throw_helpers()
{
	if array_length(map3d.temporary_helpers) > 0
		{
			for(var _thlp = 0;	_thlp < array_length(map3d.temporary_helpers);_thlp++)	
				{
					exe_try_catch_delete_vbuff(map3d.temporary_helpers[_thlp][3]);
				}
		}
	map3d.temporary_helpers = [];
}