function exe_draw_text_on_background(_carry)
{
	var _text_xpos = _carry[0];
	var _text_ypos = _carry[1];
	var _txt = _carry[2];
	var _align = _carry[3];
	var _bckgrnd_color = _carry[4];
	var _bckgrnd_alpha = _carry[5];
	var _txt_color = _carry[6];
	var _txt_alpha = _carry[7];
	var _bckgrnd_offset = _carry[8];
	
	var _text_w = string_width(_txt);
	var _text_h = string_height(_txt);
	
	switch(_align)
		{
			case "center":
				_text_xpos -= floor(_text_w/2);
				_text_ypos -= floor(_text_h/2);
				break;
			case "lt_fos": //let tof force on screen
				if _text_xpos + _text_w > dgw-1
					{	_text_xpos = dgw - _text_w};
				if _text_ypos + _text_h > dgh-1
					{	_text_ypos = dgh - _text_h};
				break;
		}
	//background rectangle
	draw_set_color(_bckgrnd_color);
	draw_set_alpha(_bckgrnd_alpha);
	draw_rectangle(_text_xpos-_bckgrnd_offset,_text_ypos-_bckgrnd_offset,_text_xpos+_text_w+_bckgrnd_offset,_text_ypos+_text_h+_bckgrnd_offset,0);
	
	//text
	draw_set_color(_txt_color);
	draw_set_alpha(_txt_alpha);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(_text_xpos,_text_ypos,string(_txt));
	
}