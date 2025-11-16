//if any fruit is being targeted while boshy is being destroyed (e.g., being sold),
//then change them appropriately so other boshys can target them

with objApple {
	if boshy_targeted_by = other.id {
		boshy_targeted_by = noone;	
	}
}