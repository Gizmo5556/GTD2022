if not is_activated {
	is_activated = true;
	with o_untitled_trigger_spike {
		if other.spike_id == spike_id {
			is_moving = true;
			vspeed = 4;
			break;
		}
		
	}
}
