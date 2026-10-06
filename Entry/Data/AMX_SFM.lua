-- =====================================================================
--  SFM_Data - Embraer / Alenia AMX (A-1)
--  Motor: Rolls-Royce Spey Mk 807 (49.1 kN estático, sem AB)
-- =====================================================================

AMX_SFM = {
    aerodynamics = -- Cx = Cx_0 + Cy^2*B + Cy^4*B4
    {
        Cy0         =   0,       -- zero AoA lift coefficient
        Mzalfa      =   4.8,     -- coefficients for pitch agility
        Mzalfadt    =   0.7,     -- pitch damping
        kjx         =   3.80,    -- roll moment coefficient
        kjz         =   0.00115, -- pitch moment coefficient
        Czbe        =  -0.014,   -- along Z axis, affects yaw
        cx_gear     =   0.085,   -- drag coefficient, gear
        cx_flap     =   0.065,   -- drag coefficient, full flaps
        cy_flap     =   0.38,    -- Ajustado: valor seguro para a engine do SFM
        cx_brk      =   0.10,    -- drag coefficient, airbrakes

        table_data =
        {   --  M       Cx0         Cya         B           B4          Omxmax      Aldop       Cymax
            [1]  = {0.000,  0.0250,     0.075,      0.0450,     0.150,      3.50,       24.0,       1.300},
            [2]  = {0.200,  0.0250,     0.075,      0.0450,     0.150,      3.50,       24.0,       1.300},
            [3]  = {0.400,  0.0260,     0.078,      0.0480,     0.160,      3.50,       23.0,       1.350},
            [4]  = {0.600,  0.0280,     0.082,      0.0520,     0.180,      3.50,       22.0,       1.400},
            [5]  = {0.750,  0.0310,     0.090,      0.0550,     0.190,      3.20,       20.0,       1.380},
            -- Divergência de arrasto transônica
            [6]  = {0.800,  0.0350,     0.095,      0.0600,     0.200,      3.00,       18.0,       1.350},
            [7]  = {0.850,  0.0500,     0.100,      0.0700,     0.250,      2.80,       16.0,       1.300},
            [8]  = {0.900,  0.0850,     0.090,      0.1000,     0.350,      2.50,       14.0,       1.200},
            [9]  = {0.950,  0.1500,     0.080,      0.1500,     0.400,      2.00,       12.0,       1.100},
            -- Supersônico
            [10] = {1.000,  0.2800,     0.065,      0.2000,     0.500,      1.50,       10.0,       1.000},
            [11] = {1.050,  0.3500,     0.055,      0.2500,     0.600,      1.00,       10.0,       0.900},
            [12] = {1.100,  0.4500,     0.050,      0.3000,     0.700,      0.80,        9.0,       0.850},
            [13] = {1.200,  0.6000,     0.045,      0.4000,     0.800,      0.50,        8.0,       0.800},
            [14] = {1.500,  0.9000,     0.040,      0.8000,     1.500,      0.10,        5.0,       0.500},
        }, -- end of table_data
    }, -- end of aerodynamics

    -- engine data (Rolls-Royce Spey RB.168 Mk 807 - Non-afterburning)

    engine =
    {
        Nmg     =   60,    -- RPM at idle
        MinRUD  =   0,     -- Min throttle
        MaxRUD  =   1,     -- Max throttle
        MaksRUD =   1,     -- Military power state (100% manete)
        ForsRUD =   2,     -- Corrigido: Desativa engate de Pós-Combustão
        typeng  =   0,     -- Turbojet/Turbofan
        hMaxEng =   13,    -- Max altitude in km
        dcx_eng =   0.0124,-- Engine drag coefficient
        cemax   =   0.65,  -- SFC
        cefor   =   0.65,  -- SFC
        dpdh_m  =   1800,  -- Altitude thrust reduction coef
        dpdh_f  =   1800,

        table_data =
        {   --  M       Pmax        Pfor
            [1]  = {0.00,   49100,      49100},
            [2]  = {0.20,   47500,      47500},
            [3]  = {0.30,   46000,      46000},
            [4]  = {0.40,   44500,      44500},
            [5]  = {0.50,   42000,      42000},
            [6]  = {0.60,   39500,      39500},
            [7]  = {0.70,   37000,      37000},
            [8]  = {0.80,   35000,      35000},
            [9]  = {0.90,   32000,      32000},
            [10] = {1.00,   25000,      25000},
            [11] = {1.10,   15000,      15000},
            [12] = {1.20,   10000,      10000},
            [13] = {1.50,    5000,       5000},
            [14] = {3.90,    1000,       1000},
        }, -- end of table_data
    }, -- end of engine
}

