ViewSettings = {
	Cockpit = {
		[1] = { -- player slot 1
			CockpitLocalPoint      = { 3.137, 0.787, 0.0 },
			limits_6DOF            = { x = { 0.030000, 0.400000 }, y = { -0.300000, 0.100000 }, z = { -0.300000, 0.300000 }, roll = 90.000000 }, --Bewegen = hinten vorne,oben unten,links rechts
			CameraViewAngleLimits  = { 10.000000, 140.000000 },
			CameraAngleRestriction = { false, 90.000000, 0.400000 },
			CameraAngleLimits      = {200,-90.000000,90.000000},--{ 190.000000, -75.000000, 115.000000 },
			EyePoint               = { 0.05000, 0.100000, 0.000000 }, --{0.050000,0.500000,0.000000},
			ShoulderSize           = 0.25,                                                                              -- bewegt K�rper, wenn Azimuth Wert mehr als 90 Grad
			Allow360rotation       = false,
		},
	}, -- Cockpit
	Chase = {
		LocalPoint    = { -10.0, 1.0, 3.0 },
		AnglesDefault = {180.000000,-8.000000},
	}, -- Chase
	Arcade = {
		LocalPoint    = { -21.500000, 6.618000, 0.000000 },
		AnglesDefault = { 0.000000, -8.000000 },
	}, -- Arcade
}

