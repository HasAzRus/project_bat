/// @description Player Initializing

phy_fixed_rotation = true;

jump_height = 1;
jump_distance = 0.5;

last_height = 0;

camera = instance_create_layer(x, y, "Instances", o_camera);
camera.target = self;

is_grounded = false;

enum e_stamina_state
{
	none,
	not_enough,
	full
}

stamina_state = e_stamina_state.none;
stamina = 100;