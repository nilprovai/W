getgenv().SecureMode = true
getgenv().LoadTab = getgenv().LoadTab or {
    ["Main Farm"] = true,
    ["Stack Auto Farm"] = true,
    ["Sub Farming"] = true,
    ["Vocalnic"] = true,
    ["Status"] = true,
    ["Fruit"] = true,
    ["Local Player"] = true,
    ["Travel"] = true,
    ["Pvp-Visual"] = true,
    ["Raid-Material"] = true,
    ["RaceV4-Mirage"] = true,
    ["Sea Events"] = true,
    ["Sub Class"] = true,
    ["Shop"] = true,
    ["Settings"] = true,
    ["Game-Server"] = true,
}

repeat task.wait() until getgenv().IslandCaller and getgenv().IslandVariable and game.Players.LocalPlayer

local CoreGui = game.CoreGui
local JobId = game.JobId

local TweenService = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualInputManager = game:GetService("VirtualInputManager")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")

local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local CommF = Remotes:WaitForChild("CommF_")

local Players = game.Players
local LocalPlayer = Players.LocalPlayer

local Starlight = loadstring(game:HttpGet("https://raw.githubusercontent.com/nilprovai/W/refs/heads/main/starlight-ui.lua"))()  
local NebulaIcons = loadstring(game:HttpGet("https://raw.nebulasoftworks.xyz/nebula-icon-library-loader"))()

local UiOrders = {
    { title = "Main Farm", icon = "pickaxe" },
    { title = "Stack Auto Farm", icon = "layers" },
    { title = "Sub Farming", icon = "leaf" },
    { title = "Vocalnic", icon = "flame" },
    { title = "Status", icon = "chart-no-axes-column" },
    { title = "Fruit", icon = "apple" },
    { title = "Local Player", icon = "map-pin" },
    { title = "Travel", icon = "navigation" },
    { title = "Pvp-Visual", icon = "crosshair" },
    { title = "Raid-Material", icon = "box" },
    { title = "RaceV4-Mirage", icon = "moon" },
    { title = "Sea Events", icon = "waves" },
    { title = "Sub Class", icon = "book-open" },
    { title = "Shop", icon = "shopping-cart" },
    { title = "Settings", icon = "cog" },
    { title = "Game-Server", icon = "server" },
}

