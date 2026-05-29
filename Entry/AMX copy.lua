local AMX            = 'AMX'

local armamentos_IN   = {}
local armamentos_OUT  = {}

local armamentosClean = { { CLSID = "<CLEAN>", arg_value = 1 } }
local armamentosTank  = { { CLSID = "{AT27_TANK}" }, }

local bombs_Rockts    = {
	{ CLSID = "{90321C8E-7ED1-47D4-A160-E074D5ABD902}" }, --MK81
	{ CLSID = "{MK-81SE}" },
	{ CLSID = "{LAU-33A}"},
	{ CLSID = "{BDU-33}"},
	{ CLSID = "M260_HYDRA" },
	{ CLSID = "M260_HYDRA_WP" },
	{ CLSID = "{LAU68_FFAR_WP156}" },
	{ CLSID = "{LAU68_FFAR_MK1HE}" },
	{ CLSID = "{LAU68_FFAR_MK5HEAT}" },
}

for _, v in ipairs(bombs_Rockts) do
	table.insert(armamentos_IN, v); table.insert(armamentos_OUT, v)
end
for _, v in ipairs(armamentosTank) do 
	table.insert(armamentos_IN, v) 
end
for _, v in ipairs(armamentosClean) do
	table.insert(armamentos_IN, v); table.insert(armamentos_OUT, v)
end

mount_vfs_model_path(current_mod_path .. "/Shapes")
mount_vfs_texture_path(current_mod_path .. "/Textures")
mount_vfs_liveries_path(current_mod_path .. "/Liveries")
mount_vfs_sound_path(current_mod_path .. "/Sounds")

