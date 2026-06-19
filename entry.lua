local self_ID = "Embraer AMX"

declare_plugin(self_ID,
	{
		image     	 = "FC3.bmp",
		installed         = true,
		dirName           = current_mod_path,
		version           = "0.1.0",
		state             = "installed",
		info              = _("The AMX International (designated A-1 in Brazil) is a subsonic, single-engine tactical strike and reconnaissance aircraft. It is used primarily for close air support, low-level precision strikes, and battlefield reconnaissance in high-threat environments. The AMX is known for its excellent low-altitude survivability, long combat radius, robust airframe, and advanced electronic countermeasures, making it highly effective for deep penetration missions. It can operate efficiently from short, damaged, or semi-prepared runways and has been heavily utilized by the Brazilian and Italian air forces. Unlike supersonic multirole fighters, the AMX is a dedicated ground-attack platform, armed with twin internal 30mm cannons on the Embraer version and capable of carrying a wide array of precision and unguided munitions."),
		encyclopedia_path = current_mod_path..'/Encyclopedia',
		displayName       = _("AMX"),
		shortName         = "AMX",
		fileMenuName      = _("AMX"),
		update_id         = "AMX",
		developerName     = _("BR"),

		binaries          = {},

		Skins             =
		{
			{
				name = "AMX",
				dir  = "Theme"
			},
		},
		Missions          =
		{
			{
				name = _("AMX"),
				dir  = "Missions",
			},
		},

		LogBook           =
		{
			{
				name = _("AMX"),
				type = "AMX",
			},
		},
		
		InputProfiles     =
		{
			["AMX"] = current_mod_path .. '/Input/AMX',
		},

		Options           =
		{
			{
				name   = _("AMX"),
				nameId = "AMX",
				dir    = "Options",
				CLSID  = "{AMX options}"
			},
		},




	})

---------------------------------------------------------------------------------------
-- mounting shapes and textures libraries

mount_vfs_sound_path(current_mod_path.."/Sounds")
mount_vfs_texture_path(current_mod_path.."/Theme")
mount_vfs_model_path(current_mod_path.."/Shapes")
mount_vfs_texture_path(current_mod_path.."/Textures")
mount_vfs_liveries_path(current_mod_path.."/Liveries")
mount_vfs_texture_path(current_mod_path .. "/Textures/Cockpit")

---------------------------------------------------------------------------------------

dofile(current_mod_path .. "/Entry/Views.lua")
dofile(current_mod_path .. '/Entry/loadout.lua')
dofile(current_mod_path .. '/Entry/weapons.lua')
dofile(current_mod_path .. '/Entry/AMX.lua')
dofile(current_mod_path .. '/Entry/AMXT.lua')

make_view_settings('AMX', ViewSettings, SnapViews)
make_flyable('AMX', current_mod_path .. '/Cockpit/Scripts/', nil, current_mod_path .. '/Entry/comm.lua')

make_view_settings('AMXT', ViewSettings, SnapViews)
make_flyable('AMXT', current_mod_path .. '/Cockpit/Scripts/', nil, current_mod_path .. '/Entry/comm.lua')

plugin_done()