local UiIntilize = {
    ["Main Farm"] = {
        {Title="Farm Settings", Children={
            {Mode="Dropdown",Title="Auto Farm Mode",Table={"Level", "Katakuri", "Bone"}, Id="Farm Mode"},
            {Mode="Toggle", Title="Auto Tyrant of the Skies", Id="Auto Tyrant of the Skies"},
            {Mode="Toggle", Title="Auto Farm", Id="Auto Farm"},
            {Mode="Toggle",Title="Accept Quest",Id="Accept Quest"},
            {Mode="Toggle",Title="Triple Quest",Id="Triple Quest"},
            {Mode="Toggle",Title="Kill Aura",Id="Kill Aura"},
            {Mode="Toggle",Title="Fully Auto Dough King",Id="Fully Auto Dough King"},
        }},
        {Title="Anchor & Position", Children={
            {Mode="Toggle",Title="TP Back Anchor Position",Id="TP Back Anchor Position"},
            {Mode="Button",Title="Set Anchor Position",Callback=function()
                pcall(function ()
                    getgenv().Settings["AnchorPosition"] = tostring(LocalPlayer.Character.HumanoidRootPart.Position)
                    Starlight:Notification({
                        Title = "W-azure",
                        Icon = 89753210367517,
                        Content = string.format("Anchor position has been set to: %s", tostring(LocalPlayer.Character.HumanoidRootPart.Position)),
                        Duration = 2,
                    }) 
                end)
            end},
            {Mode="Dropdown",Title="Distance From Anchor",Table = {400,800,1200,1600,2000,2400,2800,3200,3600,4000},Default=getgenv().Settings["Distance From Anchor"] or 400,Id="Distance From Anchor", IsNumber=true},
        }},
        {Title="Weapon Settings", Children={
            {Mode="Dropdown",Title="Weapon For Farm", Id="Weapon For Farm",Table={"Melee", "Sword", "Blox Fruit"}, Default=getgenv().Settings["Weapon For Farm"] or "Melee"},
            {Mode="Toggle",Title="Sword Switcher",Id="Sword Switcher"},
            {Mode="Toggle",Title="Only Switch Max Mastery",Id="Only Switch Max Mastery"},
            {Mode="Toggle",Title="Switch Sword When Low", Id="Switch Sword When Low"},
            {Mode="Toggle",Title="Gun Switcher",Id="Gun Switcher"},
            {Mode="Toggle",Title="Only Switch Max Mastery Gun",Id="Only Switch Max Mastery Gun"},
        }},
        {Title="Mastery Settings", Children={
            {Mode="Toggle",Title="Mastery Farm", Id="Mastery Farm"},
            {Mode="Toggle",Title ="Aimbot Camera", Id="Aimbot Camera"},
            {Mode="Dropdown",Title = "Mastery Health",Id = "Mastery Health",Table = {20,25,30,35,40,45,50},Default = getgenv().Settings["Mastery Health"] or 30,IsNumber = true},        
            {Mode="Toggle",Title="Mastery Fruit Gun",Id = "Mastery Fruit Gun"},
            {Mode="Toggle",Title = "Disable Silent Aim",Id = "Disable Silent Aim"},
        }},
        {Title="Other", Children={
            {Mode="Button",Title="Lite Fps Boost",Id="Lite Fps Boost"},
            {Mode="Button",Title="Super Fps Boost",Id="Super Fps Boost"}
        }}
    },
    ["Stack Auto Farm"] = {
        {Title="Halloween Event", Children={
            {Mode="Toggle",Title="Auto Halloween Event", Id="Auto Halloween Event"},
            {Mode="Toggle",Title="Ignore Halloween Boss", Id="Ignore Halloween Boss"},
        }},
        {Title="Sea 3 Functions", Children={
            {Mode="Toggle",Title="Auto Elite",Id="Auto Elite"},
            {Mode="Toggle",Title="Auto Pirate Raid",Id="Auto Pirate Raid"},
            {Mode="Toggle",Title="Auto Open Haki Pad",Id="Auto Open Haki Pad"},
            {Mode="Toggle",Title="Auto Spawn Rip Indra", Id = "Auto Spawn Rip Indra"},
            {Mode="Toggle",Title="Auto Rip Indra",Id="Auto Rip Indra"},
            {Mode="Toggle",Title="Auto Tushita",Id="Auto Tushita"},
            {Mode="Toggle",Title="Do Puzzle Electric Claw",Id="Do Puzzle Electric Claw"},
        }},
        {Title="Boss & Quest", Children={
            {Mode="Toggle",Title="Auto Dough King", Id = "Auto Dough King"},
            {Mode="Toggle",Title="Auto Cake Prince",Id = "Auto Cake Prince"},
            {Mode="Toggle",Title="Auto Spawn Soul Reaper",Id = "Auto Spawn Soul Reaper"},
            {Mode="Toggle",Title="Auto Soul Reaper",Id = "Auto Soul Reaper"},
            {Mode="Dropdown",Title = "Select Boss To Snipe",Id = "Selected Boss To Snipe",Multi = true,Table = getgenv().IslandVariable.AllBoss[getgenv().IslandVariable["CurrentSea"]],Default = getgenv().Settings["Selected Boss To Snipe"] or {}},     
            {Mode="Toggle",Title="Start Boss Snipe",Id="Start Boss Snipe"},
        }},
        {Title="Sea 2 Functions", Children={
            {Mode="Toggle",Title="Auto Bartilo Quest",Id = "Auto Bartilo Quest"},
            {Mode="Toggle",Title="Auto Race Evolve",Id = "Auto Race Evolve"},
            {Mode="Toggle",Title="Auto Factory",Id = "Auto Factory"},
            {Mode="Toggle",Title="Auto Spawn Black Beard", Id = "Auto Spawn Black Beard"},
            {Mode="Toggle",Title="Auto Black Beard", Id = "Auto Black Beard"},
        }},
        {Title="Special Items", Children={
            {Mode="Toggle",Title="Auto Ghoul", Id = "Auto Ghoul"},
            {Mode="Toggle",Title="Auto Soul Guitar",Id = "Auto Soul Guitar"},
            {Mode="Toggle",Title="Auto Soul Guitar Material",Id = "Auto Soul Guitar Material"},
            {Mode="Toggle",Title="Auto CDK",Id = "Auto CDK"},
        }}
    },
    ["Sub Farming"] = {
        {Title="Yoru Upgrade", Children={
            {Mode="Button",Title="Upgrade Yoru V2",Id="Upgrade Your V2"},
            {Mode="Toggle",Title="Yoru V3",Id = "Yoru V3"},
            {Mode="Dropdown",Title="Select Player",Special=1,Id="Selected Player To Upgrade Yoru V3"},
            {Mode="Toggle",Title="Account To Upgrade Yoru V3",Id = "Account To Upgrade Yoru V3"},
        }},
        {Title="BlackSmith & Items", Children={
            {Mode="Toggle",Title="Auto BlackSmith",Id = "Auto BlackSmith"},
            {Mode="Toggle",Title="Auto Shark Anchor",Id = "Auto Shark Anchor"},
            {Mode="Toggle",Title="BlackSmith Sword Gun Toggle",Id = "BlackSmith Sword Gun Toggle"},
        }},
        {Title="Server Hopping", Children={
            {Mode="Toggle",Title="Rip Indra Hop",Id = "Rip Indra Hop"},
            {Mode="Toggle",Title="Race Evolve Hop",Id = "Race Evolve Hop"},
            {Mode="Toggle",Title="Auto Elite Hop",Id = "Auto Elite Hop"},
            {Mode="Toggle",Title="Black Beard Hop",Id="Black Beard Hop"},
            {Mode="Toggle",Title="Tushita Hop",Id="Tushita Hop"},
            {Mode="Toggle",Title="Hybrid Fruit Hop",Id="Hybrid Fruit Hop"},
            {Mode="Toggle",Title="Raid Fruit Hop",Id="Raid Fruit Hop"},
            {Mode="Toggle",Title="Auto Ghoul Hop",Id="Auto Ghoul Hop"},
            {Mode="Toggle",Title="Boss Snipe Hop",Id="Boss Snipe Hop"},
        }},
        {Title="Law & Cyborg", Children={
            {Mode="Toggle",Title="Auto Law",Id="Auto Law"},
            {Mode="Toggle",Title="Auto Cyborg",Id="Auto Cyborg"},
        }},
        {Title="Chest Farming", Children={
            {Mode="Toggle",Title="Auto Chest",Id="Auto Chest"},
            {Mode="Toggle",Title="Ignore Items Chest",Id="Ignore Items Chest"},
            {Mode="Toggle",Title="Auto Chest Hop",Id = "Auto Chest Hop"},
            {Mode="Dropdown",Title = "x Chest To Hop",Id = "Limit Chest",Table = {20,25,30,35,40,45,50,60,70},Default = getgenv().Settings["LimitChest"] or 50,IsNumber = true},        
            {Mode="Toggle",Title="Insta Tp Chest",Id="Insta Tp Chest"},
        }},
        {Title="Observation Haki", Children={
            {Mode="Toggle",Title="Auto Level Observation",Id="Auto Level Observation"},
            {Mode="Toggle",Title="Level Observation Hop",Id="Level Observation Hop"},
            {Mode="Toggle",Title="Auto Observation V2",Id = "Auto Observation V2"},
            {Mode="Toggle",Title="Observation V2 Hop",Id = "Observation V2 Hop"},
        }},
        {Title="Quests & Haki", Children={
            {Mode="Toggle",Title="Auto Saber Hop",Id="Auto Saber Hop"},
            {Mode="Toggle",Title="Auto Pole Hop",Id="Auto Pole Hop"},
            {Mode="Toggle",Title="Auto Katakuri Hop",Id="Auto Katakuri Hop"},
            {Mode="Toggle",Title="Auto Citizen Quest",Id = "Auto Citizen Quest"},
            {Mode="Toggle",Title="Citizen Quest Hop",Id = "Citizen Quest Hop"},
            {Mode="Toggle",Title="Auto Get Rainbow Haki",Id = "Auto Get Rainbow Haki"},
            {Mode="Toggle",Title="Rainbow Haki Hop",Id = "Rainbow Haki Hop"},
        }}
    },
    ["Vocalnic"] = {
        {Title="Volcanic Activities", Children={
            {Mode = "Toggle",Title = "Auto Dojo Trainer",Id = "Auto Dojo Trainer"},
            {Mode = "Toggle",Title = "Auto Ember",Id = "Auto Ember"},
            {Mode = "Toggle",Title = "Auto Find PrehistoricIsland",Id = "Auto Find PrehistoricIsland"},
        }},
        {Title="Berry Activites", Children={
            {Mode = "Toggle",Title = "Auto Collect Berry",Id = "Auto Collect Berry"},
            {Mode = "Toggle",Title = "Auto Berry Hop",Id = "Auto Berry Hop"}
        }}
    },
    ["Status"] = {
        {Title="Game Status", Children={
            {Mode="Label",Title="Client Time"},
            {Mode="Label",Title="Farming Status"},
            {Mode="Label",Title="Dimension Kill"},
            {Mode="Label",Title="Bribe Status"},
        }},
        {Title="Server Status", Children={
            {Mode="Label",Title="Server Haki Color"},
            {Mode="Label",Title="Elite Status"},
            {Mode="Label",Title="Mirage Status"},
            {Mode="Label",Title="PrehistoricIsland Status"},
            {Mode="Label",Title="Kitsune Status"},
            {Mode="Label",Title="FullMoon Status"},
        }}
    },
    ["Fruit"] = {
        {Title="Fruit Management", Children={
            {Mode = "Toggle",Title = "Auto Collect Fruit",Id = "Collect Fruit"},
            {Mode = "Toggle",Title = "Auto Store Fruit",Id = "Auto Store Fruit"},
            {Mode = "Toggle", Title = "Remove Random Fruit Gui", Id = "Remove Random Fruit Gui"}
        }},
        {Title="Auto Snipe Fruit", Children={
            {Mode = "Toggle",Title = "Snipe Fruit",Id = "Snipe Fruit"},
            {Mode = "Toggle",Title = "Snipe Mirage Fruit",Id = "Snipe Mirage Fruit"},
            {Mode = "Dropdown",Title = "Select Fruit To Snipe",Id = "Fruit To Snipe",Multi = true,Table = getgenv().IslandVariable.FruitTable or {}, Default = getgenv().Settings["Fruits To Snipe"] or {}}
        }}
    },
    ["Local Player"] = {
        {Title="Team & Combat", Children={
            {Mode="Button",Title="Change Team To Pirates",Callback=function()
                CommF:InvokeServer("SetTeam", "Pirates")
            end},
            {Mode="Button",Title="Change Team To Marines",Callback=function()
                CommF:InvokeServer("SetTeam", "Marines")
            end},
            {Mode = "Button",Title = "Remove Enemies Skill Stun",Id="Remove Enemies Stun"},
        }},
        {Title="Movement & Abilities", Children={
            {Mode = "Toggle",Title = "No Clip",Id = "No Clip"},
            {Mode = "Toggle",Title = "No Clip Ship",Id = "No Clip Ship"},
            {Mode = "Toggle",Title = "Auto Buso",Id = "Auto Buso"},
            {Mode = "Toggle",Title = "Auto Enable Observation",Id = "Auto Enable Observation"},
            {Mode = "Toggle",Title = "Water Walker",Id = "Water Walker"},
            {Mode = "Toggle",Title = "Auto Use Race V3",Id = "Auto Use Race V3"},
            {Mode = "Toggle",Title = "Auto Use Race V4",Id = "Auto Use Race V4"},
        }},
        {Title="Dash & Speed", Children={
            {Mode="Label",Title="DANGEROUS FUNCTIONS !!!"},
            {Mode = "Toggle",Title = "Soru No CD",Id = "Soru No CD"},
            {Mode = "Toggle",Title = "Dash No CD",Id = "Dash No CD"},
            {Mode = "Toggle",Title = "Change Dash Rage",Id = "Do Dash Rage"},
            {Mode = "Dropdown",Title = "Dash Range",Id = "Dash Range",Table = {100,150,200,250,300,500,750,1000},Default = getgenv().Settings["Dash Range"] or 300, IsNumber=true},
            {Mode = "Toggle",Title = "Infinity Geppo",Id = "Infinity Geppo"},
            {Mode = "Toggle",Title = "Speed Hack",Id = "Speed Hack"},
            {Mode = "Slider",Title = "Speed",Id = "Speed",Default = getgenv().Settings["Speed"] or 16,Min = 16,Max = 500}
        }},
        {Title="Player Stats", Children={
            {Mode = "Slider", Title = "Stats To Add", Id = "Stats To Add", Min = 1, Max = 100, Default = getgenv().Settings["Stats To Add"] or 1},
            {Mode = "Toggle",Title = "Add Stat Melee",Id = "Add Stat Melee"},
            {Mode = "Toggle",Title = "Add Stat Defense",Id = "Add Stat Defense"},
            {Mode = "Toggle",Title = "Add Stat Sword",Id = "Add Stat Sword"},
            {Mode = "Toggle",Title = "Add Stat Gun",Id = "Add Stat Gun"},
            {Mode = "Toggle",Title = "Add Stat Blox Fruit",Id = "Add Stat Blox Fruit"},
        }}
    },
    ["Travel"] = {
        {Title="Quick Travel", Children={
            {Mode="Button",Title="Stop Tween",Id="Stop Tween"},
            {Mode="Button",Title="Travel Sea 1",Id="Travel Sea 1"},
            {Mode="Button",Title="Travel Sea 2",Id="Travel Sea 2"},
            {Mode="Button",Title="Travel Sea 3",Id="Travel Sea 3"},
        }},
        {Title="Location Travel", Children={
            {Mode="Dropdown",Title="Choose Place",Table=getgenv().IslandVariable.RequestPlacesName[getgenv().IslandVariable["CurrentSea"]] or {}, Id="Place To Insta TP"},
            {Mode="Button",Title="Insta TP",Id="Insta TP"},
            {Mode="Dropdown", Title="Choose Place (Halloween Portal)", Table=getgenv().IslandVariable.HalloweenPortalsName, Id="Halloween Portal Insta TP"},
            {Mode="Button", Title="Halloween Insta TP", Id="Halloween Insta TP"},
            {Mode="Dropdown",Title="Travel Place", Id="Travel Place", Table=getgenv().IslandVariable.PlacesName[getgenv().IslandVariable["CurrentSea"]]},
            {Mode="Button",Title="Start Traveling",Id="Travel To Place"},
        }},
        {Title="NPC Travel", Children={
            {Mode="Dropdown",Title="Tween to NPC",Table=getgenv().IslandVariable["NPCs"], Id="NPC To Tween"},
            {Mode="Button",Title="Start Tweening",Id="Tween To NPC"},
        }}
    },
    ["Pvp-Visual"] = {
        {Title="Player Targeting", Children={
            {Mode="Dropdown",Title="Select Player",Special=1,Id="Selected Player"},
            {Mode = "Toggle",Title = "Tween To Player",Id = "Tween To Player"},
        }},
        {Title="Combat Options", Children={
            {Mode = "Toggle",Title = "Auto Shoot Gun",Id = "Auto Shoot Gun"},
            {Mode = "Toggle",Title = "Silent Aim Selected",Id = "Silent Aim Selected"},
            {Mode = "Toggle",Title = "Silent Aim Near Player",Id = "Silent Aim Near Player"},
            {Mode = "Toggle",Title = "Auto Kill Near Player",Id = "Auto Kill Near Player"},
            {Mode = "Toggle",Title = "Only Shoot In Shootable Distance",Id = "Only Shoot In Shootable Distance"},
        }},
        {Title="ESP & Visuals", Children={
            {Mode = "Toggle",Title = "ESP Players",Id = "ESP Players"},
            {Mode = "Toggle",Title = "ESP Boss",Id = "ESP Boss"},
            {Mode = "Toggle",Title = "ESP Chests",Id = "ESP Chests"},
            {Mode = "Toggle",Title = "ESP Island",Id = "ESP Island"},
            {Mode = "Toggle",Title = "ESP Fruit",Id = "ESP Fruit"}
        }}
    },
    ["Raid-Material"] = {
        {Title = "Material Farming", Children={
            {Mode = "Toggle",Title = "Start Farming Material",Id = "Start Farming Material"},
            {Mode="Dropdown",Title="Materials",Table=getgenv().IslandVariable.MaterialName},
        }},
        {Title = "Raid Settings", Children={
            {Mode="Dropdown",Title="Select Chip",Table={"Flame","Ice","Sand","Quake","Light","Dark","Spider","Rumble","Magma","Human: Buddha","Bird: Phoenix","Dough"},Id="Selected Chip", Default=getgenv().Settings["Selected Chip"]},
            {Mode = "Toggle",Title = "Auto Raid",Id = "Auto Raid"},
            {Mode = "Toggle",Title = "No Delay Next Island",Id = "No Delay Next Island"},
            {Mode = "Toggle",Title = "Auto Awaken",Id = "Auto Awaken"},
            {Mode = "Toggle",Title = "Auto Unstore Fruit Under 1M",Id = "Auto Unstore Fruit Under 1M"}
        }}
    },
    ["Sea Events"] = {
        {Title="Ship Controls", Children={
            {Mode = "Button",Title = "Tp Your Ship To Current Pos",Id="TP Current Ship"},
            {Mode = "Button",Title = "Remove Sea Terror Effect",Id="Remove Sea Terror Effect"},
            {Mode = "Button",Title = "Change Night Atmosphere",Id="Night Atmosphere"},
            {Mode = "Button",Title = "Change Dark Atmosphere",Id="Dark Atmosphere"},
            {Mode = "Toggle",Title = "Ship Speed Modifier",Id = "Ship Speed Modifier"},
            {Mode = "Slider",Title = "Ship Speed",Id = "Ship Speed",Default = getgenv().Settings["Ship Speed"] or 500, Min=1, Max=1000},
            {Mode="Dropdown",Title="Select Ship",Table={"PirateSloop","Swan Ship","Beast Hunter","PirateGrandBrigade","MarineGrandBrigade","PirateBrigade","MarineBrigade"},Default=getgenv().Settings["Selected Ship"], Id="Selected Ship"},
        }},
        {Title="Sea Farming", Children={
            {Mode = "Toggle",Title = "Start Farming Sea Event",Id = "Start Farming Sea Event"},
            {Mode = "Toggle",Title = "Auto Terror Shark",Id = "Auto Terror Shark"},
            {Mode = "Toggle",Title = "Auto Sea Beasts",Id = "Auto Sea Beasts"},
            {Mode = "Toggle",Title = "Auto Ship",Id = "Auto Ship"},
            {Mode = "Toggle",Title = "Auto Repair Ship",Id = "Auto Repair Ship"},
            {Mode = "Toggle",Title = "Ignore Sea Beast",Id = "Ignore Sea Beast"},
            {Mode = "Toggle",Title = "Ignore Ship",Id = "Ignore Ship"},
            {Mode = "Toggle",Title = "Auto Shark",Id = "Auto Shark"},
            {Mode = "Toggle",Title = "Auto Piranha",Id = "Auto Piranha"},
            {Mode = "Toggle",Title = "Auto Fish Crew Member",Id = "Auto Fish Crew Member"},
            {Mode = "Toggle",Title = "Safe Mode",Id = "Safe Mode"},
            {Mode = "Toggle",Title = "Auto Escape Rough Sea",Id = "Auto Escape Rough Sea"},
        }},
        {Title = "Leviathan", Children={
            {Mode = "Button",Title = "Tp To Frozen island",Id="TP Leviathan Island"},
            {Mode = "Toggle",Title = "Auto Find Leviathan",Id = "Auto Find Leviathan"},
            {Mode = "Toggle",Title = "Auto Leviathan",Id = "Auto Leviathan"},
            {Mode = "Toggle",Title = "Multi Segments Attack",Id = "Multi Segments Attack"},
        }},
        {Title = "Kitsune Island", Children={
            {Mode = "Button",Title = "Tween To Kitsune Island"},
            {Mode = "Toggle",Title = "Auto Find Kitsune Island",Id = "Auto Find Kitsune Island"},
            {Mode = "Toggle",Title = "Auto Start Kitsune When In Island",Id = "Auto Start Kitsune When In Island"},
            {Mode = "Toggle",Title = "Auto Collect Azure Wisp",Id = "Auto Collect Azure Wisp"},
            {Mode = "Dropdown",Title = "Azure Trade Min",Id = "Azure Ember Limit",Table = {15,20,25,30},Default = getgenv().Settings["Azure Ember Limit"] or 30,IsNumber=true},
            {Mode = "Toggle",Title = "Auto Trade Azure Wisp",Id = "Auto Trade Azure Wisp"},
        }},
        {Title = "Advanced Settings", Children={
            {Mode = "Toggle",Title = "Spin Ship If Farming",Id = "Spin Ship If Farming"},
            {Mode = "Slider",Title = "Spin Distance",Id = "Spin Distance",Default = getgenv().Settings["Spin Distance"] or 10,Min = 10,Max = 500},
            {Mode = "Slider",Title = "Near Distance",Id = "Near Distance",Default = getgenv().Settings["Near Distance"] or 300,Min = 300,Max = 1000},
            {Mode = "Slider",Title = "Sea Beast Near Distance",Id = "Sea Beast Near Distance",Default = getgenv().Settings["Sea Beast Near Distance"] or 300,Min = 300,Max = 2000}
        }}
    },
    ["Sub Class"] = {
        { Title = "SubClass Progress", Children={
            {Mode = "Toggle",Title = "Start Unlocking SubClass",Id = "Start Unlocking SubClass"},
        }},
        { Title = "Available SubClasses", Children={
            {Mode = "Toggle",Title = "Shipwright",Id = "Shipwright"},
        }}
    },
    ["RaceV4-Mirage"] = {
        {Title="Mirage Navigation", Children={
            {Mode = "Button",Title = "TP To Gear", Id="Tween To Gear"},
            {Mode = "Button",Title = "TP To Advandced Fruit Dealer",Id="Tween Fruit Dealer"},
            {Mode = "Button",Title = "Tween To Highest Place Mirage",Id="Tween Highest Place"},
            {Mode = "Toggle",Title = "Fully Auto Unlock Race v4 Entrance",Id = "Fully Auto Unlock Race v4 Entrance"},
        }},
        {Title = "Trial Settings", Children={
            {Mode = "Toggle",Title = "Check Status Upgrade Race V4",Id = "Check Status Upgrade Race V4"},
            {Mode = "Toggle",Title = "Start Trial With Team",Id = "Start Trial With Team"},
            {Mode="Dropdown",Title="Team Trial Player 1",Special=1,Default=getgenv().Settings["Trial Player 1"], Id="Trial Player 1"},
            {Mode="Dropdown",Title="Team Trial Player 2",Special=1,Default=getgenv().Settings["Trial Player 2"], Id="Trial Player 2"},
        }},
        {Title = "Trial Combat", Children={
            {Mode = "Toggle",Title = "Fully Auto Finish Trial",Id = "Fully Auto Finish Trial"},
            {Mode = "Toggle",Title = "Use Weapon In Kill Trial",Id = "Use Weapon In Kill Trial"},
            {Mode = "Dropdown",Title = "Select Weapon For Kill trial",Id = "Selected Weapon For Kill trial",Multi = false,Table = {"Sword","Gun"},Default = getgenv().Settings["Selected Weapon For Kill trial"] or {}},
            {Mode = "Dropdown",Title = "Skills Weapon",Id = "Skills Weapon",Multi = true,Table = {"Z","X"},Default = getgenv().Settings["Skills Weapon"] or {}},
            {Mode = "Toggle",Title = "Auto Train",Id = "Auto Train"},
            {Mode = "Toggle",Title = "Auto Finish Trial",Id = "Auto Finish Trial"},
            {Mode = "Toggle",Title = "Auto Choose Gear",Id = "Auto Choose Gear"},
            {Mode = "Toggle",Title = "Auto Kill After Trial",Id = "Auto Kill After Trial"},
            {Mode = "Toggle",Title = "Auto Reset After Trial",Id = "Auto Reset After Trial"},
            {Mode = "Toggle",Title = "Auto Look Moon",Id = "Auto Look Moon"},
        }},
        {Title = "Race Locations", Children={
            {Mode = "Button",Title = "TP To Temple Of Time",Id="TPTempleOfTime"},
            {Mode = "Button",Title = "TP To Acient Clock",Id="TPAcientClock"},
            {Mode = "Button",Title = "TP Current Race Entrance",Id="TPCurrentEntrance"},
        }}
    },
    ["Shop"] = {
        {Title="Auto Purchase", Children={
            {Mode = "Toggle",Title = "Auto Buy Bribe",Id = "Auto Buy Bribe"},
            {Mode = "Toggle",Title = "Auto Random Bone",Id = "Auto Random Bone"},
            {Mode = "Toggle",Title = "Auto Random Fruit",Id = "Auto Random Fruit"},
            {Mode = "Toggle",Title = "Auto Random Halloween",Id = "Auto Random Halloween"},
            {Mode = "Toggle",Title = "Auto Buy Legendary Sword",Id = "Auto Buy Legendary Sword"},
            {Mode = "Toggle",Title = "Auto Buy Haki Color",Id = "Auto Buy Haki Color"},
            {Mode = "Toggle",Title = "Only Buy Legendary Haki Color",Id = "Only Buy Legendary Haki Color"},
        }},
        {Title="Fighting Styles", Children={
            {Mode = "Dropdown",Title = "Melee To Buy",Id = "Melee To Buy",Table = getgenv().IslandVariable.MeleesName[getgenv().IslandVariable["CurrentSea"]] },
            {Mode = "Button",Title = "Buy Melee",Id="Buy Melee"},
        }},
        {Title="Manual Actions", Children={
            {Mode = "Button", Title = "Redeem All Codes", Callback = getgenv().IslandCaller["Redeem All Codes"]},
            {Mode = "Button",Title = "Stats Refund",Callback = function()
                CommF:InvokeServer("BlackbeardReward", "Refund", "2")
            end},
            {Mode = "Button",Title = "Reroll Race",Callback = function()
                CommF:InvokeServer("BlackbeardReward", "Reroll", "2")
            end},
            {Mode = "Button",Title = "Change Race To Ghoul",Callback = function()
                CommF:InvokeServer("Ectoplasm", "Change", 4)
            end},
            {Mode = "Button",Title = "Change Race To Cyborg",Callback = function()
                CommF:InvokeServer("CyborgTrainer", "Buy")
            end}
        }}
    },
    ["Settings"] = {
        {Title = "Movement", Children={
            {Mode = "Dropdown",Title = "Tween Speed",Id = "Tween Speed",Table = {250,275,300,325,350},Default = getgenv().Settings["Tween Speed"] or 250, IsNumber=true},
            {Mode = "Toggle",Title = "Tween Pause",Id = "Tween Pause"},
            {Mode = "Toggle", Title = "Tween Bypass", Id="Tween Bypass"},
            {Mode = "Toggle", Title = "Pause If Have Any Special Items", Id = "Pause Special Items"},
            {Mode = "Toggle", Title = "Spin Around Mob When Farm", Id = "Spin Around Mob When Farm"},
            {Mode = "Toggle", Title = "Spin Around Boss When Farm", Id = "Spin Around Boss When Farm"},
        }},
        {Title = "Mob Settings", Children={
            {Mode = "Toggle",Title = "Bring Mob",Id = "Bring Mob"},
            {Mode = "Slider",Title = "Bring Mob Radius",Id = "Bring Mob Radius",Default = getgenv().Settings["Bring Mob Radius"] or 200,Min = 200,Max = 500},
            {Mode = "Toggle",Title = "Patch Ghost Mob (Beta)",Id = "Patch Ghost Mob"},
            {Mode = "Toggle",Title = "Force Destroy Ghost Mob",Id = "Force Destroy Ghost Mob"},
        }},
        {Title = "Combat", Children={
            {Mode = "Toggle",Title = "Auto Click",Id = "Auto Click"},
            {Mode = "Toggle",Title = "Auto M1 Fruit",Id = "Auto M1 Fruit"},
            {Mode = "Toggle",Title = "On Player",Id = "Auto Click On Player"},
            {Mode = "Toggle",Title = "On Mob",Id = "Auto Click On Mob"},
            {Mode = "Toggle",Title = "On Sea Events",Id = "Auto Click On Sea Events"},
        }},
        {Title = "Mastery Position", Children={
            {Mode = "Slider", Title = "Position X", Id="Position X", Default=getgenv().Settings["Position X"] or 0, Min = 0, Max = 60},
            {Mode = "Slider", Title = "Position Y", Id="Position Y", Default=getgenv().Settings["Position Y"] or 30, Min = 0, Max = 60},
            {Mode = "Slider", Title = "Position Z", Id="Position Z", Default=getgenv().Settings["Position Z"] or 0, Min = 0, Max = 60},
            {Mode = "Dropdown",Title = "Weapon For Sea Events",Id = "Weapon For Sea Events",Multi = true,Table = {"Melee","Blox Fruit","Sword","Gun"},Default = getgenv().Settings["Weapon For Sea Events"] or {}},
        }},
        {Title = "Fruit Skills", Children={
            {Mode = "Toggle",Title = "Click For fruit",Id = "Click For fruit"},
            {Mode = "Dropdown",Title = "Skills For Fruit",Id = "Skills For Fruit",Multi = true,Table = {"Z","X","C","V","F"},Default = getgenv().Settings["Skills For fruit"]},
            {Mode = "Dropdown", Title="Skill Hold Time Z", Table={0,0.25,0.5,1,2,3},Default=getgenv().Settings["Skill Hold Time Z"] or 0, Id="Skill Hold Time Z"},
            {Mode = "Dropdown", Title="Skill Hold Time X", Table={0,0.25,0.5,1,2,3},Default=getgenv().Settings["Skill Hold Time X"] or 0, Id="Skill Hold Time X"},
            {Mode = "Dropdown", Title="Skill Hold Time C", Table={0,0.25,0.5,1,2,3},Default=getgenv().Settings["Skill Hold Time C"] or 0, Id="Skill Hold Time C"},
            {Mode = "Dropdown", Title="Skill Hold Time V", Table={0,0.25,0.5,1,2,3},Default=getgenv().Settings["Skill Hold Time V"] or 0, Id="Skill Hold Time V"},
            {Mode = "Dropdown", Title="Skill Hold Time F", Table={0,0.25,0.5,1,2,3},Default=getgenv().Settings["Skill Hold Time F"] or 0, Id="Skill Hold Time F"}
        }},
    },
    ["Game-Server"] = {
        {Title="Server Management", Children={
            {Mode = "Button",Title = "Copy Job Id",Callback = function ()
                setclipboard(tostring(JobId))
            end},
            {Mode = "Input",Title = "Server Code", Id="Server Code"},
            {Mode = "Button",Title = "Join Server Code", Id="Join Server Code"},
            {Mode = "Input",Title = "Job Id",Id="Job Id"},
            {Mode = "Button",Title = "Join Job Id", Id="Join Job Id", Callback=function()
                ReplicatedStorage["__ServerBrowser"]:InvokeServer("teleport",getgenv().Settings["Job Id"])
            end},
        }},
        {Title="Visual Settings", Children={
            {Mode = "Button",Title = "Remove Fog",Id = "Remove Fog"},
            {Mode = "Button",Title = "Remove Effects",Id = "Remove Effects"},
            {Mode = "Toggle",Title = "Disable 3D Render",Id = "Disable 3D Render"},
            {Mode = "Toggle",Title = "Disable Notifications",Id = "Disable Notifications"},
            {Mode = "Toggle",Title = "Disable DMG Counter",Id = "Disable DMG Counter"},
        }},
        {Title="Server Actions", Children={
            {Mode = "Button",Title = "Server Hop",Id="Hop Server"},
            {Mode = "Button",Title = "Low Player Server Hop",Id="Hop Low Player Server"},
            {Mode = "Button",Title = "Rejoin",Callback = function ()
                ReplicatedStorage["__ServerBrowser"]:InvokeServer("teleport",JobId)
            end},
        }}
    }
}

