/// @description Player Initializing
globalvar local_player;

global.local_player = self;

phy_fixed_rotation = true;

jump_height = 1;
jump_distance = 0.5;

dash_speed = 2;
dash_using_stamina_amount = 30;

last_height = 0;

last_grounded_y = 0;

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

interactive_distance = 15;

control_to_player = true;

left_button_clicked = 0;
right_button_clicked = 0;
interact_button_clicked = 0;

red_gems = 0;
gems = 0;

show_debug_overlay(true);