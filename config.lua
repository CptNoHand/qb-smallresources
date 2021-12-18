Config = {}
Config.MaxWidth = 5.0
Config.MaxHeight = 5.0
Config.MaxLength = 5.0
Config.DamageNeeded = 60.0
Config.EnableProne = true
Config.JointEffectTime = 60
Config.RemoveWeaponDrops = true
Config.RemoveWeaponDropsTimer = 25
Config.DefaultPrice = 20 -- carwash
Config.DirtLevel = 0.1 --carwash dirt level

ConsumeablesEat = {
    ["sandwich"] = math.random(35, 54),
    ["tosti"] = math.random(40, 50),
    ["twerks_candy"] = math.random(35, 54),
    ["snikkel_candy"] = math.random(40, 50),
    ["burger-bleeder"] = math.random(35, 54),
    ["burger-moneyshot"] = math.random(35, 54),
    ["burger-torpedo"] = math.random(35, 54),
    ["burger-heartstopper"] = math.random(35, 54),
    ["burger-meatfree"] = math.random(35, 54),
    ["burger-fries"] = math.random(35, 54),
    ["crisps"] = math.random(10, 20),
    ["sushirolls"] = math.random(20, 32), -- 1
    ["pizzaslice"] = math.random(12, 16), -- 2
    ["cookie"] = math.random(5, 10), -- 3
    ["muffin"] = math.random(5, 10), -- 4
    ["fries"] = math.random(10, 18), -- 5
    ["donut"] = math.random(8, 26), -- 6
    ["icecream"] = math.random(5, 12), -- 7
    ["cupcake"] = math.random(7, 18), -- 8
    ["gum"] = math.random(3, 8), -- 9
    ["ramen"] = math.random(3, 15), -- 10
}

ConsumeablesDrink = {
    ["water_bottle"] = math.random(35, 54),
    ["kurkakola"] = math.random(35, 54),
    ["coffee"] = math.random(40, 50),
    ["burger-softdrink"] = math.random(40, 50),
    ["burger-mshake"] = math.random(40, 50),
    ["sprite"] = math.random(35, 54), -- 1
    ["pepsi"] = math.random(35, 54), -- 2
    ["mtndew"] = math.random(35, 54), -- 3
    ["lemonade"] = math.random(35, 54), -- 4
    ["icedtea"] = math.random(35, 54), -- 5
    ["milk"] = math.random(35, 54),
}

ConsumeablesAlcohol = {
    ["whiskey"] = math.random(20, 30),
    ["beer"] = math.random(30, 40),
    ["vodka"] = math.random(30, 40),
    ["gin-tonic"] = math.random(20, 40),
    ["new-western-dry"] = math.random(20, 40),
    ["old-tom"] = math.random(20, 40),
    ["cedar-ridge"] = math.random(20, 40),
    ["corn"] = math.random(20, 40),
    ["green-island"] = math.random(20, 40),
    ["dusche-beer"] = math.random(5, 15),
    ["stronzo-beer"] = math.random(5, 15),
    ["am-beer"] = math.random(5, 15),
    ["logger-beer"] = math.random(5, 15),
    ["sunny-cocktail"] = math.random(5, 15),
}

Config.BlacklistedScenarios = {
    ['TYPES'] = {
        "WORLD_VEHICLE_MILITARY_PLANES_SMALL",
        "WORLD_VEHICLE_MILITARY_PLANES_BIG",
    },
    ['GROUPS'] = {
        2017590552,
        2141866469,
        1409640232,
        `ng_planes`,
    }
}

Config.BlacklistedVehs = {
    [`SHAMAL`] = true,
    [`LUXOR`] = true,
    [`LUXOR2`] = true,
    [`JET`] = true,
    [`LAZER`] = false,
    [`BUZZARD`] = true,
    [`ANNIHILATOR`] = true,
    [`SAVAGE`] = false,
    [`TITAN`] = true,
    [`RHINO`] = false,
    [`FIRETRUK`] = false,
    [`MULE`] = false,
    [`MAVERICK`] = true,
    [`BLIMP`] = false,
    [`AIRTUG`] = true,
    [`CAMPER`] = false,    
}

Config.BlacklistedPeds = {
    [`s_m_y_ranger_01`] = true,
    [`s_m_y_sheriff_01`] = true,
    [`s_m_y_cop_01`] = true,
    [`s_f_y_sheriff_01`] = true,
    [`s_f_y_cop_01`] = true,
    [`s_m_y_hwaycop_01`] = true,
}

Config.Teleports = {
    --Elevator @ labs
    [1] = {
        [1] = {
            coords = vector4(3540.74, 3675.59, 20.99, 167.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Up'
        },
        [2] = {
            coords = vector4(3540.74, 3675.59, 28.11, 172.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Down'
        },

    },
    --Coke Processing Enter/Exit
    [2] = {
        [1] = {
            coords = vector4(909.49, -1589.22, 30.51, 92.24),
            ["AllowVehicle"] = false,
            drawText = '[E] Enter Coke Processing'
        },
        [2] = {
            coords = vector4(1088.81, -3187.57, -38.99, 181.7),
            ["AllowVehicle"] = false,
            drawText = '[E] Leave'
        },
    },
    --Rooftop Apartment
    [3] = {
        [1] = {
            coords = vector4(-773.74, 305.59, 85.7, 180.19),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Up'
        },
        [2] = {
            coords = vector4(-768.68, 336.78, 243.38, 90.0),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Down'
        },
    },
    --Werkstatt
    [4] = {
        [1] = {
            coords = vector4(-1362.02, -472.02, 31.6, 100.0),
            ["AllowVehicle"] = true,
            drawText = '[E] Take Elevator Up'
        },
        [2] = {
            coords = vector4(-1388.64, -481.65, 78.2, 9.43),
            ["AllowVehicle"] = true,
            drawText = '[E] Take Elevator Down'
        },
    },
    --Rooftop Villa
    [5] = {
        [1] = {
            coords = vector4(-305.02, -720.97, 28.03, 159.98),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Up'
        },
        [2] = {
            coords = vector4(-288.16, -722.55, 125.47, 247.6),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Down'
        },
    },
}

Config.CarWash = { -- carwash
    [1] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(25.29, -1391.96, 29.33),
    },
    [2] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(174.18, -1736.66, 29.35),
    },
    [3] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(-74.56, 6427.87, 31.44),
    },
    [5] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(1363.22, 3592.7, 34.92),
    },
    [6] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(-699.62, -932.7, 19.01),
    }
}
