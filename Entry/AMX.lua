local AMX = 'AMX'

AMXFM     = {
	Name                = AMX,
	DisplayName         = _('AMX'),
	Picture             = "AMX.png",
	Rate                = "50",
	Shape               = "AMX",
	WorldID             = WSTYPE_PLACEHOLDER,

	LandRWCategories    =
	{
		[1] =
		{
			Name = "AircraftCarrier",
		},
		[2] =
		{
			Name = "AircraftCarrier With Catapult",
		},
		[3] =
		{
			Name = "AircraftCarrier With Tramplin",
		},
	},
	TakeOffRWCategories =
	{
		[1] =
		{
			Name = "AircraftCarrier",
		},
		[2] =
		{
			Name = "AircraftCarrier With Catapult",
		},
		[3] =
		{
			Name = "AircraftCarrier With Tramplin",
		},
	},

	shape_table_data    =
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
		},
	},

	net_animation       = {
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

	mapclasskey                              = "P0091000024",
	attribute                                = { wsType_Air, wsType_Airplane, wsType_Fighter, WSTYPE_PLACEHOLDER, "Fighters", "Bombers", "Refuelable", "Datalink", "Link16" },
	Categories                               = { "{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor", },

	M_empty                                  = 6730, -- kg (Peso vazio aproximado do AMX A-1A)
    M_nominal                                = 9520, -- kg (Vazio + Combustível Interno Máximo: 6730 + 2790)
    M_max                                    = 13000, -- kg (MTOW - Peso Máximo de Decolagem)
    M_fuel_max                               = 2790, -- kg (Capacidade máxima de combustível interno)
    H_max                                    = 13000, -- m (Teto de serviço operacional, aprox. 42.650 ft)
    average_fuel_consumption                 = 0.021, -- Motor turbofan sem pós-combustão (mantido padrão SFM)
    CAS_min                                  = 55, -- Minimum CAS speed em m/s (Velocidade de estol próxima a ~105 kts)
    V_opt                                    = 220, -- Cruise speed em m/s (Velocidade de cruzeiro, Mach ~0.7)
    V_take_off                               = 65, -- Take off speed em m/s (Aprox. 125 kts)
    V_land                                   = 70, -- Land speed em m/s (Aprox. 135 kts)
    has_afteburner                           = false, -- AMX NÃO possui pós-combustor
    has_speedbrake                           = true, -- AMX possui freios aerodinâmicos
    radar_can_see_ground                     = true, -- Radar de telemetria/ataque (ex: SCP-01 Scipio)

    nose_gear_pos                            = { 3.800, -2.000, 0 }, -- Ajustado para o comprimento menor do AMX
    nose_gear_amortizer_direct_stroke        = 0.05,         
    nose_gear_amortizer_reversal_stroke      = -0.4,         
    nose_gear_amortizer_normal_weight_stroke = -0.27,        
    nose_gear_wheel_diameter                 = 0.8,          -- Roda ligeiramente menor que a do caça

    main_gear_pos                            = { -0.500, -1.96, 1.35 }, -- Ajustado para a bitola do AMX
    main_gear_amortizer_direct_stroke        = 0,            
    main_gear_amortizer_reversal_stroke      = -0.228,       
    main_gear_amortizer_normal_weight_stroke = -0.114,       
    main_gear_wheel_diameter                 = 0.9,          

    AOA_take_off                             = 0.16,         -- AoA in take off
    stores_number                            = 7, -- O AMX tem 5 pilones na fuselagem/asas + 2 trilhos nas pontas
    bank_angle_max                           = 60,           
    Ny_min                                   = -3.0,         -- Carga G negativa limite
    Ny_max                                   = 7.33,         -- Carga G positiva operacional limite do AMX
    V_max_sea_level                          = 292,          -- Velocidade máx. no nível do mar em m/s (Aprox. 1050 km/h)
    V_max_h                                  = 290,          -- Velocidade máx. em altitude em m/s (Aeronave subsônica)
    wing_area                                = 21.0,         -- Área da asa em m2 (226 sq ft)
    thrust_sum_max                           = 5000,         -- Empuxo em kgf (Aprox. 49.1 kN do RR Spey 807)
    thrust_sum_ab                            = 5000,         -- Sem pós-combustor, igual ao empuxo máximo (seco)
    Vy_max                                   = 52,           -- Razão máx. de subida em m/s (Aprox. 10.200 ft/min)
    flaps_maneuver                           = 1.0,
    Mach_max                                 = 0.95,         -- Limite subsônico de VNE (Velocity Never Exceed)
    range                                    = 3330,         -- Alcance máximo de traslado (Ferry range) em km
    RCS                                      = 2.5,          -- Radar Cross Section (Jato pequeno de ataque, mas sem stealth)
    Ny_max_e                                 = 7.33,         
    detection_range_max                      = 40,           -- Raio de detecção do radar reduzido (Radar focado em A/G)
    IR_emission_coeff                        = 0.4,          -- Assinatura térmica reduzida (Turbofan sem AB)
    IR_emission_coeff_ab                     = 0.0,          -- Zero emissão de AB
    tand_gear_max                            = 0.84,         
    tanker_type                              = 2,            -- Sistema Probe and Drogue (padrão 2 no SFM)
    wing_span                                = 8.87,         -- Envergadura em metros
    wing_type                                = 0,            -- Asa fixa (FIXED_WING)
    length                                   = 13.57,        -- Comprimento em metros
    height                                   = 4.57,         -- Altura em metros
    crew_size                                = 1,            -- AMX A-1A (Monoplace)
    engines_count                            = 1,            -- Monomotor
    wing_tip_pos                             = { -2.000, -0.100, 4.435 }, -- Posição Z reflete metade da envergadura (8.87 / 2)

	EPLRS                                    = true,
	TACAN_AA                                 = true,

	mechanimations                           = {
		Door0 = {
			{ Transition = { "Close", "Open" }, Sequence = { { C = { { "Arg", 38, "to", 0.9, "in", 8.0 }, }, }, }, Flags = { "Reversible" }, },
			{ Transition = { "Open", "Close" }, Sequence = { { C = { { "Arg", 38, "to", 0.0, "in", 8.0 }, }, }, }, Flags = { "Reversible", "StepsBackwards" }, },
			{ Transition = { "Any", "Bailout" }, Sequence = { { C = { { "JettisonCanopy", 0 }, }, }, }, },
		},
		CrewLadder = {
			{ Transition = { "Dismantle", "Erect" }, Sequence = { { C = { { "Arg", 91, "to", -1.0, "in", 1.5 } } }, { C = { { "Sleep", "for", 5.0 } } } }, Flags = { "Reversible" } },
			{ Transition = { "Erect", "Dismantle" }, Sequence = { { C = { { "Arg", 91, "to", 0.0, "in", 2.7 } } }, { C = { { "Sleep", "for", 0.0 } } } }, Flags = { "Reversible", "StepsBackwards" } },
		},
	},

	engines_nozzles                          =
    {
        [1] =
        {
            pos                        = { -5.500, 0.100, 0 }, -- Recuado para o comprimento mais curto do AMX em relação ao CG
            elevation                  = 0,    -- Ângulo do bico de exaustão
            diameter                   = 0.75, -- Diâmetro do bico do motor Spey 807 (menor que o do caça original)
            exhaust_length_ab          = 0,    
            exhaust_length_ab_K        = 0,   
            -- O motor Spey é um projeto mais antigo e gera fumaça visível, especialmente em RPM máximo
            smokiness_level            = 0.25, -- Aumentado de 0.01 (limpo) para 0.25 (fumaça moderada/alta)
        }, -- end of [1]
    }, -- end of engines_nozzles

	crew_members                             =
	{
		[1] =
		{
			ejection_seat_name   = 17,
			pos                  = { 3.9, 1.4, 0 },
			ejection_order       = 1,
			canopy_arg           = 38,
			can_be_playable      = true,
			ejection_added_speed = { -5, 15, 0 },
			role                 = "pilot",
			role_display_name    = _("Pilot"),
		},      -- end of [1]
		[2] =
		{
		},     -- end of [2]
	},         -- end of crew_members
	brakeshute_name                          = 0,
	is_tanker                                = false,
	air_refuel_receptacle_pos                = { -0.051, 0.911, 0 },
	fires_pos                                =
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

	chaff_flare_dispenser                    =
	{
		[1] = { dir = { 0, 1.0, 0 }, pos = { -3.25, 0.35, 0.8 }, },
		[2] = { dir = { 0, -1.0, 0 }, pos = { -3.25, 0.35, 0.8 }, },
		[3] = { dir = { 0, -1.0, 0 }, pos = { -3.25, 0.35, 0.8 }, },
		[4] = { dir = { 0, 1.0, 0 }, pos = { -3.25, 0.35, 0.8 }, },
	}, -- end of chaff_flare_dispenser

	-- Countermeasures
	passivCounterm                           = {
		CMDS_Edit         = true,
		SingleChargeTotal = 120,
		chaff             = { default = 80, increment = 40, chargeSz = 1 },
		flare             = { default = 40, increment = 20, chargeSz = 1 }
	},

	CanopyGeometry                           = {
		azimuth   = { -145.0, 145.0 },  -- pilot view horizontal (AI)
		elevation = { -50.0, 90.0 }     -- pilot view vertical (AI)
	},

	Sensors = {
		RADAR = "PS-05/A",
		RWR = "BOW-21 RWR",
		OPTIC = { "Litening AN/AAQ-28 FLIR", "Litening AN/AAQ-28 CCD TV" },
	},

	laserEquipment = {
		laserDesignator = true,
		laserRangefinder = true
	},

	Countermeasures = {
		ECM = "AN/ALQ-135" --F15
	},

	Failures = {
		{ id = 'asc',       label = _('ASC'),       enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = 'hydro',     label = _('HYDRO'),     enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = 'l_engine',  label = _('L-ENGINE'),  enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = 'r_engine',  label = _('R-ENGINE'),  enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = 'radar',     label = _('RADAR'),     enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		--{ id = 'eos',  		label = _('EOS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		--{ id = 'helmet',  	label = _('HELMET'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = 'mlws',      label = _('MLWS'),      enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = 'rws',       label = _('RWS'),       enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = 'ecm',       label = _('ECM'),       enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = 'hud',       label = _('HUD'),       enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = 'mfd',       label = _('MFD'),       enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
	},

	HumanRadio = {
		frequency    = 127.5, -- Radio Freq
		editable     = true,
		minFrequency = 100.000,
		maxFrequency = 156.000,
		modulation   = MODULATION_AM
	},

	Tasks = {
		aircraft_task(SEAD),           -- 29
		aircraft_task(AntishipStrike), -- 30
		aircraft_task(CAS),            -- 31
		aircraft_task(GroundAttack),   -- 32
		aircraft_task(PinpointStrike), -- 33
		aircraft_task(RunwayAttack),   -- 34
	},
	DefaultTask = aircraft_task(CAS),

	SFM_Data = {
		aerodynamics = {          -- Cx = Cx_0 + Cy^2*B2 +Cy^4*B4
            Cy0        = 0.0,     -- Zero AoA lift coefficient
            Mzalfa     = 4.8,     -- Pitch agility (Ajustado para aeronave de ataque mais pesada)
            Mzalfadt   = 0.7,     -- Pitch agility damping
            kjx        = 3.80,    -- Roll inertia (Menor que o caça, envergadura curta, mas carrega peso nas pontas)
            kjz        = 0.00115, -- Pitch inertia
            Czbe       = -0.014,  -- Coefficient, along Z axis (yaw orientation)
            cx_gear    = 0.085,   -- Drag do trem de pouso
            cx_flap    = 0.065,   -- Drag com flaps full (AMX tem flaps duplos grandes, gera bastante arrasto)
            cy_flap    = 0.85,    -- Lift com flaps full (Aumentado bastante, o AMX tem excelente sustentação STOL)
            cx_brk     = 0.10,    -- Drag dos speedbrakes (Freios aerodinâmicos na lateral da fuselagem)
            
            table_data = {
                --      Mach    Cx0      Cya     B       B4      Omxmax  Aldop   Cymax
                -- Voo Subsônico (Baixo arrasto, excelente manobrabilidade)
                { 0.000, 0.0250, 0.075, 0.0450, 0.15,  3.50, 24.000, 1.300 },
                { 0.200, 0.0250, 0.075, 0.0450, 0.15,  3.50, 24.000, 1.300 },
                { 0.400, 0.0260, 0.078, 0.0480, 0.16,  3.50, 23.000, 1.350 },
                { 0.600, 0.0280, 0.082, 0.0520, 0.18,  3.50, 22.000, 1.400 },
                { 0.750, 0.0310, 0.090, 0.0550, 0.19,  3.20, 20.000, 1.380 },
                
                -- Divergência de Arrasto (Aproximação de Mach crítico)
                { 0.800, 0.0350, 0.095, 0.0600, 0.20,  3.00, 18.000, 1.350 },
                { 0.850, 0.0500, 0.100, 0.0700, 0.25,  2.80, 16.000, 1.300 },
                { 0.900, 0.0850, 0.090, 0.1000, 0.35,  2.50, 14.000, 1.200 },
                { 0.950, 0.1500, 0.080, 0.1500, 0.40,  2.00, 12.000, 1.100 }, -- VNE estrutural do AMX
                
                -- Barreira do Som (A "Parede Aerodinâmica")
                -- Cx0 (arrasto de forma) e B (arrasto induzido) sobem violentamente para impedir voo supersônico irreal.
                { 1.000, 0.2800, 0.065, 0.2000, 0.50,  1.50, 10.000, 1.000 },
                { 1.050, 0.3500, 0.055, 0.2500, 0.60,  1.00, 10.000, 0.900 },
                { 1.100, 0.4500, 0.050, 0.3000, 0.70,  0.80,  9.000, 0.850 },
                { 1.200, 0.6000, 0.045, 0.4000, 0.80,  0.50,  8.000, 0.800 },
                
                -- Limite Máximo Teórico (Apenas em caso de mergulho extremo para a engine não bugar)
                { 1.500, 0.9000, 0.040, 0.8000, 1.50,  0.10,  5.000, 0.500 },
            }, -- end of table
            
            -- M        - Mach number
            -- Cx0      - Coefficient, drag, profile (Aumentado drasticamente no transônico para criar a "parede" Mach 1)
            -- Cya      - Normal force coefficient of the wing/body.
            -- B        - Polar quad coeff (Arrasto induzido)
            -- B4       - Polar 4th power coeff
            -- Omxmax   - Roll rate (Rad/s). Ajustado para máx de ~200 graus/s (3.5 rad/s)
            -- Aldop    - Alfadop Max AOA at current M (Limitado realisticamente a 24 graus)
            -- Cymax    - Coefficient, lift, maximum possible.
        }, -- end of aerodynamics

		engine = { --Rolls-Royce Spey Mk 807
            Nmg     = 60.0,     -- RPM at idle (Mantido padrão ~60%)
            MinRUD  = 0,        -- Min state of the throttle
            MaxRUD  = 1,        -- Max state of the throttle (Sem AB, o max é 1.0)
            MaksRUD = 1.0,      -- Military power state of the throttle (Igual ao MaxRUD, sem detentor de AB)
            ForsRUD = 1.0,      -- Afterburner state of the throttle (Não existe, setado para 1.0)
            typeng  = 4,
            --[[
                    E_TURBOJET = 0
                    E_TURBOJET_AB = 1
                    E_PISTON = 2
                    E_TURBOPROP = 3
                    E_TURBOFAN    = 4  <-- O Rolls-Royce Spey 807 é um Turbofan
                    E_TURBOSHAFT = 5
                --]]
            hMaxEng    = 13.0,   -- Max altitude for safe engine operation em km (Teto operacional real do AMX é ~13km / 42.650 ft)
            dcx_eng    = 0.0124, -- Engine drag coefficient
            cemax      = 0.65,   -- Specific fuel consumption for MIL (Spey é bem eficiente, ajustado para ~0.65)
            cefor      = 0.65,   -- Specific fuel consumption for AB (Igual ao MIL, pois não há AB)
            dpdh_m     = 1800,   -- Altitude coefficient for max thrust (Perde empuxo mais rápido que caças de alta altitude)
            dpdh_f     = 1800,   -- Altitude coefficient for AB thrust (Igual ao MIL)
            table_data = {
                --        M     Pmax (Newtons)  Pfor (Newtons)
                -- O motor Spey 807 gera 49.1 kN (49100 N) estático ao nível do mar.
                -- Como não há pós-combustor, Pmax e Pfor recebem os mesmos valores.
                -- O empuxo cai rapidamente com o aumento do Mach devido à arquitetura do turbofan subsônico.
                [1]  = { 0.00, 49100, 49100 },
                [2]  = { 0.20, 47500, 47500 },
                [3]  = { 0.30, 46000, 46000 },
                [4]  = { 0.40, 44500, 44500 },
                [5]  = { 0.50, 42000, 42000 },
                [6]  = { 0.60, 39500, 39500 },
                [7]  = { 0.70, 37000, 37000 },
                [8]  = { 0.80, 35000, 35000 },
                [9]  = { 0.90, 32000, 32000 },
                
                -- Acima de Mach 0.95 (VNE do AMX), o arrasto das pás do fan derruba a eficiência.
                -- Valores mantidos apenas para a engine física não quebrar caso a aeronave entre em mergulho.
                [10] = { 1.00, 25000, 25000 },
                [11] = { 1.10, 15000, 15000 },
                [12] = { 1.20, 10000, 10000 },
                [13] = { 1.50,  5000,  5000 },
                [14] = { 3.90,  1000,  1000 },
            }, -- end of table_data
            -- M    - Mach number
            -- Pmax    - Engine thrust at military power (Newtons)
            -- Pfor    - Engine thrust at AFB (Newtons - Igual ao Pmax no AMX)
        }, -- end of engine
	},

	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = {
		[0]  = { critical_damage = 5, args = { 146 } },                      --NOSE_CENTER
		[1]  = { critical_damage = 3, args = { 296 } },                      --NOSE_LEFT_SIDE
		[2]  = { critical_damage = 3, args = { 297 } },                      --NOSE_RIGHT_SIDE
		[3]  = { critical_damage = 8, args = { 65 } },                       --CABINA
		[4]  = { critical_damage = 2, args = { 298 } },                      --CABIN_LEFT_SIDE
		[5]  = { critical_damage = 2, args = { 301 } },                      --CABIN_RIGHT_SIDE
		[7]  = { critical_damage = 2, args = { 249 } },                      --GUN
		[8]  = { critical_damage = 3, args = { 265 } },                      --FRONT_GEAR_BOX
		[9]  = { critical_damage = 3, args = { 154 } },                      --FUSELAGE_LEFT_SIDE
		[10] = { critical_damage = 3, args = { 153 } },                      --FUSELAGE_RIGHT_SIDE
		[11] = { critical_damage = 1, args = { 167 } },                      --ENGINE_L_IN
		[12] = { critical_damage = 1, args = { 161 } },                      --ENGINE_R_IN
		[13] = { critical_damage = 2, args = { 169 } },                      --MTG_L_BOTTOM
		[14] = { critical_damage = 2, args = { 163 } },                      --MTG_R_BOTTOM
		[15] = { critical_damage = 2, args = { 267 } },                      --LEFT_GEAR_BOX
		[16] = { critical_damage = 2, args = { 266 } },                      --RIGHT_GEAR_BOX
		[17] = { critical_damage = 2, args = { 168 } },                      --MTG_L  (ENGINE)
		[18] = { critical_damage = 2, args = { 162 } },                      --MTG_R  (ENGINE)
		[20] = { critical_damage = 2, args = { 183 } },                      --AIR_BRAKE_R
		[23] = { critical_damage = 5, args = { 223 } },                      --WING_L_OUT
		[24] = { critical_damage = 5, args = { 213 } },                      --WING_R_OUT
		[25] = { critical_damage = 2, args = { 226 } },                      --ELERON_L
		[26] = { critical_damage = 2, args = { 216 } },                      --ELERON_R
		[29] = { critical_damage = 5, args = { 224 }, deps_cells = { 23, 25 } }, --WING_L_CENTER
		[30] = { critical_damage = 5, args = { 214 }, deps_cells = { 24, 26 } }, --WING_R_CENTER
		[35] = { critical_damage = 6, args = { 225 }, deps_cells = { 23, 29, 25, 37 } }, --WING_L_IN
		[36] = { critical_damage = 6, args = { 215 }, deps_cells = { 24, 30, 26, 38 } }, --WING_R_IN
		[37] = { critical_damage = 2, args = { 228 } },                      --FLAP_L
		[38] = { critical_damage = 2, args = { 218 } },                      --FLAP_R
		[39] = { critical_damage = 2, args = { 244 } },                      --FIN_L_TOP
		[40] = { critical_damage = 2, args = { 241 }, deps_cells = { 54 } }, --FIN_R_TOP
		[43] = { critical_damage = 2, args = { 243 }, deps_cells = { 39, 53 } }, --FIN_L_BOTTOM
		[44] = { critical_damage = 2, args = { 242 }, deps_cells = { 40, 54 } }, --FIN_R_BOTTOM
		[51] = { critical_damage = 2, args = { 240 } },                      --ELEVATOR_L
		[52] = { critical_damage = 2, args = { 238 } },                      --ELEVATOR_R
		[53] = { critical_damage = 2, args = { 248 } },                      --RUDDER_L
		[54] = { critical_damage = 2, args = { 247 } },                      --RUDDER_R
		[56] = { critical_damage = 2, args = { 158 } },                      --TAIL_LEFT_SIDE
		[57] = { critical_damage = 2, args = { 157 } },                      --TAIL_RIGHT_SIDE
		[59] = { critical_damage = 3, args = { 148 } },                      --NOSE_BOTTOM
		[61] = { critical_damage = 2, args = { 147 } },                      --FUEL_TANK_F
		[82] = { critical_damage = 2, args = { 152 } },                      --FUSELAGE_BOTTOM
	},

	lights_data = {
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
				typename = "collection",           -- nav_lights_default
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
			[WOLALIGHT_BEACONS] = {}, -- STROBE / ANTI-COLLISION
			[WOLALIGHT_CABIN_NIGHT] = {}, --
		}
	},
}
add_aircraft(AMXFM)