-- =====================================================================
--  SFM_Data - Embraer / Alenia AMX-T (A-1B Biplace)
--  Motor: Rolls-Royce Spey Mk 807 (49.1 kN estático, sem AB)
-- =====================================================================

AMX_T_SFM =
{
    aerodynamics = -- Cx = Cx_0 + Cy^2*B + Cy^4*B4
    {
        Cy0         =   0,       -- zero AoA lift coefficient
        Mzalfa      =   4.3,     -- Pitch agility
        Mzalfadt    =   0.8,     -- Pitch damping
        kjx         =   3.80,    -- roll moment coefficient
        kjz         =   0.00130, -- pitch moment coefficient
        Czbe        =  -0.014,   -- along Z axis, affects yaw
        cx_gear     =   0.085,   -- drag coefficient, gear
        cx_flap     =   0.065,   -- drag coefficient, full flaps
        cy_flap     =   0.38,    -- Ajustado: valor seguro para a engine do SFM
        cx_brk      =   0.10,    -- drag coefficient, airbrakes

        table_data =
        {   --  M       Cx0         Cya         B           B4          Omxmax      Aldop       Cymax
            [1]  = {0.000,  0.0255,     0.075,      0.0460,     0.150,      3.30,       23.0,       1.280},
            [2]  = {0.200,  0.0255,     0.075,      0.0460,     0.150,      3.30,       23.0,       1.280},
            [3]  = {0.400,  0.0265,     0.078,      0.0490,     0.160,      3.30,       22.5,       1.330},
            [4]  = {0.600,  0.0285,     0.082,      0.0530,     0.180,      3.30,       21.5,       1.380},
            [5]  = {0.750,  0.0315,     0.090,      0.0560,     0.190,      3.00,       19.5,       1.360},
            -- Divergência de arrasto transônica
            [6]  = {0.800,  0.0355,     0.095,      0.0610,     0.200,      2.80,       17.5,       1.330},
            [7]  = {0.850,  0.0510,     0.100,      0.0710,     0.250,      2.60,       15.5,       1.280},
            [8]  = {0.900,  0.0860,     0.090,      0.1010,     0.350,      2.30,       13.5,       1.180},
            [9]  = {0.950,  0.1520,     0.080,      0.1510,     0.400,      1.90,       11.5,       1.080},
            -- Supersônico
            [10] = {1.000,  0.2850,     0.065,      0.2010,     0.500,      1.40,        9.5,       0.980},
            [11] = {1.050,  0.3550,     0.055,      0.2510,     0.600,      0.90,        9.5,       0.880},
            [12] = {1.100,  0.4550,     0.050,      0.3010,     0.700,      0.70,        8.5,       0.830},
            [13] = {1.200,  0.6050,     0.045,      0.4010,     0.800,      0.40,        7.5,       0.780},
            [14] = {1.500,  0.9050,     0.040,      0.8010,     1.500,      0.10,        4.5,       0.480},
        }, -- end of table_data
    }, -- end of aerodynamics

    -- engine data (Rolls-Royce Spey RB.168 Mk 807)

    engine =
    {
        Nmg     =   60,    -- RPM at idle
        MinRUD  =   0,     -- Min throttle
        MaxRUD  =   1,     -- Max throttle
        MaksRUD =   1,     -- Military power state
        ForsRUD =   2,     -- Corrigido: Desativa engate de Pós-Combustão
        typeng  =   0,     -- Turbojet/Turbofan
        hMaxEng =   13,    -- Max altitude in km
        dcx_eng =   0.0124,-- Engine drag coefficient
        cemax   =   0.65,  -- SFC
        cefor   =   0.65,  -- SFC
        dpdh_m  =   1800,  -- Altitude thrust reduction coef
        dpdh_f  =   1800,

        table_data =
        {   --  M       Pmax        Pfor
            [1]  = {0.00,   49100,      49100},
            [2]  = {0.20,   47500,      47500},
            [3]  = {0.30,   46000,      46000},
            [4]  = {0.40,   44500,      44500},
            [5]  = {0.50,   42000,      42000},
            [6]  = {0.60,   39500,      39500},
            [7]  = {0.70,   37000,      37000},
            [8]  = {0.80,   35000,      35000},
            [9]  = {0.90,   32000,      32000},
            [10] = {1.00,   25000,      25000},
            [11] = {1.10,   15000,      15000},
            [12] = {1.20,   10000,      10000},
            [13] = {1.50,    5000,       5000},
            [14] = {3.90,    1000,       1000},
        }, -- end of table_data
    }, -- end of engine
}