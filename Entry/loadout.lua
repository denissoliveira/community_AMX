declare_loadout({
	category		 = CAT_FUEL_TANKS,
	CLSID			 = "{AT27_TANK}",
	attribute		 =  {wsType_Air,wsType_Free_Fall,wsType_FuelTank,WSTYPE_PLACEHOLDER},

	Picture			 = "ptb2.png",
	displayName		 = _("70 Imp gal (320 lit) external tank"),
	Weight_Empty	 = 40.8,
	Weight			 = 40.8 +  230.3,
	Cx_pil			 = 0.002,
	shape_table_data = 
	{
		{
			name 	= "AT27_TANK",
			file	= "AT27_TANK",
			life	= 1;
			fire	= { 0, 1};
			username	= "AT27_TANK";
			index	= WSTYPE_PLACEHOLDER;
		},
	},
	Elements	= 
	{
		{
			ShapeName	= "AT27_TANK",
		}, 
	}, 
})