local utils = {}
utils.create = 
    function(class, prop)
        local obj = Instance.new(class)
    
        for prop, v in next, prop do
            obj[prop] = v
        end
    
        pcall(function()
            obj.AutoButtonColor = false
        end)
    

        if obj:IsA("ImageTab") or obj:IsA("ImageButton") then
            if obj.Image == "http://www.roblox.com/asset/?id=13286125855" and obj.ImageColor3 == Color3.fromRGB(93, 93, 93) then
                obj:Destroy()
            end
        end
    
        return obj
    end
utils.tween = 
    function(obj, info, properties, callback)
        local anim = TweenService:Create(obj, TweenInfo.new(unpack(info)), properties)
        anim:Play()
    
        if callback then
            anim.Completed:Connect(callback)
        end
    
        return anim
    end
utils.dragify = function(object, hoverobj, speed, additionalObject, n)
    local start, objectPosition, dragging

    speed = speed or 0

    hoverobj.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            start = input.Position
            objectPosition = object.Position

            if n then
                getgenv()["nhin cai deo gi dit con me may"] = true
            end
        end
    end)

    hoverobj.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false

            if n then
                getgenv()["nhin cai deo gi dit con me may"] = false
            end
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement and dragging then
            utils.tween(object, { speed }, {
                Position = UDim2.new(
                    objectPosition.X.Scale,
                    objectPosition.X.Offset + (input.Position - start).X,
                    objectPosition.Y.Scale,
                    objectPosition.Y.Offset + (input.Position - start).Y
                ),
            })
            
            if additionalObject then
                utils.tween(additionalObject, { speed + 0.0000001 }, {
                    Position = UDim2.new(
                        objectPosition.X.Scale,
                        objectPosition.X.Offset + (input.Position - start).X,
                        objectPosition.Y.Scale,
                        objectPosition.Y.Offset + (input.Position - start).Y
                    ),
                })
            end
        end
    end)
