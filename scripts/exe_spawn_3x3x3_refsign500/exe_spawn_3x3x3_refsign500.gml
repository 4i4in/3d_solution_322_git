function exe_spawn_3x3x3_refsign500(_carry)
{
	var _cp = _carry[0];
	
	for(var _xx = _cp[0]-1; _xx < _cp[0]+2; _xx++)
		{
			for(var _yy = _cp[1]-1; _yy < _cp[1]+2; _yy++)
				{
					for(var _zz = _cp[2]-1; _zz < _cp[2]+2; _zz++)
						{
							var _ncarry = [[_xx,_yy,_zz]];
							exe_spawn_refsign500(_ncarry);
						}
				}
		}
}