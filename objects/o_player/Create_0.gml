/// @description Player Initializing
global.local_player = self;

phy_fixed_rotation = true;

start_position_x = x;
start_position_y = y;

jump_height = 1;
jump_distance = 0.5;

last_height = 0;
last_fall_y = 0;

last_height_assigned = false;

camera = instance_create_layer(x, y, "Instances", o_camera);
camera.target = self;

is_grounded = false;
is_falling = false;

enum e_stamina_state
{
	none,
	not_enough,
	full
}

stamina_state = e_stamina_state.none;
stamina = 100;

can_interaction = true;

is_grabbing = false;
grab_interactive = noone;

interactive_distance = 10;

control_to_player = true;
died = false;

left_button_clicked = 0;
right_button_clicked = 0;
interact_button_clicked = 0;

red_gems = 0;
gems = 0;

sit_on_the_ground = false;

show_debug_overlay(true);

cheat_code = "";
god_mode = false;