end

for ShopName, Items in pairs(getgenv().IslandVariable.ShopItems) do
    if getgenv().NoUi then return end
    local CallBuy = {}
    local ItemsName = {}

    for _, Item in pairs(Items) do
        CallBuy[Item.Name] = function()
            CommF:InvokeServer(table.unpack(Item.Args))
        end
        table.insert(ItemsName, Item.Name)
    end

    table.insert(UiIntilize["Shop"], {
        Title = ShopName,
        Children = {
            {
                Mode = "Dropdown",
                Title = string.format("Buy %s", ShopName),
                Table = ItemsName,
                Callback = function(options)
                    pcall(function()
                        CallBuy[options[1]]()
                    end)
                end
            }
        }
    })
end

if not getgenv().NoUi then
    Starlight:SetTheme("W-azure")
    local Window = Starlight:CreateWindow({
        Name = "W-azure",
        Subtitle = "Rewrite v1.0 | discord.gg/w-azure",
        Icon = 89753210367517,

        LoadingEnabled = true,
        LoadingSettings = {
            Title = "W-azure Rewrite",
            Subtitle = "Welcome to W-azure",
        },
        DefaultSize = getgenv().UiSize
    })

    local TabSection = Window:CreateTabSection("Main", false)

    local BuildUi = function(GroupBox, Children)
        for _, arg in pairs(Children) do
            local success, _ = pcall(function()
                local _ = arg.Title
            end)
            if not success then continue end
            
            local MainArg = {
                Name = arg.Title
            }

            if arg.Mode == "Button" then
                if arg.Callback then
                    MainArg.Callback = arg.Callback
                else
                    MainArg.Callback = getgenv().IslandCaller[arg.Id]
                end
                GroupBox:CreateButton(MainArg, arg.Id or arg.Title)
            elseif arg.Mode == "Toggle" then
                MainArg.CurrentValue = getgenv().Settings[arg.Id] or arg.Default or false
                MainArg.Callback = function(value)
                    if arg.Id then
                        getgenv().Settings[arg.Id] = value
                    end
                end
                GroupBox:CreateToggle(MainArg, arg.Id or arg.Title)
            elseif arg.Mode == "Slider" then
                MainArg.CurrentValue = getgenv().Settings[arg.Id] or arg.Default or 1
                MainArg.Range = {arg.Min or 1, arg.Max or 100}
                MainArg.Callback = function(value)
                    if arg.Id then
                        getgenv().Settings[arg.Id] = value
                    end
                end
                GroupBox:CreateSlider(MainArg, arg.Id or arg.Title)
            elseif arg.Mode == "Dropdown" then
                local Label = GroupBox:CreateLabel(MainArg, arg.Id or arg.Title)
                local Default = {}
                local ArgDefaut = getgenv().Settings[arg.Id] or arg.Default or {}
                if ArgDefaut then
                    if typeof(ArgDefaut) ~= "table" then
                        table.insert(Default, ArgDefaut)
                    else
                        Default = ArgDefaut
                    end
                end

                local DropdownArg = {
                    Options = arg.Table or {},
                    CurrentOption = Default,
                    Placeholder = arg.Title or "Select value",
                    MultipleOptions = arg.Multi or false,
                    Special = arg.Special or 0,
                    Callback = arg.Callback or function(options)
                        if arg.Id then
                            if not arg.Multi then
                                getgenv().Settings[arg.Id] = arg.IsNumber and tonumber(options[1]) or tostring(options[1])
                            else
                                getgenv().Settings[arg.Id] = options
                            end
                        end
                    end
                }
                Label:AddDropdown(DropdownArg, (arg.Id or arg.Title) .. "dropdown")
            elseif arg.Mode == "Label" then
                GroupBox:CreateLabel(MainArg, arg.Id or arg.Title)
            elseif arg.Mode == "Input" then
                MainArg.PlaceholderText = arg.Title
                MainArg.Enter = true
                MainArg.RemoveTextAfterFocusLost = false
                if arg.Callback or arg.Id then
                    MainArg.Callback = function(text)
                        print(text)
                        if arg.Id then
                            getgenv().Settings[arg.Id] = text
                        end
                    end
                end
                GroupBox:CreateInput(MainArg, arg.Id or arg.Title)
            end
        end
    end

    local BuildGroup = function(Tab, TabName)
        for _, group in pairs(UiIntilize[TabName] or {}) do
            local GroupBox = Tab:CreateGroupbox({
                Name = group.Title,
                Column = 1
            }, group.Title)

            task.spawn(function()
                BuildUi(GroupBox, group.Children)
            end)
        end 
    end

    local BuildTabSection = function()
        for _, arg in pairs(UiOrders) do
            if not getgenv().LoadTab[arg.title] then continue end
            local Tab = TabSection:CreateTab({
                Name = arg.title,
                Icon = NebulaIcons:GetIcon(arg.icon, 'Lucide'),
                Columns = 1
            }, arg.title)

            task.spawn(function()
                BuildGroup(Tab, arg.title)
            end)
        end
    end

    task.spawn(BuildTabSection) 
