
local BL755                   = {
  name = _("BL-755 - 147 Frag/Pen bomblets"),
  mass = 278,
  wsType = { wsType_Weapon, wsType_Bomb, wsType_Bomb_Cluster, BL_755 },
  Cx = 0.000413,
  picture = "bl755.png",
  settings = Get_Fuze_GUISettings_Preset("MDRN_CC_UK_BL755")
}

local bru_33_2x_bombsAMXBL755 = {
  category       = CAT_BOMBS,
  CLSID          = "{BRU33_2X_BL755}",
  Picture        = BL755.picture,
  wsTypeOfWeapon = BL755.wsType,
  displayName    = _("BRU-33 with 2 x ") .. BL755.name,
  attribute      = { wsType_Weapon, wsType_Bomb, wsType_Container, WSTYPE_PLACEHOLDER },
  Cx_pil         = 0.00244140625 + BL755.Cx,  -- TODO
  Count          = 2,
  Weight         = 87.5 + 2 * BL755.mass, -- TODO
  Elements       = { { ShapeName = "BRU_33A", IsAdapter = true },
    { ShapeName = "BL755",   connector_name = "Point02" },
    { ShapeName = "BL755",   connector_name = "Point01" }
  }, -- end of Elements
  settings       = BL755.settings
}
declare_loadout(bru_33_2x_bombsAMXBL755)


local id_MK81      = "{90321C8E-7ED1-47D4-A160-E074D5ABD902}"
local id_MK81S     = "{MK-81SE}"
local id_MK82      = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}"
local id_MK82S     = "{Mk82SNAKEYE}"
local id_MK82A     = "{Mk82AIR}"
local id_MK83      = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}"
local id_AIM_9L    = "{AIM-9L}"
local id_AIM_9M    = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}"
local id_GBU12     = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"
local id_GBU16     = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}"
local id_GBU10     = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"

local id_BL755     = "{08164777-5E9C-4B08-B48E-5AA7AFB246E2}" -- BL755 cluster bomb
local id_MK84LD    = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}"
local id_MK84AR    = "{Mk_84AIR_GP}"

--BRU_33A

AIM9_RACK_AMX      = {
  id_AIM_9L,
  id_AIM_9M,
  "{AIM-9J}",
  "{AIM-9P5}",
  "{AIM-9P3}",
  "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
}

-- mk82 , mk82 e mk83 e BL-755

BOMBAS_2x_AMX      = {
  "{BRU33_2X_MK-82}",         -- {BRU33_2X_MK-82}
  "{BRU33_2X_MK-82_Snakeye}", -- {BRU33_2X_MK-82_Snakeye}
  "{BRU33_2X_MK-82Y}",        -- {BRU33_2X_MK-82Y}
  "{BRU33_2X_BDU-45}",        -- {BRU33_2X_BDU-45}
  "{BRU33_2X_BDU-45B}",       -- {BRU33_2X_BDU-45B}
}

BOMBAS_center_AMX  = {
  "{BRU33_2X_MK-82}",         -- {BRU33_2X_MK-82}
  "{BRU33_2X_MK-82_Snakeye}", -- {BRU33_2X_MK-82_Snakeye}
  "{BRU33_2X_MK-82Y}",        -- {BRU33_2X_MK-82Y}
  "{BRU33_2X_BL755}",
  "{BRU33_2X_BDU-45}",        -- {BRU33_2X_BDU-45}
  "{BRU33_2X_BDU-45B}",       -- {BRU33_2X_BDU-45B}
  "{BRU33_2X_MK-83}",         -- {BRU33_2X_MK-83}
  "{BRU33_2X_MK-83AIR}",      -- {BRU33_2X_MK-83}
  "{BRU33_2X_GBU-12}",        -- {BRU33_2X_GBU-12}
  --"{BRU33_2X_GBU-16}"         -- {BRU33_2X_GBU-16}
}

BOMBAS_AMX         = {
  id_MK84LD,
  id_MK84AR,
}

BOMBAS_LEVES_AMX   = {
  --id_MK81,
  --id_MK81S,
  id_MK82,
  id_MK82S,
  id_MK82A,
  id_MK83,
  id_BL755,
  id_GBU12,
  id_GBU16,
  id_GBU10,
  --"{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}", -- Mk-20 Rockeye
  --"{00F5DAC4-0466-4122-998F-B1A298E34113}", -- M-117
  --"{5335D97A-35A5-4643-9D9B-026C75961E52}", -- CBU-97
  --"{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}", -- ILLUMINATION POD --
  --"{BDU-33}",
  "{BDU_45}",
	"{BDU_45B}",

  "{GBU-31}",
  "{GBU-31V3B}",
  "{GBU-38}",
  --"{CBU-87}",
}

