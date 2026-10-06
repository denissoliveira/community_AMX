local name         = "AMX"
local displayName  = _('AMX A-1A')
local liveryEntry  = "AMX"
local gunMount     = amx_gun_mount_fm
local empty        = 6730                           -- kg (Peso vazio aproximado do AMX A-1A)
local nominal      = 9520                           -- kg (Vazio + Combustível Interno Máximo: 6730 + 2790)
local fuel_max     = 2790                           -- kg (Capacidade máxima de combustível interno)
local crewMembers  = crew_members_um_amx
local pylonsAMX    = amx_pilones_fm
local sensorsAMX   = Sensors_AMX
local sFMData      = AMX_SFM
local passivCount  = passivCounterm
---  AMX A ------------------------------------------------
criarAMX(name, displayName, liveryEntry, gunMount, empty, nominal, fuel_max, crewMembers, pylonsAMX, sensorsAMX, sFMData,
	passivCount)

--declare_service_life("AMXA", "Brazil", 1981, 2030)


local nameM         = "AMX_M"
local displayNameM  = _('AMX A-1AM')
local liveryEntryM  = "AMX_M"

-- Criar específico para o M (Mike)
local pylonsAMXM    = amx_pilones_fm
local sensorsAMXM   = Sensors_AMX
local passivCountM  = passivCounterm
---  AMX M ------------------------------------------------
criarAMX(nameM, displayNameM, liveryEntryM, gunMount, empty, nominal, fuel_max, crewMembers, pylonsAMXM, sensorsAMXM,
	sFMData, passivCountM)

--declare_service_life("AMXM", "Brazil", 1981, 2030)

local nameB         = "AMXT"
local displayNameB  = _('AMX A-1B')
local liveryEntryB  = "AMXT"
local emptyB        = 7200                           -- kg (Peso vazio aproximado do AMX A-1A)
local nominalB      = 9750                           -- kg (Vazio + Combustível Interno Máximo: 6730 + 2790)
local fuel_maxB     = 2550                           -- kg (Capacidade máxima de combustível interno)
local crewMembersB  = crew_members_dois_amx
local sFMDataB       = AMX_T_SFM
---  AMX B ------------------------------------------------
criarAMX(nameB, displayNameB, liveryEntryB, gunMount, emptyB, nominalB, fuel_maxB, crewMembersB, pylonsAMX, sensorsAMX,
	sFMDataB, passivCount)

--declare_service_life("AMXB", "Brazil", 1981, 2030)

local nameBM         = "AMXT_M"
local displayNameBM  = _('AMX A-1BM')
local liveryEntryBM  = "AMXT_M"
---  AMX BM ------------------------------------------------
criarAMX(nameBM, displayNameBM, liveryEntryBM, gunMount, emptyB, nominalB, fuel_maxB, crewMembersB, pylonsAMX, sensorsAMXM,
	sFMDataB, passivCount)

--declare_service_life("AMXB", "Brazil", 1981, 2030)