AMXFM = {
	Name                      = AMX,
	DisplayName               = _('AMX'),
	HumanCockpit              = true,
	HumanCockpitPath          = current_mod_path .. '/Cockpit/',
	Rate                      = 40,
	Shape                     = AMX,
	WorldID                   = WSTYPE_PLACEHOLDER,
	livery_entry              = AMX,

	shape_table_data          =
	{
		{
			file        = AMX,
			life        = 18,
			vis         = 3,
			desrt       = 'Fighter-2-crush',
			fire        = { 300, 2 },
			username    = AMX,
			index       = WSTYPE_PLACEHOLDER,
			classname   = "lLandPlane",
			positioning = "BYNORMAL",
			drawonmap   = true,
		},
	},

	net_animation             = { 551, 552, 553, 554, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 140, 141, 142, 900, 901, 99, 400, 401, 402, 38, },
	mapclasskey               = "P0091000025",
	attribute                 = { wsType_Air, wsType_Airplane, wsType_Fighter, WSTYPE_PLACEHOLDER, "Battleplanes", },
	Categories                = { "{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor", },

	-- Dados Físicos AMX (PT-6A)
	M_empty                   = 1810,    -- kg (Ref: Embraer)
	M_nominal                 = 2550,    -- kg (Vazio + 2 Pilotos + Combustível interno)
	M_max                     = 3175,    -- kg (MTOW)
	M_fuel_max                = 415,     -- kg (Aprox. interno do AMX)

	H_max                     = 8750,    -- m (Teto de serviço operacional)

	average_fuel_consumption  = 0.055,   -- kg/s (~200kg/h cruzeiro)

	CAS_min                   = 45,
	V_opt                     = 122,    -- m/s (Velocidade de cruzeiro ~440km/h)
	V_take_off                = 38,     -- m/s (~135km/h)
	V_land                    = 34,     -- m/s (~124km/h stall)
	V_max_sea_level           = 127,    -- m/s (~458km/h)
	V_max_h                   = 125,    -- m/s
	Vy_max                    = 11.3,   -- m/s (Taxa de subida AMX)
	Mach_max                  = 0.45,
	Ny_min                    = -3.0,
	Ny_max                    = 6.0,
	Ny_max_e                  = 6.0,
	AOA_take_off              = 0.14,
	bank_angle_max            = 60,

	has_afteburner            = false,
	has_speedbrake            = false,

	nose_gear_pos             = { 2.976, -1.5, 0.0 },
	main_gear_pos             = { -0.122, -1.61, 1.816 },
	tand_gear_max             = 1,
	nose_gear_wheel_diameter  = 0.359,
	main_gear_wheel_diameter  = 0.579,

	wing_area                 = 19.4,    -- m2
	wing_span                 = 11.14,   -- m
	wing_type                 = 0,
	height                    = 3.40,    -- m (Corrigido)
	length                    = 9.86,    -- m (Corrigido)

	wing_tip_pos              = { 0.038, -0.032, 5.393 },

	range                     = 1916,   -- km (Raio máx com tanques)

	flaps_maneuver            = 0.5,

	RCS                       = 2.5,
	IR_emission_coeff         = 0.08,   -- Turboélice é mais frio que jato
	IR_emission_coeff_ab      = 0.0,

	brakeshute_name           = 0,
	is_tanker                 = false,
	air_refuel_receptacle_pos = { 0.0, 0.0, 0.0 },

	engines_count             = 1,
	engines_nozzles           =
	{
		[1] =
		{
			pos                 = { 2.57, -0.13, 0.58 }, -- Ajustar para a saída de escape dupla lateral
			elevation           = 0,
			diameter            = 0.3,        -- Bocal de turboélice é menor
			exhaust_length_ab   = 0,
			exhaust_length_ab_K = 0,
			smokiness_level     = 0.005,
		},
	},

	crew_size                 = 2,
	crew_members              =
	{
		[1] =
		{
			ejection_through_canopy = true,
			ejection_seat_name      = "pilot_f15_00_seat",
			pilot_name              = "pilot_f15_00",
			drop_canopy_name        = 0,
			drop_parachute_name     = "pilot_f15_parachute",
			pos                     = { 0.5, 0.1, 0.1 },
			canopy_pos              = { 2, 0.5, 0 },
			ejection_play_arg       = 50,
			pilot_body_arg          = 50,
			can_be_playable         = true,
			canopy_args             = { 38, 0.8 },
			ejection_added_speed    = { -4.5, 15, 0.4 },
			ejection_order          = 2,
			role                    = "pilot",
			role_display_name       = _("Pilot"),
			g_suit                  = 1,
			bailout_arg             = -1,
		},
		[2] =
		{
			ejection_through_canopy = true,
			ejection_seat_name      = "pilot_f15_00_seat",
			pilot_name              = "pilot_f15_00",
			drop_canopy_name        = 0,
			drop_parachute_name     = "pilot_f15_parachute",
			pos                     = { -0.8, 0.3, 0.1 },
			canopy_pos              = { 2, 0.5, 0 },
			ejection_added_speed    = { -4, 14.5, -0.4 },
			ejection_play_arg       = 50,
			can_be_playable         = false,
			canopy_args             = { 38, 0.8 },
			pilot_body_arg          = 472,
			ejection_order          = 1,
			role                    = "instructor",
			role_display_name       = _("Instructor pilot"),
			g_suit                  = 1,
			bailout_arg             = -1,
		},
	},

	-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	Pylons =  
	{  
		pylon(1, 0, 0, 0, 0,
			{
				arg = 308,
				arg_value = 0.2,
				DisplayName = "1",
  				use_full_connector_position = true,
				connector = "Pylon1",
			},
			armamentos_OUT
		),
        pylon(2, 0, 0, 0, 0,
			{
				arg = 309,
				arg_value = 0.2,
				DisplayName = "2",
				use_full_connector_position = true,
				connector = "Pylon2",
			},
			armamentos_IN
		),
        pylon(3, 0, 0, 0, 0,
			{
				arg = 310,
				arg_value = 0.2,
				DisplayName = "3",
				use_full_connector_position = true,
				connector = "Pylon3",
			},
			armamentos_IN
		),
        pylon(4, 0, 0, 0, 0,
			{
				arg = 311,
				arg_value = 0.2,
				DisplayName = "4",
				use_full_connector_position = true,
				connector = "Pylon4",
			},
			armamentos_OUT
		),
	},
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	Tasks                     =
	{
		aircraft_task(GroundAttack), aircraft_task(CAS), aircraft_task(AFAC), aircraft_task(Escort),
	},
	DefaultTask               = aircraft_task(CAS),

	SFM_Data                  =
	{
		aerodynamics =
		{
			Cy0        = 0.10,
			Mzalfa     = 3.0,
			Mzalfadt   = 0.6,
			kjx        = 2.0,
			kjz        = 0.001,
			Czbe       = -0.012,
			cx_gear    = 0.050,
			cx_flap    = 0.12,
			cy_flap    = 0.50,
			cx_brk     = 0.08,

			table_data =
			{
				[1] = { 0.0, 0.055, 0.080, 0.050, 0.020, 0.20, 17.0, 1.60 },
				[2] = { 0.2, 0.055, 0.080, 0.050, 0.020, 0.60, 17.0, 1.40 },
				[3] = { 0.3, 0.060, 0.082, 0.055, 0.025, 0.80, 16.0, 1.35 },
				[4] = { 0.4, 0.070, 0.080, 0.060, 0.030, 0.90, 15.0, 1.30 },
				[5] = { 0.5, 0.085, 0.078, 0.070, 0.040, 0.85, 14.0, 1.20 },
				[6] = { 0.6, 0.110, 0.075, 0.085, 0.060, 0.75, 13.0, 1.10 },
				[7] = { 0.7, 0.150, 0.070, 0.100, 0.080, 0.60, 11.0, 1.00 },
			},
		},
		engine =
		{
			typeng                = 3,   -- turboprop
			Nmg                   = 64,
			MinRUD                = 0,
			MaxRUD                = 1,
			MaksRUD               = 1,
			ForsRUD               = 1,
			hMaxEng               = 8.7,   -- Limite do PT-6
			dcx_eng               = 0.015,
			cemax                 = 0.70,
			cefor                 = 0.70,
			dpdh_m                = 3800,
			dpdh_f                = 3800,

			D_prop                = 2.36,   -- Diâmetro real da hélice tripá Hartzell

			Startup_Ignition_Time = 8.0,
			Shutdown_Duration     = 9.8,
			prop_locations        = { { 3.131, -0.082, 0.0 }, }, -- Centralizado
			prop_blades_count     = 3,
			prop_pitch_min        = 15.0,
			prop_pitch_max        = 87.0,
			prop_pitch_feather    = 87.0,
			Nominal_RPM           = 2200,

			table_data            =
			{
				-- AMX: 750 SHP max = 560.000 Watts
				{ 0.00, 560000 },
				{ 0.10, 555000 },
				{ 0.15, 548000 },
				{ 0.20, 535000 },
				{ 0.25, 520000 },
				{ 0.30, 500000 },
				{ 0.35, 470000 },
				{ 0.40, 400000 },
				{ 0.45, 300000 },
				{ 0.50, 200000 },
			},
		},
	},
	sounderName               = "Aircraft/Planes/AMX",
}
add_aircraft(AMXFM)
