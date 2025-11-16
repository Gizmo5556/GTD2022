//if explosions can't hit black fruit, don't do anything
if pierced == other.id {exit;}
if is_camo and !other.can_hit_camo { exit; }
if !other.can_hit_black {exit;}
if other.explosion_power <= 0 {exit;}



other.explosion_power -= 1;

thing = other.id;

if knockback_id != other.id and other.knockback_power > 0 {
	path_position -= other.knockback_power;
	knockback_id = other.id;
}


event_user(0)



global.money += scrGetWorth(object_index);

instance_destroy()
