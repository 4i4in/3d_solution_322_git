function exe_delta_add_Mat_noortho(_delta,_posMat)
{
	_posMat[12] -= _delta[0];
	_posMat[13] -= _delta[1];
	_posMat[14] -= _delta[2];
	return(_posMat);
}