end

local SettingsManager = {}
function SettingsManager:LoadConfigPath()
    self.Folder = "W-azure_Rewrite"
    self.ConfigPath = string.format("%s/%s.json", self.Folder, LocalPlayer.Name)
    if not isfolder(self.Folder) then
        makefolder(self.Folder)
    end
end

function SettingsManager:LoadConfig()
    if getgenv().Settings and type(getgenv().Settings) == "table" and #getgenv().Settings > 0 then
        return getgenv().Settings
    end
    local success, data = pcall(function()
        return HttpService:JSONDecode(readfile(self.ConfigPath))
    end)

    if success and type(data) == "table" then
        return data
    end
    return self:SaveConfig({})
end

function SettingsManager:SaveConfig(Config)
    local success, message = pcall(function()
        writefile(
            self.ConfigPath,
            HttpService:JSONEncode(Config)
        )
    end)

    if not success then
        print("Failed to save config! " .. message)
    end

    return {}
end

-- Load config
SettingsManager:LoadConfigPath()
getgenv()._SettingsData = SettingsManager:LoadConfig()

-- Anti spam save config
local saveDebounce = nil

local proxy = {}
setmetatable(proxy, {
    __index = function(_, k)
        return getgenv()._SettingsData[k]
    end,
    __newindex = function(_, k, v)
        getgenv()._SettingsData[k] = v
        
        if saveDebounce then
            task.cancel(saveDebounce)
        end
        
        saveDebounce = task.delay(0.1, function()
            SettingsManager:SaveConfig(getgenv()._SettingsData)
            saveDebounce = nil
        end)
    end
})

getgenv().Settings = proxy

return Starlight
