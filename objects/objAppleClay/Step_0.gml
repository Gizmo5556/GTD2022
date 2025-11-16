event_inherited();

if hp < 0.25*max_hp image_index = 3
else if hp < 0.5*max_hp image_index = 2
else if hp < 0.75*max_hp image_index = 1
else image_index = 0

if is_regen and hp < max_hp and not is_frozen and not is_downdrafted {
	hp += regen_amount;
}

