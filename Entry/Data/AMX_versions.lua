crew_members_um_amx           =
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
        ejection_order          = 1,
        role                    = "pilot",
        role_display_name       = _("Pilot"),
        g_suit                  = 1,
        bailout_arg             = -1,
    }
}

crew_members_dois_amx         =
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
        ejection_order          = 1,
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
        ejection_play_arg       = 472,
        can_be_playable         = false,
        canopy_args             = { 38, 0.8 },
        pilot_body_arg          = 472,
        ejection_order          = 2,
        role                    = "instructor",
        role_display_name       = _("Instructor pilot"),
        g_suit                  = 1,
        bailout_arg             = -1,
    },
}

noPassivCounterm              = {
    CMDS_Edit         = false,
    SingleChargeTotal = 0,
    chaff             = { default = 0, increment = 0, chargeSz = 0 },
    flare             = { default = 0, increment = 0, chargeSz = 0 }
}

passivCounterm                = {
    CMDS_Edit         = true,
    SingleChargeTotal = 120,
    chaff             = { default = 80, increment = 40, chargeSz = 1 },
    flare             = { default = 40, increment = 20, chargeSz = 1 }
}

local id_amx                  = "AMX"

AMX_all_versions              = {
    Picture               = "AMX.png",
    Rate                  = 50,
    Shape                 = "AMX",
    WorldID               = WSTYPE_PLACEHOLDER,

    shape_table_data      =
    {
        {
            file        = id_amx,
            life        = 18,
            vis         = 3,
            desrt       = 'Fighter-2-crush',
            fire        = { 300, 2 },
            username    = id_amx,
            index       = WSTYPE_PLACEHOLDER,
            classname   = "lLandPlane",
            positioning = "BYNORMAL",
        },
    },

    net_animation         = {
        0,   -- front gear
        2,   -- nose wheel steering
        3,   -- right gear
        5,   -- left gear
        38,  -- canopy
        89,  -- engine nozzle
        134, -- nose wheel damage
        135, -- main wheel damage
        136, -- main wheel damage	
        182, -- left and right air brake
        190, -- left front red navigation light
        191, -- right front green navigation light
        192, -- rear white navigation lights
        193, -- rear tail fin anticollision light
        200, -- formation lights
        201, -- wingtip lights
        208, -- landing lights
        209, -- taxi lights
        479, -- canard right
        480, -- canard left
        478, -- lef left	
        477, -- lef right
        484, -- elevon outer left	
        485, -- elevon inner left
        486, -- elevon inner right
        487, -- elevon outer right
        488, -- rudder
        498, -- gear bay doors
        499  -- wheel chocks and ladder
    },

    mapclasskey           = "P0091000024",
    attribute             = { wsType_Air, wsType_Airplane, wsType_Fighter, WSTYPE_PLACEHOLDER, "Fighters", "Bombers", "Refuelable", "Datalink", "Link16" },
    Categories            = { "{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor", },

    M_max                                    = 13000,                -- kg (MTOW - Peso Máximo de Decolagem)
	H_max                                    = 13000,                -- m (Teto de serviço operacional, aprox. 42.650 ft)
	average_fuel_consumption                 = 0.021,                -- Motor turbofan sem pós-combustão (mantido padrão SFM)
	CAS_min                                  = 55,                   -- Minimum CAS speed em m/s (Velocidade de estol próxima a ~105 kts)
	V_opt                                    = 220,                  -- Cruise speed em m/s (Velocidade de cruzeiro, Mach ~0.7)
	V_take_off                               = 65,                   -- Take off speed em m/s (Aprox. 125 kts)
	V_land                                   = 70,                   -- Land speed em m/s (Aprox. 135 kts)
	has_afteburner                           = false,                -- AMX NÃO possui pós-combustor
	has_speedbrake                           = true,                 -- AMX possui freios aerodinâmicos
	radar_can_see_ground                     = true,                 -- Radar de telemetria/ataque (ex: SCP-01 Scipio)

	nose_gear_pos                            = { 3.800, -2.000, 0 }, -- Ajustado para o comprimento menor do AMX
	nose_gear_amortizer_direct_stroke        = 0.05,
	nose_gear_amortizer_reversal_stroke      = -0.4,
	nose_gear_amortizer_normal_weight_stroke = -0.27,
	nose_gear_wheel_diameter                 = 0.8,                     -- Roda ligeiramente menor que a do caça

	main_gear_pos                            = { -0.500, -1.96, 1.35 }, -- Ajustado para a bitola do AMX
	main_gear_amortizer_direct_stroke        = 0,
	main_gear_amortizer_reversal_stroke      = -0.228,
	main_gear_amortizer_normal_weight_stroke = -0.114,
	main_gear_wheel_diameter                 = 0.9,

	AOA_take_off                             = 0.16,                      -- AoA in take off
	stores_number                            = 7,                         -- O AMX tem 5 pilones na fuselagem/asas + 2 trilhos nas pontas
	bank_angle_max                           = 60,
	Ny_min                                   = -3.0,                      -- Carga G negativa limite
	Ny_max                                   = 7.33,                      -- Carga G positiva operacional limite do AMX
	V_max_sea_level                          = 292,                       -- Velocidade máx. no nível do mar em m/s (Aprox. 1050 km/h)
	V_max_h                                  = 290,                       -- Velocidade máx. em altitude em m/s (Aeronave subsônica)
	wing_area                                = 21.0,                      -- Área da asa em m2 (226 sq ft)
	thrust_sum_max                           = 5000,                      -- Empuxo em kgf (Aprox. 49.1 kN do RR Spey 807)
	thrust_sum_ab                            = 5000,                      -- Sem pós-combustor, igual ao empuxo máximo (seco)
	Vy_max                                   = 52,                        -- Razão máx. de subida em m/s (Aprox. 10.200 ft/min)
	flaps_maneuver                           = 1.0,
	Mach_max                                 = 0.95,                      -- Limite subsônico de VNE (Velocity Never Exceed)
	range                                    = 3330,                      -- Alcance máximo de traslado (Ferry range) em km
	RCS                                      = 2.5,                       -- Radar Cross Section (Jato pequeno de ataque, mas sem stealth)
	Ny_max_e                                 = 7.33,
	detection_range_max                      = 40,                        -- Raio de detecção do radar reduzido (Radar focado em A/G)
	IR_emission_coeff                        = 0.4,                       -- Assinatura térmica reduzida (Turbofan sem AB)
	IR_emission_coeff_ab                     = 0.0,                       -- Zero emissão de AB
	tand_gear_max                            = 0.84,
	tanker_type                              = 2,                         -- Sistema Probe and Drogue (padrão 2 no SFM)
	wing_span                                = 8.87,                      -- Envergadura em metros
	wing_type                                = 0,                         -- Asa fixa (FIXED_WING)
	length                                   = 13.57,                     -- Comprimento em metros
	height                                   = 4.57,                      -- Altura em metros
	crew_size                                = 1,                         -- AMX A-1A (Monoplace)
	engines_count                            = 1,                         -- Monomotor
	wing_tip_pos                             = { -2.000, -0.100, 4.435 }, -- Posição Z reflete metade da envergadura (8.87 / 2)

    EPLRS                 = true,
    TACAN_AA              = true,

    mechanimations        = {
        Door0 = {
            { Transition = { "Close", "Open" },  Sequence = { { C = { { "Arg", 38, "to", 0.9, "in", 8.0 }, }, }, }, Flags = { "Reversible" }, },
            { Transition = { "Open", "Close" },  Sequence = { { C = { { "Arg", 38, "to", 0.0, "in", 8.0 }, }, }, }, Flags = { "Reversible", "StepsBackwards" }, },
            { Transition = { "Any", "Bailout" }, Sequence = { { C = { { "JettisonCanopy", 0 }, }, }, }, },
        },
        CrewLadder = {
            { Transition = { "Dismantle", "Erect" }, Sequence = { { C = { { "Arg", 91, "to", -1.0, "in", 1.5 } } }, { C = { { "Sleep", "for", 5.0 } } } }, Flags = { "Reversible" } },
            { Transition = { "Erect", "Dismantle" }, Sequence = { { C = { { "Arg", 91, "to", 0.0, "in", 2.7 } } }, { C = { { "Sleep", "for", 0.0 } } } },  Flags = { "Reversible", "StepsBackwards" } },
        },
    },

    engines_nozzles       = {
        [1] =
        {
            pos                 = { -5.500, 0.100, 0 }, -- Recuado para o comprimento mais curto do AMX em relação ao CG
            elevation           = 0,                    -- Ângulo do bico de exaustão
            diameter            = 0.75,                 -- Diâmetro do bico do motor Spey 807 (menor que o do caça original)
            exhaust_length_ab   = 0,
            exhaust_length_ab_K = 0,
            -- O motor Spey é um projeto mais antigo e gera fumaça visível, especialmente em RPM máximo
            smokiness_level     = 0.25, -- Aumentado de 0.01 (limpo) para 0.25 (fumaça moderada/alta)
        },                              -- end of [1]
    },

    brakeshute_name       = 0,

    is_tanker             = false,

    DefaultTask                              = aircraft_task(CAS),

    fires_pos             =
    {
        [1] = { -0.707, 0.553, -0.213 },
        [2] = { -0.037, 0.285, 1.391 },
        [3] = { -0.037, 0.285, -1.391 },
        [4] = { -0.82, 0.265, 2.774 },
        [5] = { -0.82, 0.265, -2.774 },
        [6] = { -0.82, 0.255, 4.274 },
        [7] = { -0.82, 0.255, -4.274 },
        [8] = { -5.003, 0.261, 0 },
        [9] = { -5.003, 0.261, 0 },
        [10] = { -0.707, 0.453, 1.036 },
        [11] = { -0.707, 0.453, -1.036 },
    }, -- end of fires_pos

    chaff_flare_dispenser =
    {
        [1] = { dir = { 0, 1.0, 0 }, pos = { -3.25, 0.35, 0.8 }, },
        [2] = { dir = { 0, -1.0, 0 }, pos = { -3.25, 0.35, 0.8 }, },
        [3] = { dir = { 0, -1.0, 0 }, pos = { -3.25, 0.35, 0.8 }, },
        [4] = { dir = { 0, 1.0, 0 }, pos = { -3.25, 0.35, 0.8 }, },
    }, -- end of chaff_flare_dispenser

    CanopyGeometry        = {
        azimuth   = { -145.0, 145.0 }, -- pilot view horizontal (AI)
        elevation = { -50.0, 90.0 }    -- pilot view vertical (AI)
    },

    Failures              = {
        { id = 'asc',       label = _('ASC'),       enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'hydro',     label = _('HYDRO'),     enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'engine',    label = _('ENGINE'),    enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'radar',     label = _('RADAR'),     enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        --{ id = 'eos',  		label = _('EOS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        --{ id = 'helmet',  	label = _('HELMET'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'mlws',      label = _('MLWS'),      enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'rws',       label = _('RWS'),       enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'ecm',       label = _('ECM'),       enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'hud',       label = _('HUD'),       enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'mfd',       label = _('MFD'),       enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
    },

    HumanRadio            = {
        frequency    = 127.5, -- Radio Freq
        editable     = true,
        minFrequency = 100.000,
        maxFrequency = 156.000,
        modulation   = MODULATION_AM
    },

    Tasks                 = {
        aircraft_task(SEAD),           -- 29
        aircraft_task(AntishipStrike), -- 30
        aircraft_task(CAS),            -- 31
        aircraft_task(GroundAttack),   -- 32
        aircraft_task(PinpointStrike), -- 33
        aircraft_task(RunwayAttack),   -- 34
    },

    Damage                = {
        [0]  = { critical_damage = 5, args = { 146 } },                                  --NOSE_CENTER
        [1]  = { critical_damage = 3, args = { 296 } },                                  --NOSE_LEFT_SIDE
        [2]  = { critical_damage = 3, args = { 297 } },                                  --NOSE_RIGHT_SIDE
        [3]  = { critical_damage = 8, args = { 65 } },                                   --CABINA
        [4]  = { critical_damage = 2, args = { 298 } },                                  --CABIN_LEFT_SIDE
        [5]  = { critical_damage = 2, args = { 301 } },                                  --CABIN_RIGHT_SIDE
        [7]  = { critical_damage = 2, args = { 249 } },                                  --GUN
        [8]  = { critical_damage = 3, args = { 265 } },                                  --FRONT_GEAR_BOX
        [9]  = { critical_damage = 3, args = { 154 } },                                  --FUSELAGE_LEFT_SIDE
        [10] = { critical_damage = 3, args = { 153 } },                                  --FUSELAGE_RIGHT_SIDE
        [11] = { critical_damage = 1, args = { 167 } },                                  --ENGINE_L_IN
        [12] = { critical_damage = 1, args = { 161 } },                                  --ENGINE_R_IN
        [13] = { critical_damage = 2, args = { 169 } },                                  --MTG_L_BOTTOM
        [14] = { critical_damage = 2, args = { 163 } },                                  --MTG_R_BOTTOM
        [15] = { critical_damage = 2, args = { 267 } },                                  --LEFT_GEAR_BOX
        [16] = { critical_damage = 2, args = { 266 } },                                  --RIGHT_GEAR_BOX
        [17] = { critical_damage = 2, args = { 168 } },                                  --MTG_L  (ENGINE)
        [18] = { critical_damage = 2, args = { 162 } },                                  --MTG_R  (ENGINE)
        [20] = { critical_damage = 2, args = { 183 } },                                  --AIR_BRAKE_R
        [23] = { critical_damage = 5, args = { 223 } },                                  --WING_L_OUT
        [24] = { critical_damage = 5, args = { 213 } },                                  --WING_R_OUT
        [25] = { critical_damage = 2, args = { 226 } },                                  --ELERON_L
        [26] = { critical_damage = 2, args = { 216 } },                                  --ELERON_R
        [29] = { critical_damage = 5, args = { 224 }, deps_cells = { 23, 25 } },         --WING_L_CENTER
        [30] = { critical_damage = 5, args = { 214 }, deps_cells = { 24, 26 } },         --WING_R_CENTER
        [35] = { critical_damage = 6, args = { 225 }, deps_cells = { 23, 29, 25, 37 } }, --WING_L_IN
        [36] = { critical_damage = 6, args = { 215 }, deps_cells = { 24, 30, 26, 38 } }, --WING_R_IN
        [37] = { critical_damage = 2, args = { 228 } },                                  --FLAP_L
        [38] = { critical_damage = 2, args = { 218 } },                                  --FLAP_R
        [39] = { critical_damage = 2, args = { 244 } },                                  --FIN_L_TOP
        [40] = { critical_damage = 2, args = { 241 }, deps_cells = { 54 } },             --FIN_R_TOP
        [43] = { critical_damage = 2, args = { 243 }, deps_cells = { 39, 53 } },         --FIN_L_BOTTOM
        [44] = { critical_damage = 2, args = { 242 }, deps_cells = { 40, 54 } },         --FIN_R_BOTTOM
        [51] = { critical_damage = 2, args = { 240 } },                                  --ELEVATOR_L
        [52] = { critical_damage = 2, args = { 238 } },                                  --ELEVATOR_R
        [53] = { critical_damage = 2, args = { 248 } },                                  --RUDDER_L
        [54] = { critical_damage = 2, args = { 247 } },                                  --RUDDER_R
        [56] = { critical_damage = 2, args = { 158 } },                                  --TAIL_LEFT_SIDE
        [57] = { critical_damage = 2, args = { 157 } },                                  --TAIL_RIGHT_SIDE
        [59] = { critical_damage = 3, args = { 148 } },                                  --NOSE_BOTTOM
        [61] = { critical_damage = 2, args = { 147 } },                                  --FUEL_TANK_F
        [82] = { critical_damage = 2, args = { 152 } },                                  --FUSELAGE_BOTTOM
    },

    lights_data           = {
        typename = "collection",
        lights = {
            -- STROBES
            [WOLALIGHT_STROBES] = {
                typename = "collection",
                lights = {
                    { typename = "natostrobelight", argument = 193, period = 1.2, phase_shift = 0, color = { 0.9, 1.0, 0.7, 0.4 }, connector = "BANO_0_BACK" },
                    --{typename = "argnatostrobelight", argument = 193, period = 1.2, phase_shift = 0, color = {0.9, 1.0, 0.7, 0.4}, connector = "BANO_0_BACK"},
                }
            },

            [WOLALIGHT_LANDING_LIGHTS] = {
                typename = "collection",
                lights = {
                    { typename = "argumentlight", argument = 209, },
                },
            },
            [WOLALIGHT_TAXI_LIGHTS] = {
                typename = "collection",
                lights = {
                    { typename = "argumentlight", argument = 208, },
                },
            },
            -- NAVLIGHTS
            [WOLALIGHT_NAVLIGHTS] = {
                typename = "collection",                            -- nav_lights_default
                lights = {
                    { typename = "argumentlight", argument = 190 }, -- Left Position(red)
                    { typename = "argumentlight", argument = 191 }, -- Right Position(green)
                    { typename = "argumentlight", argument = 192 }, -- Tail Position white)
                },
            },
            -- FORMATION
            [WOLALIGHT_FORMATION_LIGHTS] = {
                typename = "collection",
                lights = {
                    { typename = "argumentlight", argument = 200, }, --formation_lights_tail_1 = 200;
                },
            },
            [WOLALIGHT_REFUEL_LIGHTS] = {}, -- REFUEL
            [WOLALIGHT_BEACONS] = {},       -- STROBE / ANTI-COLLISION
            [WOLALIGHT_CABIN_NIGHT] = {},   --
        }
    },
}