SnapViews = {
	[1] = {               -- player slot 1
		[1] = {           --LWin + Num0 : Snap View 0
			viewAngle       = 75.000000, --FOV
			hAngle          = -0.084951,
			vAngle          = -70.609207,
			x_trans         = 0.000000,
			y_trans         = 0.000000,
			z_trans         = 0.000000,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[2] = {           --LWin + Num1 : Snap View 1
			viewAngle       = 60.519642, --FOV
			hAngle          = 89.984314,
			vAngle          = -75.379463,
			x_trans         = 0.009779,
			y_trans         = -0.198956,
			z_trans         = -0.217384,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[3] = {           --LWin + Num2 : Snap View 2
			viewAngle       = 56.782242, --FOV
			hAngle          = 0.000000,
			vAngle          = -31.555851,
			x_trans         = 0.000000,
			y_trans         = 0.000000,
			z_trans         = 0.000000,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[4] = {           --LWin + Num3 : Snap View 3
			viewAngle       = 43.698044, --FOV
			hAngle          = -90.796730,
			vAngle          = -75.222610,
			x_trans         = 0.003476,
			y_trans         = 0.000000,
			z_trans         = 0.152786,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[5] = {           --LWin + Num4 : Snap View 4
			viewAngle       = 56.377842, --FOV
			hAngle          = -0.508554,
			vAngle          = -68.900154,
			x_trans         = 0.201303,
			y_trans         = -0.194990,
			z_trans         = -0.218519,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[6] = {           --LWin + Num5 : Snap View 5
			viewAngle       = 98.104240, --FOV
			hAngle          = 0.000000,
			vAngle          = -11.589723,
			x_trans         = 0.297823,
			y_trans         = -0.018447,
			z_trans         = 0.000000,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[7] = {           --LWin + Num6 : Snap View 6
			viewAngle       = 56.377842, --FOV
			hAngle          = -1.645724,
			vAngle          = -85.314430,
			x_trans         = 0.326061,
			y_trans         = -0.196865,
			z_trans         = 0.219831,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[8] = {           --LWin + Num7 : Snap View 7
			viewAngle       = 92.431244, --FOV
			hAngle          = 31.181053,
			vAngle          = -10.863523,
			x_trans         = 0.148563,
			y_trans         = 0.009493,
			z_trans         = -0.219403,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[9] = {           --LWin + Num8 : Snap View 8
			viewAngle       = 92.431244, --FOV
			hAngle          = 0.000000,
			vAngle          = -4.470110,
			x_trans         = 0.223319,
			y_trans         = 0.137527,
			z_trans         = 0.000000,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[10] = {          --LWin + Num9 : Snap View 9
			viewAngle       = 98.104240, --FOV
			hAngle          = -29.814087,
			vAngle          = -10.236363,
			x_trans         = 0.176282,
			y_trans         = 0.000000,
			z_trans         = 0.182737,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[11] = {          --look at left  mirror
			viewAngle       = 70.000000, --FOV
			hAngle          = 20.000000,
			vAngle          = 8.000000,
			x_trans         = 0.360000,
			y_trans         = -0.041337,
			z_trans         = 0.000000,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[12] = {          --look at right mirror
			viewAngle       = 70.000000, --FOV
			hAngle          = -20.000000,
			vAngle          = 8.000000,
			x_trans         = 0.360000,
			y_trans         = -0.041337,
			z_trans         = 0.000000,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[13] = {         --default view
			viewAngle       = 70.00000, --FOV
			hAngle          = 0.000000,
			vAngle          = -12.0000,
			x_trans         = 0.000000,
			y_trans         = 0.000000,
			z_trans         = 0.000000,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[14] = {          --default view - VR
			viewAngle       = 75.000000, --FOV
			hAngle          = 0.000000,
			vAngle          = -23.000000,
			x_trans         = 0.100000,
			y_trans         = 0.020000,
			z_trans         = 0.000000,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
	},
	[2] = {              -- player slot 2
		[1] = {          --LWin + Num0 : Snap View 0
			viewAngle       = 75.00000, --FOV
			hAngle          = 0.000000,
			vAngle          = -68.481903,
			x_trans         = 0.000000,
			y_trans         = 0.000000,
			z_trans         = 0.000000,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[2] = {           --LWin + Num1 : Snap View 1
			viewAngle       = 60.914890, --FOV
			hAngle          = 89.520630,
			vAngle          = -72.812744,
			x_trans         = 0.203137,
			y_trans         = -0.184975,
			z_trans         = -0.171450,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[3] = {           --LWin + Num2 : Snap View 2
			viewAngle       = 59.610641, --FOV
			hAngle          = 0.000000,
			vAngle          = -27.577431,
			x_trans         = 0.000000,
			y_trans         = 0.000000,
			z_trans         = 0.000000,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[4] = {           --LWin + Num3 : Snap View 3
			viewAngle       = 49.944344, --FOV
			hAngle          = -90.848442,
			vAngle          = -71.546082,
			x_trans         = 0.011113,
			y_trans         = 0.000000,
			z_trans         = 0.119901,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[5] = {           --LWin + Num4 : Snap View 4
			viewAngle       = 49.944344, --FOV
			hAngle          = 32.251411,
			vAngle          = -39.748909,
			x_trans         = 0.000000,
			y_trans         = 0.000000,
			z_trans         = 0.000000,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[6] = {           --LWin + Num5 : Snap View 5
			viewAngle       = 81.984344, --FOV
			hAngle          = 0.000000,
			vAngle          = -2.023877,
			x_trans         = 0.425691,
			y_trans         = -0.058813,
			z_trans         = -0.194175,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[7] = {           --LWin + Num6 : Snap View 6
			viewAngle       = 49.944344, --FOV
			hAngle          = -37.863270,
			vAngle          = -71.014191,
			x_trans         = 0.211161,
			y_trans         = -0.197580,
			z_trans         = 0.173190,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[8] = {           --LWin + Num7 : Snap View 7
			viewAngle       = 81.984344, --FOV
			hAngle          = 29.932779,
			vAngle          = -15.580999,
			x_trans         = 0.409914,
			y_trans         = -0.083458,
			z_trans         = -0.219007,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[9] = {           --LWin + Num8 : Snap View 8
			viewAngle       = 81.984344, --FOV
			hAngle          = 0.000000,
			vAngle          = -9.753518,
			x_trans         = 0.280340,
			y_trans         = 0.175597,
			z_trans         = 0.000000,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[10] = {          --LWin + Num9 : Snap View 9
			viewAngle       = 81.984344, --FOV
			hAngle          = -30.351748,
			vAngle          = -15.580999,
			x_trans         = 0.409914,
			y_trans         = -0.083458,
			z_trans         = 0.219940,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[11] = {          --look at left  mirror
			viewAngle       = 70.000000, --FOV
			hAngle          = 20.000000,
			vAngle          = 8.000000,
			x_trans         = 0.360000,
			y_trans         = -0.041337,
			z_trans         = 0.000000,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[12] = {          --look at right mirror
			viewAngle       = 70.000000, --FOV
			hAngle          = -20.000000,
			vAngle          = 8.000000,
			x_trans         = 0.360000,
			y_trans         = -0.041337,
			z_trans         = 0.000000,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[13] = {         --default view
			viewAngle       = 75.00000, --FOV
			hAngle          = 0.000000,
			vAngle          = -14.5000,
			x_trans         = -0.05000,
			y_trans         = 0.030000,
			z_trans         = 0.000000,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
		[14] = {          --default view - VR
			viewAngle       = 75.000000, --FOV
			hAngle          = 0.000000,
			vAngle          = -23.000000,
			x_trans         = 0.100000,
			y_trans         = 0.020000,
			z_trans         = 0.000000,
			rollAngle       = 0.000000,
			cockpit_version = 0,
		},
	},
}
