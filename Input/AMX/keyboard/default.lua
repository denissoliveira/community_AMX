local cockpit = folder.."../../../Cockpit/Scripts/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")

local res = external_profile("Config/Input/Aircrafts/base_keyboard_binding.lua")
--dofile(LockOn_Options.script_path.."Scripts/command_defs.lua")
join(res.keyCommands,{

-- Autopilot
{combos = {{key = 'A'}}, down = iCommandPlaneAutopilot, name = _('Autopilot'), category = _('Autopilot')},
{combos = {{key = 'H'}}, down = iCommandPlaneSAUHBarometric, name = _('Autopilot - Barometric Altitude Hold \'H\''), category = _('Autopilot')},
{combos = {{key = 'A', reformers = {'LAlt'}}}, down = iCommandPlaneAutopilotOverrideOn, up = iCommandPlaneAutopilotOverrideOff, name = _('Autopilot override'), category = _('Autopilot')},
{combos = {{key = '1', reformers = {'LAlt'}}}, down = iCommandPlaneStabTangBank, name = _('Autopilot - Attitude Hold'), category = _('Autopilot')},
{combos = {{key = '2', reformers = {'LAlt'}}}, down = iCommandPlaneStabHbarBank, name = _('Autopilot - Altitude And Roll Hold'), category = _('Autopilot')},
{combos = {{key = '3', reformers = {'LAlt'}}}, down = iCommandPlaneStabHorizon,	name = _('Autopilot - Transition To Level Flight Control'), category = _('Autopilot')},
{combos = {{key = '4', reformers = {'LAlt'}}}, down = iCommandPlaneStabHbar, name = _('Autopilot - Barometric Altitude Hold'), category = _('Autopilot')},
{combos = {{key = '5', reformers = {'LAlt'}}}, down = iCommandPlaneStabHrad, name = _('Autopilot - Radar Altitude Hold'), category = _('Autopilot')},
{combos = {{key = '6', reformers = {'LAlt'}}}, down = iCommandPlaneRouteAutopilot, name = _('Autopilot - \'Route following\''), category = _('Autopilot')},
{combos = {{key = '9', reformers = {'LAlt'}}}, down = iCommandPlaneStabCancel, name = _('Autopilot Disengage'), category = _('Autopilot')},

{combos = {{key = 'R', reformers = {'LAlt'}}}, down = iCommandPlaneJettisonFuelTanks, name = _('Jettison Fuel Tanks'), category = _('Systems')},

-- Systems F15
{combos = {{key = 'S'}}, down = iCommandPlane_HOTAS_NoseWheelSteeringButton, up = iCommandPlane_HOTAS_NoseWheelSteeringButton, name = _('Nose Gear Maneuvering Range'), category = _('Systems')},
{combos = {{key = 'Q', reformers = {'LAlt'}}}, down = iCommandPlane_HOTAS_NoseWheelSteeringButtonOff, up = iCommandPlane_HOTAS_NoseWheelSteeringButtonOff, name = _('Nose Wheel Steering'), category = _('Systems')},



{combos = {{key = '6'}}, down = iCommandPlaneModeFI0, name = _('(6) Longitudinal Missile Aiming Mode'), category = _('Modes')},
{combos = {{key = '7'}}, down = iCommandPlaneModeGround, name = _('(7) Air-To-Ground Mode'), category = _('Modes')},


-- Sensors
{combos = {{key = 'Enter'}}, down = iCommandPlaneChangeLock, up = iCommandPlaneChangeLockUp, name = _('Target Lock'), category = _('Sensors')},
{combos = {{key = 'Back'}}, down = iCommandSensorReset, name = _('Target Unlock'), category = _('Sensors')},

{combos = {{key = 'I', reformers = {'RCtrl'}}}, down = iCommandPlaneRadarCenter, name = _('Target Designator To Center'), category = _('Sensors')},

{combos = {{key = 'O', reformers = {'RShift'}}}, down = iCommandPlaneLaserRangerOnOff, name = _('Laser Ranger On/Off'), category = _('Sensors')},

{combos = {{key = ';'}}, pressed = iCommandPlaneRadarUp, up = iCommandPlaneRadarStop, name = _('Target Designator Up'), category = _('Sensors')},
{combos = {{key = '.'}}, pressed = iCommandPlaneRadarDown, up = iCommandPlaneRadarStop, name = _('Target Designator Down'), category = _('Sensors')},
{combos = {{key = ','}}, pressed = iCommandPlaneRadarLeft, up = iCommandPlaneRadarStop, name = _('Target Designator Left'), category = _('Sensors')},
{combos = {{key = '/'}}, pressed = iCommandPlaneRadarRight, up = iCommandPlaneRadarStop, name = _('Target Designator Right'), category = _('Sensors')},

{combos = {{key = ']', reformers = {'RAlt'}}}, down = iCommandDecreaseRadarScanArea, name = _('Target Size / Gunpod Elevation Decrease Stepping'), category = _('Sensors')},
{combos = {{key = '[', reformers = {'RAlt'}}}, down = iCommandIncreaseRadarScanArea, name = _('Target Size / Gunpod Elevation Increase Stepping'), category = _('Sensors')},
{combos = {{key = ']', reformers = {'RCtrl'}}}, pressed = iCommandPlaneIncreaseBase_Distance, up = iCommandPlaneStopBase_Distance, name = _('Target Size / Gunpod Elevation Increase'), category = _('Sensors')},
{combos = {{key = '[', reformers = {'RCtrl'}}}, pressed = iCommandPlaneDecreaseBase_Distance, up = iCommandPlaneStopBase_Distance, name = _('Target Size / Gunpod Elevation Decrease'), category = _('Sensors')},
{combos = {{key = 'R', reformers = {'RShift'}}}, down = iCommandChangeRWRMode, name = _('RWR/SPO Mode Select'), category = _('Sensors')},
{combos = {{key = ',', reformers = {'RAlt'}}}, down = iCommandPlaneThreatWarnSoundVolumeDown, name = _('RWR/SPO Sound Signals Volume Down'), category = _('Sensors')},
{combos = {{key = '.', reformers = {'RAlt'}}}, down = iCommandPlaneThreatWarnSoundVolumeUp, name = _('RWR/SPO Sound Signals Volume Up'), category = _('Sensors')},

-- Weapons                                                                        
{combos = {{key = 'V', reformers = {'LCtrl'}}}, down = iCommandPlaneSalvoOnOff, name = _('Salvo Mode'), category = _('Weapons')},


{combos = {{key = 'H', reformers = {'RShift'}}}, down = iCommandPlaneHUDFilterOnOff,value_down = -1.0, name = _('Raise ASP-17 Glass'), category = _('Weapons')},
{combos = {{key = 'H', reformers = {'RAlt'}}}, down = iCommandPlaneHUDFilterOnOff ,value_down =  1.0, name = _('Lower ASP-17 Glass'), category = _('Weapons')},



{combos = {{key = 'Space', reformers = {'LShift'}}}, down = CustomKeybinds.FireWeaponOn,	up = CustomKeybinds.FireWeaponOff, name = _('WEAPON RELEASE'), category = _('Weapons')},
--{combos = {{key = '1', reformers = {'LCtrl'}}}, down = Clickables.WING_30, name = _('Wing Sweep 30 degrees'), category = _('Systems')},
--{combos = {{key = '2', reformers = {'LCtrl'}}}, down = Clickables.WING_45, name = _('Wing Sweep 45 degrees'), category = _('Systems')},
--{combos = {{key = '3', reformers = {'LCtrl'}}}, down = Clickables.WING_60, name = _('Wing Sweep 60 degrees'), category = _('Systems')},



{combos = {{key = 'C', reformers = {'LShift'}}}, down = iCommandChangeGunRateOfFire, name = _('Cut Of Burst select'), category = _('Weapons')},
{combos = {{key = 'Space', reformers = {'LCtrl'}}}, down = iCommandChangeRippleQuantity, name = _('Ripple Quantity Select/SPPU select'), category = _('Weapons')},
{combos = {{key = 'V'}}, down = iCommandChangeRippleInterval, name = _('Ripple Interval Increase'), category = _('Weapons')},
{combos = {{key = 'V', reformers = {'LShift'}}}, down = iCommandChangeRippleIntervalDown, name = _('Ripple Interval Decrease'), category = _('Weapons')},

})
return res
