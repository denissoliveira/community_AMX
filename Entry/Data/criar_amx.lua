dofile(current_mod_path .. '/Entry/Data/AMX_versions.lua')

function criarAMX(name, displayName, livery, gunMount, empty, nominal, fuel_max, crewMembers, pylonsAMX, sensorsAMX, sFMData, passivCount)
	local AMXFM = {
		Name                                     = name,
		DisplayName                              = displayName,
		livery_entry                             = livery,

		Picture                                  = AMX_all_versions.Picture,
		Rate                                     = AMX_all_versions.Rate,
		Shape                                    = AMX_all_versions.Shape,
		WorldID                                  = AMX_all_versions.WorldID,

		shape_table_data                         =
		{
			{
				file        = AMX_all_versions.shape_table_data[1].file,
				life        = AMX_all_versions.shape_table_data[1].life,
				vis         = AMX_all_versions.shape_table_data[1].vis,
				desrt       = AMX_all_versions.shape_table_data[1].desrt,
				fire        = AMX_all_versions.shape_table_data[1].fire,
				username    = AMX_all_versions.shape_table_data[1].username,
				index       = AMX_all_versions.shape_table_data[1].index,
				classname   = AMX_all_versions.shape_table_data[1].classname,
				positioning = AMX_all_versions.shape_table_data[1].positioning,
			},
		},

		Guns                                     = gunMount,

		net_animation                            = AMX_all_versions.net_animation,

		mapclasskey                              = AMX_all_versions.mapclasskey,
		attribute                                = AMX_all_versions.attribute,
		Categories                               = AMX_all_versions.Categories,

		M_empty                                  = empty, -- kg (Peso vazio aproximado do AMX A-1A)
		M_nominal                                = nominal, -- kg (Vazio + Combustível Interno Máximo: 6730 + 2790)
		M_fuel_max                               = fuel_max, -- kg (Capacidade máxima de combustível interno)

		M_max                                    = AMX_all_versions.M_max,
		H_max                                    = AMX_all_versions.H_max,
		average_fuel_consumption                 = AMX_all_versions.average_fuel_consumption,
		CAS_min                                  = AMX_all_versions.CAS_min,
		V_opt                                    = AMX_all_versions.V_opt,
		V_take_off                               = AMX_all_versions.V_take_off,
		V_land                                   = AMX_all_versions.V_land,
		has_afteburner                           = AMX_all_versions.has_afteburner,
		has_speedbrake                           = AMX_all_versions.has_speedbrake,
		radar_can_see_ground                     = AMX_all_versions.radar_can_see_ground,

		nose_gear_pos                            = AMX_all_versions.nose_gear_pos,
		nose_gear_amortizer_direct_stroke        = AMX_all_versions.nose_gear_amortizer_direct_stroke,
		nose_gear_amortizer_reversal_stroke      = AMX_all_versions.nose_gear_amortizer_reversal_stroke,
		nose_gear_amortizer_normal_weight_stroke = AMX_all_versions.nose_gear_amortizer_normal_weight_stroke,
		nose_gear_wheel_diameter                 = AMX_all_versions.nose_gear_wheel_diameter,

		main_gear_pos                            = AMX_all_versions.main_gear_pos,
		main_gear_amortizer_direct_stroke        = AMX_all_versions.main_gear_amortizer_direct_stroke,
		main_gear_amortizer_reversal_stroke      = AMX_all_versions.main_gear_amortizer_reversal_stroke,
		main_gear_amortizer_normal_weight_stroke = AMX_all_versions.main_gear_amortizer_normal_weight_stroke,
		main_gear_wheel_diameter                 = AMX_all_versions.main_gear_wheel_diameter,

		AOA_take_off                             = AMX_all_versions.AOA_take_off,
		stores_number                            = AMX_all_versions.stores_number,
		bank_angle_max                           = AMX_all_versions.bank_angle_max,
		Ny_min                                   = AMX_all_versions.Ny_min,
		Ny_max                                   = AMX_all_versions.Ny_max,
		V_max_sea_level                          = AMX_all_versions.V_max_sea_level,
		V_max_h                                  = AMX_all_versions.V_max_h,
		wing_area                                = AMX_all_versions.wing_area,
		thrust_sum_max                           = AMX_all_versions.thrust_sum_max,
		thrust_sum_ab                            = AMX_all_versions.thrust_sum_ab,
		Vy_max                                   = AMX_all_versions.Vy_max,
		flaps_maneuver                           = AMX_all_versions.flaps_maneuver,
		Mach_max                                 = AMX_all_versions.Mach_max,
		range                                    = AMX_all_versions.range,
		RCS                                      = AMX_all_versions.RCS,
		Ny_max_e                                 = AMX_all_versions.Ny_max_e,
		detection_range_max                      = AMX_all_versions.detection_range_max,
		IR_emission_coeff                        = AMX_all_versions.IR_emission_coeff,
		IR_emission_coeff_ab                     = AMX_all_versions.IR_emission_coeff_ab,
		tand_gear_max                            = AMX_all_versions.tand_gear_max,
		tanker_type                              = AMX_all_versions.tanker_type,
		wing_span                                = AMX_all_versions.wing_span,
		wing_type                                = AMX_all_versions.wing_type,
		length                                   = AMX_all_versions.length,
		height                                   = AMX_all_versions.height,
		crew_size                                = AMX_all_versions.crew_size,
		engines_count                            = AMX_all_versions.engines_count,
		wing_tip_pos                             = AMX_all_versions.wing_tip_pos,

		EPLRS                                    = AMX_all_versions.EPLRS,
		TACAN_AA                                 = AMX_all_versions.TACAN_AA,

		mechanimations                           = AMX_all_versions.mechanimations,

		engines_nozzles                          = AMX_all_versions.engines_nozzles, -- end of engines_nozzles

		crew_members                             = crewMembers,

		Pylons                                   = pylonsAMX,

		brakeshute_name                          = AMX_all_versions.brakeshute_name,

		is_tanker                                = AMX_all_versions.is_tanker,

		air_refuel_receptacle_pos                = { 5.382, 0.771, 0.756 },

		fires_pos                                = AMX_all_versions.fires_pos,

		chaff_flare_dispenser                    = AMX_all_versions.chaff_flare_dispenser,

		passivCounterm                           = passivCount,

		CanopyGeometry                           = AMX_all_versions.CanopyGeometry,

		Sensors                                  = sensorsAMX,

		Failures                                 = AMX_all_versions.Failures,

		HumanRadio                               = AMX_all_versions.HumanRadio,

		Tasks                                    = AMX_all_versions.Tasks,

		DefaultTask                              = AMX_all_versions.DefaultTask,

		SFM_Data                                 = sFMData,

		Damage                                   = AMX_all_versions.Damage,

		lights_data                              = AMX_all_versions.lights_data,
	}

	add_aircraft(AMXFM)
end