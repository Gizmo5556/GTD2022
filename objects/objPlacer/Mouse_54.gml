//allow player to cancel purchase if player right clicks
mouse_clear(mb_right);
if cooldown == 0 {
	instance_destroy();
}