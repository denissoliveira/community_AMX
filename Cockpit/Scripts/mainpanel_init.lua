--dofile(LockOn_Options.script_path.."VR_config.lua")

shape_name   	   = "AMX_COCKPIT"
is_EDM			   = true
new_model_format   = true
ambient_light    = {255,255,255}
ambient_color_day_texture    = {72, 100, 160}
ambient_color_night_texture  = {40, 60 ,150}
ambient_color_from_devices   = {50, 50, 40}
ambient_color_from_panels	 = {35, 25, 25}

local ft_to_meter = 0.3048

dusk_border					 = 0.4
draw_pilot					 = false

external_model_canopy_arg	 = 38

use_external_views = false
--cockpit_local_point = {2.68, 1.142, 0.0}

day_texture_set_value   = 0.0
night_texture_set_value = 0.1

local controllers = LoRegisterPanelControls()
local knots_to_mps = 1/1.944--1.852

mirrors_data =
{
    center_point 	= {0.493,0.092,0.00},
    width 		 	= 1.0, --1.2,
    aspect 		 	= 1.0,
	rotation 	 	= math.rad(-1);
	animation_speed = 2.0;
	near_clip 		= 0.1;
	middle_clip		= 10;
	far_clip		= 5000;
}

need_to_be_closed = true
