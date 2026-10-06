dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.common_script_path.."tools.lua")
dofile(LockOn_Options.script_path.."materials.lua")

layoutGeometry = {}

MainPanel = {"ccMainPanel",LockOn_Options.script_path.."mainpanel_init.lua",
{

},

}
creators                          = {}
creators[devices.ELECTRIC_SYSTEM] = {"avSimpleElectricSystem",LockOn_Options.script_path.."Systems/electric_system.lua"}
creators[devices.ENGINE]          = {"avLuaDevice"           ,LockOn_Options.script_path.."Systems/engine.lua"}
creators[devices.FUEL]            = {"avLuaDevice"           ,LockOn_Options.script_path.."Systems/fuel.lua"}
creators[devices.EXTLIGHTS]       = {"avLuaDevice"           ,LockOn_Options.script_path.."Systems/extlights.lua"}
creators[devices.INTLIGHTS]       = {"avLuaDevice"           ,LockOn_Options.script_path.."Systems/intlights.lua"}
creators[devices.ICEPROT]         = {"avLuaDevice"           ,LockOn_Options.script_path.."Systems/iceprot.lua"}
creators[devices.ENVIRON]         = {"avLuaDevice"           ,LockOn_Options.script_path.."Systems/environ.lua"}
creators[devices.GEAR]            = {"avLuaDevice"           ,LockOn_Options.script_path.."Systems/gear_old.lua"}
creators[devices.BRAKES]          = {"avLuaDevice"           ,LockOn_Options.script_path.."Systems/brakes.lua"}
creators[devices.CMFD]            = {"avLuaDevice"           ,LockOn_Options.script_path.."Systems/cmfds.lua"}--,{devices.ALARM, devices.WEAPON_SYSTEM}}
creators[devices.DISPLAYCOMPUTER] = {"avLuaDevice"          ,LockOn_Options.script_path.."Displays/DisplayElectronicsUnit.lua"}
creators[devices.CLOCK]           = {"avLuaDevice"            ,LockOn_Options.script_path.."Systems/clock.lua"}
creators[devices.AVIONICS]        = {"avLuaDevice"           ,LockOn_Options.script_path.."Systems/avionics.lua"}
creators[devices.CANOPY]          = {"avLuaDevice"           ,LockOn_Options.script_path.."Systems/canopy.lua"}
creators[devices.FLAPS]           = {"avLuaDevice"           ,LockOn_Options.script_path.."Systems/flaps.lua"}
creators[devices.EXTANIM]         = {"avLuaDevice"           ,LockOn_Options.script_path.."Systems/externalanimations.lua"}
creators[devices.WEAPON_SYSTEM]   = {"avSimpleWeaponSystem"           ,LockOn_Options.script_path.."Systems/weapons.lua"}
creators[devices.TACAN]           =   {"avLuaDevice"			,LockOn_Options.script_path.."Nav/TACAN.lua"}
creators[devices.VOR_ILS]         = {"avLuaDevice"			,LockOn_Options.script_path.."Nav/VOR_ILS.lua"}
creators[devices.NAV]             = {"avLuaDevice"            ,LockOn_Options.script_path.."Nav/Nav.lua"}
creators[devices.ALARM]           = {"avLuaDevice"           ,LockOn_Options.script_path.."Systems/alarm.lua"}--, {devices.CMFD}}
creators[devices.RADIO1]    	= {"avUHF_ARC_164"          ,LockOn_Options.script_path.."Systems/Radio1.lua", {devices.INTERCOM} }
creators[devices.RADIO2]    	= {"avUHF_ARC_164"          ,LockOn_Options.script_path.."Systems/Radio2.lua"}
creators[devices.INTERCOM]      = {"avIntercom"             ,LockOn_Options.script_path.."Systems/Intercom.lua", {devices.RADIO1} }
creators[devices.COMM1]         = {"avLuaDevice"            ,LockOn_Options.script_path.."Systems/COMM1Controls.lua"}
creators[devices.COMM2]         = {"avLuaDevice"            ,LockOn_Options.script_path.."Systems/COMM2Controls.lua"}
creators[devices.GUNSIGHT]        = {"avLuaDevice"           ,LockOn_Options.script_path.."Systems/gunsight.lua"}

indicators = {}
--indicators[#indicators + 1] = {"ccIndicator", LockOn_Options.script_path.."HUD2/Indicator/hud_init.lua",nil,{{"PNT-HUD-CENTER","PNT-HUD-DOWN","PNT-HUD-RIGHT"}}}


---------------------------------------------
dofile(LockOn_Options.common_script_path.."KNEEBOARD/declare_kneeboard_device.lua")
---------------------------------------------
