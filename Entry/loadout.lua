declare_loadout({
	category		 = CAT_FUEL_TANKS,
	CLSID			 = "{amx_580l}",
	attribute		 =  {wsType_Air,wsType_Free_Fall,wsType_FuelTank,WSTYPE_PLACEHOLDER},

	Picture			 = "ptb2.png",
	displayName		 = _("580 lit external tank"),
	Weight_Empty	 = 40.8,
	Weight			 = 40.8 +  417,
	Cx_pil			 = 0.002,
	shape_table_data = 
	{
		{
			name 	= "amx_580l",
			file	= "amx_580l",
			life	= 1;
			fire	= { 0, 1};
			username	= "amx_580l";
			index	= WSTYPE_PLACEHOLDER;
		},
	},
	Elements	= 
	{
		{
			ShapeName	= "amx_580l",
		}, 
	}, 
})

declare_loadout({
	category		 = CAT_FUEL_TANKS,
	CLSID			 = "{amx_1100l}",
	attribute		 =  {wsType_Air,wsType_Free_Fall,wsType_FuelTank,WSTYPE_PLACEHOLDER},

	Picture			 = "ptb2.png",
	displayName		 = _("1100 lit external tank"),
	Weight_Empty	 = 40.8,
	Weight			 = 40.8 +  791.7,
	Cx_pil			 = 0.002,
	shape_table_data = 
	{
		{
			name 	= "amx_1100l",
			file	= "amx_1100l",
			life	= 1;
			fire	= { 0, 1};
			username	= "amx_1100l";
			index	= WSTYPE_PLACEHOLDER;
		},
	},
	Elements	= 
	{
		{
			ShapeName	= "amx_1100l",
		}, 
	}, 
})




