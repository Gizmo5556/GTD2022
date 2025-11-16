if moused and shift_amount >= 0 and shift_amount < global.map_choose_length {
	with o_map_choice_button {
		x += other.button_shift_amount;
	}
	with o_arrow_UI {
		if moused {
			shift_amount++;	
		}
		else {
			shift_amount--;	
		}
	}
}