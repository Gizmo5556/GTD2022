event_inherited();


if is_regen and hp < max_hp and not is_frozen and not is_downdrafted {
	hp += regen_amount;
}