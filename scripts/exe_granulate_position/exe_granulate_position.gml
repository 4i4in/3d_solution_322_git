function exe_granulate_position(_point1,_granulation)
{
	_point1[0] = round(_point1[0]/_granulation) * _granulation;
	_point1[1] = round(_point1[1]/_granulation) * _granulation;
	_point1[2] = round(_point1[2]/_granulation) * _granulation;
	
	return(_point1);
}