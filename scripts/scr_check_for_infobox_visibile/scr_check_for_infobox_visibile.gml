function scr_check_for_infobox_visibile() {
	
	with o_information_box {
		if global.option_show_infobox and info_array[global.wave + 1] != "" {
			visible = true;
		}
		else {
			visible = false;	
		}
	}
}