ROCKET_LEVES_AMX   = {

  "{FC85D2ED-501A-48ce-9863-49D468DDD5FC}", -- LAU-68 with Mk1
  "{174C6E6D-0C3D-42ff-BCB3-0853CB371F5C}", -- LAU-68 with Mk5
  "{65396399-9F5C-4ec3-A7D2-5A8F4C1D90C4}", -- LAU-68 with Mk61
  "{A021F29D-18AB-4d3e-985C-FC9C60E35E9E}", -- LAU-68 with Mk151
  "{4F977A2A-CD25-44df-90EF-164BFA2AE72F}", -- LAU-68 with Mk156
  "{1F7136CB-8120-4e77-B97B-945FF01FB67C}", -- LAU-68 with WTU1B
  "{647C5F26-BDD1-41e6-A371-8DE1E4CC0E94}", -- LAU-68 with M257
  "{0877B74B-5A00-4e61-BA8A-A56450BA9E27}", -- LAU-68 with M274
  "{9115A5AF-6D5C-4b6b-BEA9-31D48B5C6001}", -- LAU-68 with M278
  "{D22C2D63-E5C9-4247-94FB-5E8F3DE22B71}", -- LAU-131 with Mk1
  "{319293F2-392C-4617-8315-7C88C22AF7C4}", -- LAU-131 with Mk5
  "{1CA5E00B-D545-4ff9-9B53-5970E292F14D}", -- LAU-131 with Mk61
  "{69926055-0DA8-4530-9F2F-C86B157EA9F6}", -- LAU-131 with Mk151
  "{2AF2EC3F-9065-4de5-93E1-1739C9A71EF7}", -- LAU-131 with Mk156
  "{DDCE7D70-5313-4181-8977-F11018681662}", -- LAU-131 with WTU1B
  "{DAD45FE5-CFF0-4a2b-99D4-5D044D3BC22F}", -- LAU-131 with M257
  "{6D6D5C07-2A90-4a68-9A74-C5D0CFFB05D9}", -- LAU-131 with M274
  "{1FE353C6-5EB6-4d22-9CFD-6DB384EC7296}", -- LAU-131 with M278

  "LAU3_WP61",                              -- LAU-3 Hydra
  "LAU3_WP1B",                              -- LAU-3 Hydra
  "LAU3_HE5",                               -- LAU-3 Hydra
  "LAU3_WP156",                             -- LAU-3 Hydra
  "LAU3_HE151",                             -- LAU-3 Hydra

  "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}", -- LAU-61 - 19
}

RACK_LIMPO_AMX     = {
  { CLSID = "<CLEAN>", arg_value = 1 },
}

TANQUE_LATERAL_AMX = {
  "{amx_580l}"
}

TANQUE_INTERNO_AMX = {
  "{amx_1100l}"
}

SMOKE_POD_AMX      = {

}


local function montarRackList(...)
  local t = {}
  for _, lista in ipairs({ ... }) do
    -- se vier algo que não seja tabela, ignora
    if type(lista) == "table" then
      for _, item in ipairs(lista) do
        -- CASO 1: item é string → CLSID simples
        if type(item) == "string" then
          t[#t + 1] = { CLSID = item }

          -- CASO 2: item já é tabela → CLSID + args
        elseif type(item) == "table" then
          local entry = {}
          for k, v in pairs(item) do
            entry[k] = v
          end
          t[#t + 1] = entry
        end
      end
    end
  end

  return t
end

amx_pilones_fm =
{
  pylon(1, 0, 0, 0, 0,
    {
      DisplayName = "1",
      use_full_connector_position = true,
      connector = "Pylon1",
    },
    montarRackList(AIM9_RACK_AMX)
  ),
  pylon(2, 0, 0, 0, 0,
    {
      arg = 309,
      arg_value = 0.2,
      DisplayName = "2",
      use_full_connector_position = true,
      connector = "Pylon2",
    },
    montarRackList(ROCKET_LEVES_AMX, BOMBAS_LEVES_AMX, TANQUE_LATERAL_AMX)
  ),
  pylon(3, 0, 0, 0, 0,
    {
      arg = 310,
      arg_value = 0.2,
      DisplayName = "3",
      use_full_connector_position = true,
      connector = "Pylon3",
    },
    montarRackList(ROCKET_LEVES_AMX, BOMBAS_LEVES_AMX, BOMBAS_AMX, BOMBAS_2x_AMX, TANQUE_INTERNO_AMX)
  ),
  pylon(4, 0, 0, 0, 0,
    {
      arg = 311,
      arg_value = 0.2,
      DisplayName = "4",
      use_full_connector_position = true,
      connector = "Pylon4",
    },
    montarRackList(BOMBAS_center_AMX)
  ),
  pylon(5, 0, 0, 0, 0,
    {
      arg = 312,
      arg_value = 0.2,
      DisplayName = "5",
      use_full_connector_position = true,
      connector = "Pylon5",
    },
    montarRackList(ROCKET_LEVES_AMX, BOMBAS_LEVES_AMX, BOMBAS_AMX, BOMBAS_2x_AMX, TANQUE_INTERNO_AMX)
  ),
  pylon(6, 0, 0, 0, 0,
    {
      arg = 313,
      arg_value = 0.2,
      DisplayName = "6",
      use_full_connector_position = true,
      connector = "Pylon6",
    },
    montarRackList(ROCKET_LEVES_AMX, BOMBAS_LEVES_AMX, TANQUE_LATERAL_AMX)
  ),
  pylon(7, 0, 0, 0, 0,
    {
      DisplayName = "7",
      use_full_connector_position = true,
      connector = "Pylon8",
    },
    montarRackList(AIM9_RACK_AMX)
  ),

}
