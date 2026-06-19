AIM9_RACK_AMX = {
  "{AIM-9B}",
  "{AIM-9J}",
  "{AIM-9P5}",
  "{AIM-9P3}",
  "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}",
  "CATM-9M",
}

BOMBAS_LEVES_AMX = {
  "{MK-81SE}",
  "{Mk82AIR}",
  "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}", -- Mk-20 Rockeye
  "{90321C8E-7ED1-47D4-A160-E074D5ABD902}", -- Mk-81
  "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}", -- Mk-82
  "{Mk82SNAKEYE}",                          -- MK82SE
  "{00F5DAC4-0466-4122-998F-B1A298E34113}", -- M-117
  "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}", -- GBU12
  "{5335D97A-35A5-4643-9D9B-026C75961E52}", -- CBU-97
  "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}", -- ILLUMINATION POD --
  "{BDU-33}",
  "{BDU-50LD}",
  "{BDU-50HD}",
  "{GBU-31}",
  "{GBU-31V3B}",
  "{GBU-38}",
  "{CBU-87}",
}

ROCKET_LEVES_AMX = {

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

RACK_LIMPO_AMX = {
  { CLSID = "<CLEAN>", arg_value = 1 },
}

TANQUE_LATERAL_AMX = {

}

SMOKE_POD_AMX = {

}

function montarRackList(...)
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
