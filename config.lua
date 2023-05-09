Config = {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

-- To make this simple. Everything you need is in the config, except for discord, weapon drops, vehicle classes for cruise, hands up disabled keys, and recoil

Config.AFK = {
    ignoredGroups = {
        ['mod'] = true,
        ['admin'] = true,
        ['god'] = true
    },
    secondsUntilKick = 1800 -- AFK Kick Time Limit (in seconds)
}

Config.Binoculars = {
    fov_max = 70.0,
    fov_min = 5.0, -- max zoom level (smaller fov is more zoom)
    zoomspeed = 10.0, -- camera zoom speed
    speed_lr = 8.0, -- speed by which the camera pans left-right
    speed_ud = 8.0, -- speed by which the camera pans up-down
    storeBinoclarKey = 177
}

-- Whether to enable or disable dispatch services
Config.DispatchServices = {
    [1] = false, -- Police Vehicles
    [2] = false, -- Police Helicopters
    [3] = false, -- Fire Department Vehicles
    [4] = false, -- Swat Vehicles
    [5] = false, -- Ambulance Vehicles
    [6] = false, -- Police Motorcycles
    [7] = false, -- Police Backup
    [8] = false, -- Police Roadblocks
    [9] = false, -- PoliceAutomobileWaitPulledOver
    [10] = false, -- PoliceAutomobileWaitCruising
    [11] = false, -- Gang Members
    [12] = false, -- Swat Helicopters
    [13] = false, -- Police Boats
    [14] = false, -- Army Vehicles
    [15] = false, -- Biker Backup
}

-- Enable or disable the wanted level
Config.EnableWantedLevel = false

-- To Set This Up visit https://forum.cfx.re/t/how-to-updated-discord-rich-presence-custom-image/157686
Config.Discord = {
    ["IsEnabled"] = false, -- If set to true, then discord rich presence will be enabled
    ["ApplicationId"] = '00000000000000000', -- The discord application id
    ["IconLarge"] = 'logo_name', -- The name of the large icon
    ["IconLargeHoverText"] = 'This is a Large icon with text', -- The hover text of the large icon
    ["IconSmall"] = 'small_logo_name', -- The name of the small icon
    ["IconSmallHoverText"] = 'This is a Small icon with text', -- The hover text of the small icon
    ["UpdateRate"] = 60000, -- How often the player count should be updated
    ["ShowPlayerCount"] = true, -- If set to true the player count will be displayed in the rich presence
    ["MaxPlayers"] = 48, -- Maximum amount of players
    ["Buttons"] = {
        {
            text = 'First Button!',
            url = 'fivem://connect/localhost:30120'
        },
        {
            text = 'Second Button!',
            url = 'fivem://connect/localhost:30120'
        }
    }
}

Config.Density = {
    ['parked'] = 0.8,
    ['vehicle'] = 0.8,
    ['multiplier'] = 0.8,
    ['peds'] = 0.8,
    ['scenario'] = 0.8,
}

Config.Stun = {
    active = false,
    min = 4000,
    max = 7000
}

Config.Cruise = 'mp/h'
Config.IdleCamera = true
Config.disableHandsupControls = {24, 25, 47, 58, 59, 63, 64, 71, 72, 75, 140, 141, 142, 143, 257, 263, 264}
Config.DisableAmbience = false -- Disabled distance sirens, distance car alarms, etc
Config.HarnessUses = 20
Config.DamageNeeded = 100.0 -- vehiclepush 0-1000
Config.EnableProne = false -- prone isnt recomended at this time
Config.MapText = "Server Name" -- This is the name / text shown above the map

Config.Disable = {
    disableHudComponents = {1, 2, 3, 4, 7, 9, 13, 14, 19, 20, 21, 22}, -- Hud Components: https://docs.fivem.net/natives/?_0x6806C51AD12B83B8
    disableControls = {37}, -- Controls: https://docs.fivem.net/docs/game-references/controls/
    displayAmmo = true -- false disables ammo display
}

Config.ConsumablesEat = {

    ["sandwich"] = math.random(35, 54),
    ["tosti"] = math.random(40, 50),
    ["twerks_candy"] = math.random(35, 54),
    ["snikkel_candy"] = math.random(40, 50),
    ["burger-bleeder"] = math.random(60, 75),
    ["burger-moneyshot"] = math.random(60, 75),
    ["burger-torpedo"] = math.random(60, 75),
    ["burger-heartstopper"] = math.random(60, 75),
    ["burger-meatfree"] = math.random(60, 75),
    ["burger-fries"] = math.random(60, 75),
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
    ["bmochi"] = math.random(30, 40),
    ["pmochi"] = math.random(40, 50),
    ["gmochi"] = math.random(40, 50),
    ["omochi"] = math.random(40, 50),
    ["bento"] = math.random(40, 50),
    ["riceball"] = math.random(40, 50),
    ["miso"] = math.random(40, 50),
    ["cake"] = math.random(40, 50),
    ["nekocookie"] = math.random(40, 50),
    ["nekodonut"] = math.random(40, 50),
    ["rice"] = math.random(30, 40),
    ["blueberry"] = math.random(30, 40),
    ["strawberry"] = math.random(30, 40),
    ["orange"] = math.random(30, 40),
    ["cakepop"] = math.random(30, 40),
    ["pancake"] = math.random(30, 40),
    ["pizza"] = math.random(30, 40),
    ["purrito"] = math.random(30, 40),
    ["ramen"] = math.random(30, 40),
    ["noodlebowl"] = math.random(30, 40),
    ["chocolate"] = math.random(30, 40),
    ["friedpick"] = math.random(40, 50),
    ["maccheese"] = math.random(40, 50),
    ["bplate"] = math.random(40, 50),
    ["cplate"] = math.random(40, 50),
    ["splate"] = math.random(40, 50),
    ["rplate"] = math.random(40, 50),
    ["nplate"] = math.random(40, 50),
    ["wings"] = math.random(40, 50),
    ["pickle"] = math.random(40, 50),
    ["nachoes"] = math.random(30, 40),
    -- Casino Bar Snacks
    ["casino_burger"] = math.random(25, 40),
    ["casino_psqs"] = math.random(25, 40),
    ["casino_ego_chaser"] = math.random(25, 40),
    ["casino_sandwitch"] = math.random(25, 40),
    ["casino_donut"] = math.random(25, 40)
}

ConsumablesDrink = {
    ["water_bottle"] = math.random(60, 75),
    ["kurkakola"] = math.random(60, 75),
    ["coffee"] = math.random(40, 50),
    ["burger-softdrink"] = math.random(40, 50),
    ["burger-mshake"] = math.random(40, 50),
    ["sprite"] = math.random(60, 75), -- 1
    ["pepsi"] = math.random(60, 75), -- 2
    ["mtndew"] = math.random(60, 75), -- 3
    ["lemonade"] = math.random(60, 75), -- 4
    ["icedtea"] = math.random(60, 75), -- 5
    ["nekolatte"] = math.random(20, 40),
    ["bobatea"] = math.random(20, 40),
    ["bbobatea"] = math.random(20, 40),
    ["gbobatea"] = math.random(20, 40),
    ["obobatea"] = math.random(20, 40),
    ["pbobatea"] = math.random(20, 40),
    ["milk"] = math.random(20, 40),
    ["mocha"] = math.random(20, 40),
    ["milk"] = math.random(20, 40),
    ["cranberry"] = math.random(20, 40),
    -- Casino Bar Drinks
    ["casino_beer"] = math.random(25, 40),
    ["casino_coke"] = math.random(25, 40),
    ["casino_sprite"] = math.random(25, 40),
    ["casino_luckypotion"] = math.random(25, 40),
    ["casino_coffee"] = math.random(25, 40)
}

Config.ConsumablesAlcohol = {
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
    ["sake"] = math.random(20, 40),
    ["b52"] = math.random(20, 40),
    ["brussian"] = math.random(20, 40),
    ["bkamikaze"] = math.random(20, 40),
    ["cappucc"] = math.random(20, 40),
    ["ccookie"] = math.random(20, 40),
    ["iflag"] = math.random(20, 40),
    ["kamikaze"] = math.random(20, 40),
    ["sbullet"] = math.random(20, 40),
    ["voodoo"] = math.random(20, 40),
    ["woowoo"] = math.random(20, 40),
    ["cranberry"] = math.random(20, 40),
    ["schnapps"] = math.random(20, 40),
    ["gin"] = math.random(20, 40),
    ["scotch"] = math.random(20, 40),
    ["rum"] = math.random(20, 40),
    ["icream"] = math.random(20, 40),
    ["amaretto"] = math.random(20, 40),
    ["curaco"] = math.random(20, 40),
    ["beerglass"] = math.random(20, 40),
}

-- Custom Consumables hand bones
-- 18905 left hand
-- 57005 right hand
Config.ConsumablesCustom = {
    -- ['newitem'] = {
    --     ['progress'] = {
    --         label = 'Using Item...',
    --         time = 5000
    --     },
    --     ['animation'] = {
    --         animDict = "amb@prop_human_bbq@male@base",
    --         anim = "base",
    --         flags = 8,
    --     },
    --     ['prop'] = {
    --         model = false,
    --         bone = false,
    --         coords = false, -- vector 3 format
    --         rotation = false, -- vector 3 format
    --     },
    --     ['replenish'] = {
    --         type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
    --         replenish = math.random(20, 40),
    --         isAlcohol = false, -- if you want it to add alcohol count
    --         event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
    --         server = false -- if the event above is a server event
    --     }
    -- }
}

ConsumablesFireworks = {
    "firework1",
    "firework2",
    "firework3",
    "firework4"
}

Config.FireworkTime = 5 -- seconds before it goes off

Config.BlacklistedScenarios = {
    ['TYPES'] = {
        "WORLD_VEHICLE_MILITARY_PLANES_SMALL",
        "WORLD_VEHICLE_MILITARY_PLANES_BIG",
        "WORLD_VEHICLE_AMBULANCE",
        "WORLD_VEHICLE_POLICE_NEXT_TO_CAR",
        "WORLD_VEHICLE_POLICE_CAR",
        "WORLD_VEHICLE_POLICE_BIKE",
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
    [`BUZZARD2`] = true,
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
    [`HYDRA`] = true,
    [`OPPRESSOR`] = true,
    [`technical3`] = true,
    [`insurgent3`] = true,
    [`apc`] = true,
    [`tampa3`] = true,
    [`trailersmall2`] = false,
    [`halftrack`] = false,
    [`hunter`] = false,
    [`vigilante`] = true,
    [`akula`] = true,
    [`barrage`] = false,
    [`khanjali`] = false,
    [`caracara`] = false,
    [`blimp3`] = true,
    [`menacer`] = true,
    [`oppressor2`] = true,
    [`scramjet`] = true,
    [`strikeforce`] = true,
    [`cerberus`] = true,
    [`cerberus2`] = true,
    [`cerberus3`] = true,
    [`scarab`] = true,
    [`scarab2`] = true,
    [`scarab3`] = true,
    [`rrocket`] = false,
    [`ruiner2`] = true,
    [`deluxo`] = true,
    [`cargoplane2`] = true,
    [`voltic2`] = true,
}

Config.BlacklistedWeapons = {
    [`WEAPON_RAILGUN`] = true,
}

Config.BlacklistedPeds = {
    [`s_m_y_ranger_01`] = true,
    [`s_m_y_sheriff_01`] = true,
    [`s_m_y_cop_01`] = true,
    [`s_f_y_sheriff_01`] = true,
    [`s_f_y_cop_01`] = true,
    [`s_m_y_hwaycop_01`] = true,
    [`a_c_mtlion`] = true,
}

Config.HolsterVariant = {130,122,1,2,3,6,8}
Config.HolsterableWeapons = {
    --'WEAPON_STUNGUN',
    'WEAPON_PISTOL',
    'WEAPON_PISTOL_MK2',
    'WEAPON_COMBATPISTOL',
    'WEAPON_APPISTOL',
    'WEAPON_PISTOL50',
    'WEAPON_REVOLVER',
    'WEAPON_SNSPISTOL',
    'WEAPON_HEAVYPISTOL',
    'WEAPON_VINTAGEPISTOL'
}

Config.Objects = { -- for object removal
    {coords = vector3(266.09,-349.35,44.74), heading = 0, length = 200, width = 200, model = "prop_sec_barier_02b"},
    {coords = vector3(285.28,-355.78,45.13), heading = 0, length = 200, width = 200, model = "prop_sec_barier_02a"},
}

-- You may add more than 2 selections and it will bring up a menu for the player to select which floor be sure to label each section though
Config.Teleports = {
    --Elevator @ labs
    [1] = {
        [1] = { -- up label
            ['poly'] = {
                coords = vector3(3540.74, 3675.59, 20.99),
                heading = 167.5,
                length = 2,
                width = 2
            },
            ["AllowVehicle"] = false,
            label = false -- set this to a string for a custom label or leave it false to keep the default

        },
        [2] = { -- down label
            ['poly'] = {
                coords = vector3(3540.74, 3675.59, 28.11),
                heading = 172.5,
                length = 2,
                width = 2
            },
            ["AllowVehicle"] = false,
            label = false
        },
        -- [3] = {
        --     ['poly'] = {
        --         coords = vector3(0.0, 0.0, 0.0),
        --         heading = 0.0,
        --         length = 0,
        --         width = 0
        --     },
        --     ["AllowVehicle"] = false,
        --     label = 'be sure to label all sections if more than 2'
        -- },
    },
    --Rooftop Apartment
    [3] = {
        [1] = {
            ['poly'] = {
                coords = vector3(909.49, -1589.22, 30.51),
                heading = 92.24,
                length = 2,
                width = 2
            },
            ["AllowVehicle"] = false,
            label = '[E] Enter Coke Processing'
        },
        [2] = {
            ['poly'] = {
                coords = vector3(1088.81, -3187.57, -38.99),
                heading = 181.7,
                length = 2,
                width = 2
            },
            ["AllowVehicle"] = false,
            label = '[E] Leave'
        }
    }
}

Config.DefaultPrice = 20 -- Default price for the carwash
Config.DirtLevel = 0.1 -- Threshold for the dirt level to be counted as dirty
Config.CarWash = {}
