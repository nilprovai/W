getgenv().IslandVariable = {}

if game.PlaceId == 2753915549 then
    getgenv().IslandVariable["IsSea1"] = true
    getgenv().IslandVariable["MaxLevelSea"] = 675
    getgenv().IslandVariable["CurrentSea"] = "Sea 1"
elseif game.PlaceId == 4442272183 then
    getgenv().IslandVariable["IsSea2"] = true
    getgenv().IslandVariable["MaxLevelSea"] = 1450
    getgenv().IslandVariable["CurrentSea"] = "Sea 2"
elseif game.PlaceId == 7449423635 or game.PlaceId == 100117331123089 then
    getgenv().IslandVariable["IsSea3"] = true
    getgenv().IslandVariable["MaxLevelSea"] = 2800
    getgenv().IslandVariable["CurrentSea"] = "Sea 3"
else 
    game.Players.LocalPlayer:Kick(string.format("Unsupported game | %s", tostring(game.PlaceId)))
    while task.wait() do end
end

getgenv().IslandVariable.MetaData = {}
getgenv().IslandVariable.RequestPlaces = {
    ["Sea 1"] = {
        ["Whirl Pool"] = CFrame.new(3864.6884765625, 6.736950397491455, -1926.214111328125),
        ["Sky Area 1"] = CFrame.new(-4607.82275, 872.54248, -1667.55688),
        ["Sky Area 2"] = CFrame.new(-7894.61767578125, 5547.1416015625, -380.29119873046875),
        ["Fish Man"] = CFrame.new(61163.8515625, 11.6796875, 1819.7841796875)
    },
    ["Sea 2"] = {
        ["Swan's room"] = CFrame.new(2284.912109375, 15.152046203613281, 905.48291015625),
        ["Mansion"] = CFrame.new(-288.46246337890625, 306.130615234375, 597.9988403320312),
        ["Ghost Ship"] = CFrame.new(923.21252441406, 126.9760055542, 32852.83203125),
        ["Ghost Ship Entrance"] = CFrame.new(-6508.5581054688, 89.034996032715, -132.83953857422)
    },
    ["Sea 3"] = {
        ["Castle on the sea"] = CFrame.new(-5075.50927734375, 314.5155029296875, -3150.0224609375),
        ["Mansion"] = CFrame.new(-12548.998046875, 332.40396118164, -7603.1865234375),
        ["Hydra Island"] = CFrame.new(5661.53027, 1013.38354, -334.961914),
        ["Temple Of Time"] = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875),
        ["Tiki Outpost"] = CFrame.new(-16813.439453125, 58.2912712097168, 304.87396240234375),
        ["Submerged Island"] = CFrame.new(11520.80078125, -2154.98583984375, 9829.513671875)
    }
}
getgenv().IslandVariable.RequestPlacesForFarm = {
    ["Sea 1"] = {
        ["Whirl Pool"] = CFrame.new(3864.6884765625, 6.736950397491455, -1926.214111328125),
        ["Sky Area 1"] = CFrame.new(-4607.82275, 872.54248, -1667.55688),
        ["Sky Area 2"] = CFrame.new(-7894.61767578125, 5547.1416015625, -380.29119873046875),
        ["Fish Man"] = CFrame.new(61163.8515625, 11.6796875, 1819.7841796875)
    },
    ["Sea 2"] = {
        ["Swan's room"] = CFrame.new(2284.912109375, 100.152046203613281, 905.48291015625),
        ["Mansion"] = CFrame.new(-288.46246337890625, 250.130615234375, 597.9988403320312),
        ["Ghost Ship"] = CFrame.new(923.21252441406, 126.9760055542, 32852.83203125),
        ["Ghost Ship Entrance"] = CFrame.new(-6508.5581054688, 120.034996032715, -132.83953857422)
    },
    ["Sea 3"] = {
        ["Castle on the sea"] = CFrame.new(-5075.50927734375, 188.5155029296875, -3150.0224609375),
        ["Mansion"] = CFrame.new(-12548.998046875, 332.40396118164, -7603.1865234375),
        ["Hydra Island"] = CFrame.new(5661.53027, 900.38354, -334.961914),
        ["Temple Of Time"] = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875),
        ["Template Of Time Back"] = CFrame.new(3029.064453125, 199.98846435546875, -7324.943359375),
        ["Tiki Outpost"] = CFrame.new(-16813.439453125, 20.2912712097168, 304.87396240234375),
        ["Submerged Island"] = CFrame.new(11520.80078125, -2154.98583984375, 9829.513671875)
    }
}

getgenv().IslandVariable.RequestPlacesName = {
    ["Sea 1"] = {
        "Whirl Pool",
        "Sky Area 1",
        "Sky Area 2",
        "Fish Man"
    },
    ["Sea 2"] = {
        "Swan's room",
        "Mansion",
        "Ghost Ship",
        "Ghost Ship Entrance"
    },
    ["Sea 3"] = {
        "Castle on the sea",
        "Mansion",
        "Hydra Island",
        "Temple Of Time",
        "Tiki Outpost",
        "Submerged Island"
    }
}

getgenv().IslandVariable.PlacesName = {
    ["Sea 1"] = {
        "Pirate Start Island",
        "Marine Start Island",
        "Middle Town",
        "Jungle",
        "Shank's Room",
        "Pirate Village",
        "Desert",
        "Frozen Village",
        "Marine Fortress",
        "Mob Leader Place",
        "Prison",
        "Colosseum",
        "Skylands",
        "SkyArea1",
        "SkyArea2",
        "Sky Secret Temple",
        "Magma Village",
        "Fish Entrance Island",
        "UnderWater City Gate",
        "UnderWater City",
        "Fountain City"
    },
    ["Sea 2"] = {
        "First Spot",
        "Cafe",
        "Swan Mansion",
        "Swan Room",
        "Factory",
        "Colosseum",
        "Dark Arena",
        "Green bit",
        "Graveyard Island",
        "Snow Mountain",
        "Hot And Cold Island",
        "Cursed Ship Gate",
        "Cursed Ship",
        "Ice Castle",
        "Forgotten Island",
        "Usoap Island",
        "Minisky Island",
        "Indra Island"
    },
    ["Sea 3"] = {
        "Port Town",
        "Hydra Island",
        "Secret Temple",
        "Great Tree",
        "Castle on the sea",
        "Pineapple Town",
        "Mansion",
        "Floating Turtle",
        "Beautiful Pirate Gate",
        "Beautiful Pirate Domain",
        "Friendly Arena",
        "Haunted Castle",
        "Soul Reaper Raid Room",
        "Peanut Island",
        "Ice Cream Island",
        "Sea Of Treats",
        "Tiki Outpost",
        "Mob Trade Anchor",
        "Submerged Island"
    }
}

getgenv().IslandVariable.Places = {
    ["Sea 1"] = {
        ['Pirate Start Island'] = CFrame.new(781.37255859375, 5.7767753601074, 1437.2399902344),
        ['Marine Start Island'] = CFrame.new(-2606.2143554688, 6.7695031166077, 2043.04553222667),
        ['Middle Town'] = CFrame.new(-655.824158, 7.88708115, 1436.67908),
        ['Jungle'] = CFrame.new(-1334.1259765625, 11.852984428406, 502.03717041016),
        ["Shank's Room"] = CFrame.new(-1455.4440917969, 29.851997375488, -37.440139770508),
        ['Pirate Village'] = CFrame.new(-1187.3435058594, 4.7515587806702, 3809.2456054688),
        ['Desert'] = CFrame.new(1094.14587, 6.47350502, 4192.88721),
        ['Frozen Village'] = CFrame.new(1112.4229736328, 7.3036189079285, -1159.3383789062),
        ['Marine Fortress'] = CFrame.new(-4817.0161132812, 20.651899337769, 4368.0639648438),
        ['Mob Leader Place'] = CFrame.new(-2839.7548828125, 7.3262448310852, 5319.9428710938),
        ['Prison'] = CFrame.new(4874.8125, 5.6519904136658, 735.57012939453),
        ['Colosseum'] = CFrame.new(-1423.5014648438, 7.2882599830627, -2798.2961425781),
        ['Skylands'] = CFrame.new(-4970.21875, 717.707275, -2622.35449),
        ['SkyArea1'] = CFrame.new(-4731.9462890625, 845.27691650391, -1933.5628662109),
        ['SkyArea2'] = CFrame.new(-7884.7309570312, 5545.509765625, -383.34613037109),
        ['Sky Secret Temple'] = CFrame.new(-8018.662109375, 5609.9936523438, -1979.3544921875),
        ['Magma Village'] = CFrame.new(-5231.75879, 8.61593437, 8467.87695),
        ["Fish Entrance Island"] = CFrame.new(3868.501953125, 5.592349529266357, -1917.993408203125),
        ['UnderWater City Gate'] = CFrame.new(3853.0385742188, 5.3731479644775, -1919.4447021484),
        ['UnderWater City'] = CFrame.new(61092.36328125, 18.471633911133, 1711.1674804688),
        ['Fountain City'] = CFrame.new(5053.0297851562, 1.5012743473053, 4054.8439941406),
    },
    ["Sea 2"] = {
        ['First Spot'] = CFrame.new(-11.845784187317, 29.276727676392, 2768.9770507812),
        ['Cafe'] = CFrame.new(-384.03524780273, 73.020072937012, 353.2282409668),
        ['Swan Mansion'] = CFrame.new(-390.096313, 331.886475, 673.464966),
        ['Swan Room'] = CFrame.new(2302.19019, 15.1778421, 663.811035),
        ['Factory'] = CFrame.new(430.42569, 210.019623, -432.504791),
        ['Colosseum'] = CFrame.new(-1836.58191, 44.5890656, 1360.30652),
        ['Dark Arena'] = CFrame.new(3781.985107421875, 14.8506498336792, -3498.081298828125),
        ['Green bit'] = CFrame.new(-2304.93359375, 72.966117858887, -2782.6965332031),
        ['Graveyard Island'] = CFrame.new(-5377.3295898438, 8.9691047668457, -708.45489501953),
        ['Snow Mountain'] = CFrame.new(554.47235107422, 401.42199707031, -5364.732421875),
        ['Hot And Cold Island'] = CFrame.new(-5944.7875976562, 15.951756477356, -5114.8725585938),
        ['Cursed Ship Gate'] = CFrame.new(-6509.4169921875, 83.187019348145, -137.396774291998),
        ['Cursed Ship'] = CFrame.new(902.059143, 124.752518, 33071.8125),
        ['Ice Castle'] = CFrame.new(5662.44140625, 28.191165924072, -5982.9755859375),
        ['Forgotten Island'] = CFrame.new(-3043.31543, 238.881271, -10191.5791),
        ['Usoap Island'] = CFrame.new(4778.2431640625, 8.2086620330811, 2871.4936523438),
        ['Minisky Island'] = CFrame.new(-260.358917, 49325.7031, -35259.3008),
        ['Indra Island'] = CFrame.new(-27007.9363, 9.033, 466.6544),
    },
    ["Sea 3"] = {
        ['Port Town'] = CFrame.new(-527.2267456054688, 20.71989631652832, 5398.4462890625),
        ['Hydra Island'] = CFrame.new(5335.88623046875, 1004.7794799804688, 241.50193786621094),
        ['Secret Temple'] = CFrame.new(5231.6831054688, 7.3780846595764, 1102.6005859375),
        ['Great Tree'] = CFrame.new(2253.0600585938, 24.144220352173, -6405.6694335938),
        ['Castle on the sea'] = CFrame.new(-5026.3584, 323.515503, -2996.28442),
        ['Pineapple Town'] = CFrame.new(-11363.5166, 362.381439, -10327.9727),
        ['Mansion'] = CFrame.new(-12553.0595703125, 337.3874816894531, -7471.96142578125),
        --['Mansion(Insta TP)'] = game:GetService("Workspace").Map.Turtle.TradeTable.P1.CFrame,
        ['Floating Turtle'] = CFrame.new(-12001.6152, 1707.39319, -8789.03711),
        ['Beautiful Pirate Gate'] = CFrame.new(-11990.901367188, 331.80770874023, -8845.5888671875),
        ['Beautiful Pirate Domain'] = CFrame.new(5310.80957, 160.446838, 129.390533),
        ['Friendly Arena'] = CFrame.new(5220.28955, 72.8193436, -1500.86304),
        ['Haunted Castle'] = CFrame.new(-9530.61035, 200.860657, 5763.13477),
        ['Soul Reaper Raid Room'] = CFrame.new(-9522.0957, 315.89975, 6751.88818),
        ['Peanut Island'] = CFrame.new(-2087.0561523438, 11.722011566162, -10002.080078125),
        ['Ice Cream Island'] = CFrame.new(-851.74633789062, 65.819496154785, -10932.150390625),
        ['Sea Of Treats'] = CFrame.new(-1907.1773681640625, 9.565654754638672, -11539.8251953125),
        ["Tiki Outpost"] = CFrame.new(-16256.5566, 9.06057358, 430.995422),
        ["Mob Trade Anchor"] = CFrame.new(-16529.705078125, 108.0355224609375, 748.5739135742188),
        ["Submerged Island"] = CFrame.new(11317.915, -2139.20947, 9725.34863)
    }
}

getgenv().IslandVariable.MobCFrames = {
    ["Bandit"] = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125),
    ["Monkey"] = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209),
    ["Gorilla"] = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875),
    ["Pirate"] = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125),
    ["Brute"] = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875),
    ["Desert Bandit"] = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375),
    ["Desert Officer"] = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875),
    ["Snow Bandit"] = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125),
    ["Snowman"] = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625),
    ["Chief Petty Officer"] = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625),
    ["Sky Bandit"] = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625),
    ["Dark Master"] = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625),
    ["Prisoner"] = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781),
    ["Dangerous Prisoner"] = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375),
    ["Toga Warrior"] = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625),
    ["Gladiator"] = { CFrame.new(-1483, 36, -3188), CFrame.new(-1282, 36, -3059), CFrame.new(-1380, 36, -3405), CFrame.new(-1104, 36, -3260) },
    ["Military Soldier"] = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875),
    ["Military Spy"] = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375),
    ["Fishman Warrior"] = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625),
    ["Fishman Commando"] = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875),
    ["God's Guard"] = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375),
    ["Shanda"] = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531),
    ["Royal Squad"] = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875),
    ["Royal Soldier"] = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625),
    ["Galley Pirate"] = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875),
    ["Galley Captain"] = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375),
    ["Raider"] = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125),
    ["Mercenary"] = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625),
    ["Swan Pirate"] = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625),
    ["Factory Staff"] = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875),
    ["Marine Lieutenant"] = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125),
    ["Marine Captain"] = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625),
    ["Zombie"] = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875),
    ["Vampire"] = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625),
    ["Snow Trooper"] = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875),
    ["Winter Warrior"] = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625),
    ["Lab Subordinate"] = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375),
    ["Horned Warrior"] = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375),
    ["Magma Ninja"] = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375),
    ["Lava Pirate"] = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875),
    ["Ship Deckhand"] = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375),
    ["Ship Engineer"] = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875),
    ["Ship Steward"] = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625),
    ["Ship Officer"] = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625),
    ["Arctic Warrior"] = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125),
    ["Snow Lurker"] = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375),
    ["Sea Soldier"] = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125),
    ["Water Fighter"] = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875),
    ["Pirate Millionaire"] = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375),
    ["Pistol Billionaire"] = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875),
    ["Dragon Crew Warrior"] = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625),
    ["Dragon Crew Archer"] = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125),
    ["Female Islander"] = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312),
    ["Giant Islander"] = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508),
    ["Marine Commodore"] = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125),
    ["Marine Rear Admiral"] = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125),
    ["Fishman Raider"] = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625),
    ["Fishman Captain"] = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625),
    ["Forest Pirate"] = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625),
    ["Mythological Pirate"] = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125),
    ["Jungle Pirate"] = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625),
    ["Musketeer Pirate"] = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375),
    ["Reborn Skeleton"] = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625),
    ["Living Zombie"] = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875),
    ["Demonic Soul"] = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625),
    ["Posessed Mummy"] = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625),
    ["Peanut Scout"] = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875),
    ["Peanut President"] = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875),
    ["Ice Cream Chef"] = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125),
    ["Ice Cream Commander"] = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625),
    ["Cookie Crafter"] = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375),
    ["Cake Guard"] = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875),
    ["Baking Staff"] = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375),
    ["Head Baker"] = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125),
    ["Cocoa Warrior"] = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125),
    ["Chocolate Bar Battler"] = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375),
    ["Sweet Thief"] = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625),
    ["Candy Rebel"] = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625),
    ["Candy Pirate"] = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875),
    ["Isle Outlaw"] = CFrame.new(-16479.900390625, 226.6117401123047, -300.3114318847656),
    ["Island Boy"] = CFrame.new(-16849.396484375, 192.86505126953125, -150.7853240966797),
    ["Sun-kissed Warrior"] = CFrame.new(-16347, 64, 984),
    ["Isle Champion"] = CFrame.new(-16602.1015625, 130.38734436035156, 1087.24560546875),
    ["Reef Bandits"] = CFrame.new(10951.1923828125, -2129.016357421875, 9204.857421875),
    ["Coral Pirate"] = CFrame.new(10719.966796875, -2057.72705078125, 9335.9169921875),
    ["Sea Chanter"] = CFrame.new(10627.85546875, -2020.623291015625, 10054.09375),
    ["Ocean Prophet"] = CFrame.new(10987.8828125, -1893.29638671875, 10142.75390625),
    ["High Disciple"] = CFrame.new(9810.33984375, -1942.426025390625, 9675.396484375),
    ["Grand Devotee"] = CFrame.new(9594.40234375, -1959.7091064453125, 9851.576171875),
}

getgenv().IslandVariable.TripleQuest = {
    ["Sea 1"] = {
        [150] = {
            ["Quest"] = "SkyQuest",
            QuestCFrame = CFrame.new(-4841.83447, 717.669617, -2623.96436),
            [1] = {
                Requirement = 150,
                Mob = "Sky Bandit",
                QuestCheck = "Sky Bandit",
            },
            [2] = {
                Requirement = 175,
                Mob = "Dark Master",
                QuestCheck = "Dark Master",
            },
        },
        [190] = {
            ["Quest"] = "PrisonerQuest",
            QuestCFrame = CFrame.new(5311.4677734375, 1.6553531885147095, 478.103271484375),
            [1] = {
                Requirement = 190,
                Mob = "Prisoner",
                QuestCheck = "Prisoner",
            },
            [2] = {
                Requirement = 210,
                Mob = "Dangerous Prisoner",
                QuestCheck = "Dangerous Prisoner",
            },
        },
        [250] = {
            ["Quest"] = "ColosseumQuest",
            QuestCFrame = CFrame.new(-1576.11743, 7.38933945, -2983.30762),
            [1] = {
                Requirement = 250,
                Mob = "Toga Warrior",
                QuestCheck = "Toga Warrior",
            },
            [2] = {
                Requirement = 275,
                Mob = "Gladiator",
                QuestCheck = "Gladiator",
            },
        },
        [300] = {
            ["Quest"] = "MagmaQuest",
            QuestCFrame = CFrame.new(-5316.55859, 12.2370615, 8517.2998),
            [1] = {
                Requirement = 300,
                Mob = "Military Soldier",
                QuestCheck = "Military Soldier",
            },
            [2] = {
                Requirement = 325,
                Mob = "Military Spy",
                QuestCheck = "Military Spy",
            },
            [3] = {
                Requirement = 350,
                Boss = "Magma Admiral",
                QuestCheck = "Magma Admiral",
                ["Quest"] = "MagmaQuest",
                QuestCFrame = CFrame.new(-5316.55859, 12.2370615, 8517.2998),
            },
        },
        [400] = {
            ["Quest"] = "FishmanQuest",
            QuestCFrame = CFrame.new(61122.5625, 18.4716396, 1568.16504),
            [1] = {
                Requirement = 375,
                Mob = "Fishman Warrior",
                QuestCheck = "Fishman Warrior",
            },
            [2] = {
                Requirement = 400,
                Mob = "Fishman Commando",
                QuestCheck = "Fishman Commando",
            },
            [3] = {
                Requirement = 425,
                Boss = "Fishman Lord",
                QuestCheck = "Fishman Lord",
                ["Quest"] = "FishmanQuest",
                QuestCFrame = CFrame.new(61122.5625, 18.4716396, 1568.16504),
            },
        },
        [475] = {
            ["Quest"] = "SkyExp1Quest",
            QuestCFrame = CFrame.new(-4720.853515625, 845.2769775390625, -1947.7744140625),
            [1] = {
                Requirement = 450,
                Mob = "God's Guard",
                QuestCheck = "God's Guard",
            },
            [2] = {
                Requirement = 475,
                Mob = "Shanda",
                QuestCheck = "Shanda",
            },
            [3] = {
                Requirement = 500,
                Boss = "Wysper",
                QuestCheck = "Wysper",
                ["Quest"] = "SkyExp1Quest",
                QuestCFrame = CFrame.new(-4720.853515625, 845.2769775390625, -1947.7744140625),
            },
        },
        [550] = {
            ["Quest"] = "SkyExp2Quest",
            QuestCFrame = CFrame.new(-7905.25732421875, 5636.03857421875, -1409.6732177734375),
            [1] = {
                Requirement = 525,
                Mob = "Royal Squad",
                QuestCheck = "Royal Squad",
            },
            [2] = {
                Requirement = 550,
                Mob = "Royal Soldier",
                QuestCheck = "Royal Soldier",
            },
            [3] = {
                Requirement = 575,
                Boss = "Thunder God",
                QuestCheck = "Thunder God",
                ["Quest"] = "SkyExp2Quest",
                QuestCFrame = CFrame.new(-7905.25732421875, 5636.03857421875, -1409.6732177734375),
            },    
        },
        [650] = {
            ["Quest"] = "FountainQuest",
            QuestCFrame = CFrame.new(5257.68505859375, 38.50114059448242, 4046.49560546875),
            [1] = {
                Requirement = 625,
                Mob = "Galley Pirate",
                QuestCheck = "Galley Pirate",
            },
            [2] = {
                Requirement = 650,
                Mob = "Galley Captain",
                QuestCheck = "Galley Captain",
            },
            [3] = {
                Requirement = 675,
                Boss = "Cyborg",
                QuestCheck = "Cyborg",
                ["Quest"] = "FountainQuest",
                QuestCFrame = CFrame.new(5257.68505859375, 38.50114059448242, 4046.49560546875),
            },    
        },
    },
    ["Sea 2"] = {
        [700] = {
            ["Quest"] = "Area1Quest",
            QuestCFrame = CFrame.new(-424.080078, 73.0055847, 1836.91589),
            [1] = {
                Requirement = 700,
                Mob = "Raider",
                QuestCheck = "Raider",
            },
            [2] = {
                Requirement = 725,
                Mob = "Mercenary",
                QuestCheck = "Mercenary",
            },
            [3] = {
                Requirement = 750,
                Boss = "Diamond",
                QuestCheck = "Diamond",
                ["Quest"] = "Area1Quest",
                QuestCFrame = CFrame.new(-424.080078, 73.0055847, 1836.91589),
            },       
        },
        [775] = {
            ["Quest"] = "Area2Quest",
            QuestCFrame = CFrame.new(934.597229, 73.3029785, 1250.96814),
            [1] = {
                Requirement = 775,
                Mob = "Swan Pirate",
                QuestCheck = "Swan Pirate",
            },
            [2] = {
                Requirement = 800,
                Mob = "Factory Staff",
                QuestCheck = "Factory Staff",
            },
            [3] = {
                Requirement = 800,
                Boss = "Jeremy",
                QuestCheck = "Jeremy",
                ["Quest"] = "Area2Quest",
                QuestCFrame = CFrame.new(934.597229, 73.3029785, 1250.96814),
            },       
        },
        [875] = {
            ["Quest"] = "MarineQuest3",
            QuestCFrame = CFrame.new(-2442.65015, 73.0511475, -3219.11523),
            [1] = {
                Requirement = 875,
                Mob = "Marine Lieutenant",
                QuestCheck = "Marine Lieutenant",
            },
            [2] = {
                Requirement = 900,
                Mob = "Marine Captain",
                QuestCheck = "Marine Captain",
            },
            [3] = {
                Requirement = 925,
                Boss = "Fajita",
                QuestCheck = "Fajita",
                ["Quest"] = "MarineQuest3",
                QuestCFrame = CFrame.new(-2442.65015, 73.0511475, -3219.11523),
            },         
        },
        [950] = {
            ["Quest"] = "ZombieQuest",
            QuestCFrame = CFrame.new(-5492.79395, 48.5151672, -793.710571),
            [1] = {
                Requirement = 950,
                Mob = "Zombie",
                QuestCheck = "Zombie",
            },
            [2] = {
                Requirement = 975,
                Mob = "Vampire",
                QuestCheck = "Vampire",
            },       
        },
        [1000] = {
            ["Quest"] = "SnowMountainQuest",
            QuestCFrame = CFrame.new(604.964966, 401.457062, -5371.69287),
            [1] = {
                Requirement = 1000,
                Mob = "Snow Trooper",
                QuestCheck = "Snow Trooper",
            },
            [2] = {
                Requirement = 1050,
                Mob = "Winter Warrior",
                QuestCheck = "Winter Warrior",
            }, 
        },
        [1100] = {
            ["Quest"] = "IceSideQuest",
            QuestCFrame = CFrame.new(-6060.10693, 15.9868021, -4904.7876),
            [1] = {
                Requirement = 1100,
                Mob = "Lab Subordinate",
                QuestCheck = "Lab Subordinate",
            },
            [2] = {
                Requirement = 1125,
                Mob = "Horned Warrior",
                QuestCheck = "Horned Warrior",
            },     
            [3] = {
                Requirement = 1150,
                Boss = "Smoke Admiral",
                QuestCheck = "Smoke Admiral",
                ["Quest"] = "IceSideQuest",
                QuestCFrame = CFrame.new(-6060.10693, 15.9868021, -4904.7876),
            },   
        },
        [1175] = {
            ["Quest"] = "FireSideQuest",
            QuestCFrame = CFrame.new(-5431.09473, 15.9868021, -5296.53223),
            [1] = {
                Requirement = 1175,
                Mob = "Magma Ninja",
                QuestCheck = "Magma Ninja",
            },
            [2] = {
                Requirement = 1200,
                Mob = "Lava Pirate",
                QuestCheck = "Lava Pirate",
            },     
            [3] = {
                Requirement = 1150,
                Boss = "Smoke Admiral",
                QuestCheck = "Smoke Admiral",
                ["Quest"] = "IceSideQuest",
                QuestCFrame = CFrame.new(-6060.10693, 15.9868021, -4904.7876),
            }, 
        },
        [1250] = {
            ["Quest"] = "ShipQuest1",
            QuestCFrame = CFrame.new(1037.80127, 125.092171, 32911.6016),
            [1] = {
                Requirement = 1250,
                Mob = "Ship Deckhand",
                QuestCheck = "Ship Deckhand",
            },
            [2] = {
                Requirement = 1275,
                Mob = "Ship Engineer",
                QuestCheck = "Ship Engineer",
            },     
        },
        [1300] = {
            ["Quest"] = "ShipQuest2",
            QuestCFrame = CFrame.new(968.80957, 125.092171, 33244.125),
            [1] = {
                Requirement = 1300,
                Mob = "Ship Steward",
                QuestCheck = "Ship Steward",
            },
            [2] = {
                Requirement = 1325,
                Mob = "Ship Officer",
                QuestCheck = "Ship Officer",
            },     
        },
        [1350] = {
            ["Quest"] = "FrostQuest",
            QuestCFrame = CFrame.new(5669.43506, 28.2117786, -6482.60107),
            [1] = {
                Requirement = 1350,
                Mob = "Arctic Warrior",
                QuestCheck = "Arctic Warrior",
            },
            [2] = {
                Requirement = 1375,
                Mob = "Snow Lurker",
                QuestCheck = "Snow Lurker",
            },      
            [3] = {
                Requirement = 1400,
                Boss = "Awakened Ice Admiral",
                QuestCheck = "Awakened Ice Admiral",
                ["Quest"] = "FrostQuest",
                QuestCFrame = CFrame.new(5669.43506, 28.2117786, -6482.60107),
            },
        },
        [1425] = {
            ["Quest"] = "ForgottenQuest",
            QuestCFrame = CFrame.new(-3053.89648, 236.881363, -10148.2324),
            [1] = {
                Requirement = 1425,
                Mob = "Sea Soldier",
                QuestCheck = "Sea Soldier",
            },
            [2] = {
                Requirement = 1450,
                Mob = "Water Fighter",
                QuestCheck = "Water Fighter",
            },      
            [3] = {
                Requirement = 1475,
                Boss = "Tide Keeper",
                QuestCheck = "Tide Keeper",
                ["Quest"] = "ForgottenQuest",
                QuestCFrame = CFrame.new(-3053.89648, 236.881363, -10148.2324),
            },   
        },
    },    
    ["Sea 3"] = {
        [1500] = {
            ["Quest"] = "PiratePortQuest",
            QuestCFrame = CFrame.new(-292.5743713378906, 43.79322052001953, 5583.04052734375),
            [1] = {
                Requirement = 1500,
                Mob = "Pirate Millionaire",
                QuestCheck = "Pirate Millionaire",
            },
            [2] = {
                Requirement = 1525,
                Mob = "Pistol Billionaire",
                QuestCheck = "Pistol Billionaire",
            },
            [3] = {
                Requirement = 1550,
                Boss = "Stone",
                QuestCheck = "Stone",
                ["Quest"] = "PiratePortQuest",
                QuestCFrame = CFrame.new(-292.5743713378906, 43.79322052001953, 5583.04052734375),
            },

        },
        [1575] = {
            ["Quest"] = "DragonCrewQuest",
            QuestCFrame = CFrame.new(5833.5776367188, 51.575191497803, -1102.7550048828),
            [1] = {
                Requirement = 1575,
                Mob = "Dragon Crew Warrior",
                QuestCheck = "Dragon Crew Warrior",
            },
            [2] = {
                Requirement = 1600,
                Mob = "Dragon Crew Archer",
                QuestCheck = "Dragon Crew Archer",
            },
        },
        
        [1625] = {
            ["Quest"] = "VenomCrewQuest",
            QuestCFrame = CFrame.new(5216.09521484375, 1004.1062622070312, 758.3895874023438),
            [1] = {
                Requirement = 1625,
                Mob = "Hydra Enforcer",
                QuestCheck = "Hydra Enforcer",
            },
            [2] = {
                Requirement = 1650,
                Mob = "Venomous Assailant",
                QuestCheck = "Venomous Assailant",
            },
            [3] = {
                Requirement = 1675,
                Boss = "Island Empress",
                QuestCheck = "Island Empress",
                ["Quest"] = "VenomCrewQuest",
                QuestCFrame = CFrame.new(5216.09521484375, 1004.1062622070312, 758.3895874023438),
            },
        },
        [1700] = {
            ["Quest"] = "MarineTreeIsland",
            QuestCFrame = CFrame.new(2179.2548828125, 28.701448440552, -6739.7299804688),
            [1] = {
                Requirement = 1700,
                Mob = "Marine Commodore",
                QuestCheck = "Marine Commodore",
            },
            [2] = {
                Requirement = 1725,
                Mob = "Marine Rear Admiral",
                QuestCheck = "Marine Rear Admiral",
            },
            [3] = {
                Requirement = 1750,
                Boss = "Kilo Admiral",
                QuestCheck = "Kilo Admiral",
                ["Quest"] = "MarineTreeIsland",
                QuestCFrame = CFrame.new(2179.2548828125, 28.701448440552, -6739.7299804688),
            },
        },
        [1775] = {
            ["Quest"] = "DeepForestIsland3",
            QuestCFrame = CFrame.new(-10580.998046875, 331.75863647461, -8758.193359375),
            [1] = {
                Requirement = 1775,
                Mob = "Fishman Raider",
                QuestCheck = "Fishman Raider",
            },
            [2] = {
                Requirement = 1800,
                Mob = "Fishman Captain",
                QuestCheck = "Fishman Captain",
            },
        },
        
        
        [1825] = {
            ["Quest"] = "DeepForestIsland",
            QuestCFrame = CFrame.new(-13231.467773438, 332.37414550781, -7626.6860351563),
            [1] = {
                Requirement = 1825,
                Mob = "Forest Pirate",
                QuestCheck = "Forest Pirate",
            },
            [2] = {
                Requirement = 1850,
                Mob = "Mythological Pirate",
                QuestCheck = "Mythological Pirate",
            },
            [3] = {
                Requirement = 1875,
                Boss = "Captain Elephant",
                QuestCheck = "Captain Elephant",
                ["Quest"] = "DeepForestIsland",
                QuestCFrame = CFrame.new(-13231.467773438, 332.37414550781, -7626.6860351563),
            },
        },
        [1900] = {
            ["Quest"] = "DeepForestIsland2",
            QuestCFrame = CFrame.new(-12683.189453125, 390.85668945313, -9902.15625),
            [1] = {
                Requirement = 1900,
                Mob = "Jungle Pirate",
                QuestCheck = "Jungle Pirate",
            },
            [2] = {
                Requirement = 1925,
                Mob = "Musketeer Pirate",
                QuestCheck = "Musketeer Pirate",
            },
            [3] = {
                Requirement = 1875,
                Boss = "Captain Elephant",
                QuestCheck = "Captain Elephant",
                ["Quest"] = "DeepForestIsland",
                QuestCFrame = CFrame.new(-13231.467773438, 332.37414550781, -7626.6860351563),
            },
        },
        [1975] = {
            ["Quest"] = "HauntedQuest1",
            QuestCFrame = CFrame.new(-9490.2793, 142.104858, 5565.8501),
            [1] = {
                Requirement = 1975,
                Mob = "Reborn Skeleton",
                QuestCheck = "Reborn Skeleton",
            },
            [2] = {
                Requirement = 2000,
                Mob = "Living Zombie",
                QuestCheck = "Living Zombie",
            },
        },
        [2025] = {
            ["Quest"] = "HauntedQuest2",
            QuestCFrame = CFrame.new(-9506.95313, 172.104858, 6074.63086),
            [1] = {
                Requirement = 2025,
                Mob = "Demonic Soul",
                QuestCheck = "Demonic Soul",
            },
            [2] = {
                Requirement = 2050,
                Mob = "Posessed Mummy",
                QuestCheck = "Posessed Mummy",
            },
        },
        [2075] = {
            ["Quest"] = "NutsIslandQuest",
            QuestCFrame = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875),
            [1] = {
                Requirement = 2075,
                Mob = "Peanut Scout",
                QuestCheck = "Peanut Scout",
            },
            [2] = {
                Requirement = 2100,
                Mob = "Peanut President",
                QuestCheck = "Peanut President",
            },
        },
        [2125] = {
            ["Quest"] = "IceCreamIslandQuest",
            QuestCFrame = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438),
            [1] = {
                Requirement = 2125,
                Mob = "Ice Cream Chef",
                QuestCheck = "Ice Cream Chef",
            },
            [2] = {
                Requirement = 2150,
                Mob = "Ice Cream Commander",
                QuestCheck = "Ice Cream Commander",
            },
            [3] = {
                Requirement = 2175,
                Boss = "Cake Queen",
                QuestCheck = "Cake Queen",
                ["Quest"] = "IceCreamIslandQuest",
                QuestCFrame = CFrame.new(-820.64825439453, 65.819526672363, -10965.79589843),
            },
        },
        [2200] = {
            ["Quest"] = "CakeQuest1",
            QuestCFrame = CFrame.new(-2021.32007, 37.7982254, -12028.7295),
            [1] = {
                Requirement = 2200,
                Mob = "Cookie Crafter",
                QuestCheck = "Cookie Crafter",
            },
            [2] = {
                Requirement = 2225,
                Mob = "Cake Guard",
                QuestCheck = "Cake Guard",
            },
            [3] = {
                Requirement = 2175,
                Boss = "Cake Queen",
                QuestCheck = "Cake Queen",
                ["Quest"] = "IceCreamIslandQuest",
                QuestCFrame = CFrame.new(-820.64825439453, 65.819526672363, -10965.79589843),
            },
        },
        [2250] = {
            ["Quest"] = "CakeQuest2",
            QuestCFrame = CFrame.new(-1927.91602, 37.7981339, -12842.5391),
            [1] = {
                Requirement = 2250,
                Mob = "Baking Staff",
                QuestCheck = "Baking Staff",
            },
            [2] = {
                Requirement = 2275,
                Mob = "Head Baker",
                QuestCheck = "Head Baker",
            },
            [3] = {
                Requirement = 2175,
                Boss = "Cake Queen",
                QuestCheck = "Cake Queen",
                ["Quest"] = "IceCreamIslandQuest",
                QuestCFrame = CFrame.new(-820.64825439453, 65.819526672363, -10965.79589843),
            },
        },
        [2300] = {
            ["Quest"] = "ChocQuest1",
            QuestCFrame = CFrame.new(231.2322235107422, 24.73427391052246, -12195.1396484375),
            [1] = {
                Requirement = 2300,
                Mob = "Cocoa Warrior",
                QuestCheck = "Cocoa Warrior",
            },
            [2] = {
                Requirement = 2325,
                Mob = "Chocolate Bar Battler",
                QuestCheck = "Chocolate Bar Battler",
            },
            [3] = {
                Requirement = 2175,
                Boss = "Cake Queen",
                QuestCheck = "Cake Queen",
                ["Quest"] = "IceCreamIslandQuest",
                QuestCFrame = CFrame.new(-820.64825439453, 65.819526672363, -10965.79589843),
            },
        },
        [2350] = {
            ["Quest"] = "ChocQuest2",
            QuestCFrame = CFrame.new(148.080322265625, 24.79383087158203, -12775.1650390625),
            [1] = {
                Requirement = 2350,
                Mob = "Sweet Thief",
                QuestCheck = "Sweet Thief",
            },
            [2] = {
                Requirement = 2375,
                Mob = "Candy Rebel",
                QuestCheck = "Candy Rebel",
            },
            [3] = {
                Requirement = 2175,
                Boss = "Cake Queen",
                QuestCheck = "Cake Queen",
                ["Quest"] = "IceCreamIslandQuest",
                QuestCFrame = CFrame.new(-820.64825439453, 65.819526672363, -10965.79589843),
            },
        },
        [2400] = {
            ["Quest"] = "CandyQuest1",
            QuestCFrame = CFrame.new(-1147.919677734375, 16.107261657714844, -14444.125),
            [1] = {
                Requirement = 2400,
                Mob = "Candy Pirate",
                QuestCheck = "Candy Pirate",
            },
            [2] = {
                Requirement = 2425,
                Mob = "Snow Demon",
                QuestCheck = "Snow Demon",
            },           
        },
        [2450] = {
            ["Quest"] = "CandyQuest1",
            QuestCFrame = CFrame.new(-1147.919677734375, 16.107261657714844, -14444.125),
            [1] = {
                Requirement = 2400,
                Mob = "Candy Pirate",
                QuestCheck = "Candy Pirate",
            },
            [2] = {
                Requirement = 2425,
                Mob = "Snow Demon",
                QuestCheck = "Snow Demon",
            },   
        },
        [2500] = {
            ["Quest"] = "TikiQuest2",
            QuestCFrame = CFrame.new(-16541.0215, 54.770813, 1051.46118, 0.0410757065, -0, -0.999156058, 0, 1, -0, 0.999156058, 0, 0.0410757065),
    
            [1] = {
                Requirement = 2500,
                QuestCheck = "Sun-kissed Warrior"
            },
            [2] = {
                Requirement = 2525,
                QuestCheck = "Isle Champion"
            }
        }
    },
}

getgenv().IslandVariable.MapPos = {
    ["Sea 1"] = {
        [0] = {
            ["NameIS"] = "Default",
            ["Pos"] = CFrame.new(977.038269, 16.5166149, 1420.94336),
        },
        [10] = {
            ["NameIS"] = "Jungle",
            ["Pos"] = CFrame.new(-1332.1394, 11.8529119, 492.35907),
        },
        [30] = {
            ["NameIS"] = "Pirate",
            ["Pos"] = CFrame.new(-1186.37769, 4.75154591, 3810.49243),
        },
        [60] = {
            ["NameIS"] = "Desert",
            ["Pos"] = CFrame.new(917.85199, 3.37914562, 4114.66895),
        },
        [90] = {
            ["NameIS"] = "Ice",
            ["Pos"] = CFrame.new(1107.42444, 7.3035593, -1164.79614),
        },
        [120] = {
            ["NameIS"] = "MarineBase",
            ["Pos"] = CFrame.new(-4922.20264, 41.2520523, 4424.44434),
        },
        [150] = {
            ["NameIS"] = "Sky",
            ["Pos"] = CFrame.new(-4916.79346, 717.671265, -2637.03589),
        },
        [190] = {
            ["NameIS"] = "Prison",
            ["Pos"] = CFrame.new(4853.1650390625, 5.652617931365967, 746.6735229492188),
        },
        [250] = {
            ["NameIS"] = "Colosseum",
            ["Pos"] = CFrame.new(-1393.48926, 7.28934002, -2842.57324),
        },
        [300] = {
            ["NameIS"] = "Magma",
            ["Pos"] = CFrame.new(-5226.26416, 8.59022045, 8472.14844),
        },
        [375] = {
            ["NameIS"] = nil,
            ["Pos"] = nil,
        },
        [450] = {
            ["NameIS"] = "Sky",
            ["Pos"] = CFrame.new(-4916.79346, 717.671265, -2637.03589),
        },
        [450] = {
            ["NameIS"] = "Sky2",
            ["Pos"] = CFrame.new(-7873.7959, 5545.49316, -335.85321),
        },
        [625] = {
            ["NameIS"] = "Fountain",
            ["Pos"] = CFrame.new(5187.77197, 38.5011406, 4141.60791),
        },
    },
    ["Sea 2"] = {
        [700] = {
            ["NameIS"] = "Default",
            ["Pos"] = CFrame.new(-32.1582031, 29.2783928, 2766.5874),       
        },
        [775] = {
            ["NameIS"] = "DressTown",
            ["Pos"] = CFrame.new(-389.968658, 72.9961472, 1148.09241),       
        },
        [875] = {
            ["NameIS"] = "Greenb",
            ["Pos"] = CFrame.new(-2220.05884, 72.967804, -2709.98462),       
        },
        [950] = {
            ["NameIS"] = "Graveyard",
            ["Pos"] = CFrame.new(-5386.68799, 8.97076797, -713.903381),       
        },
        [1000] = {
            ["NameIS"] = "Snowy",
            ["Pos"] = CFrame.new(394.089142, 401.423676, -5313.98486),     
        },
        [1100] = {
            ["NameIS"] = "CircleIslandIce",
            ["Pos"] = CFrame.new(-5852.72803, 18.316433, -5030.0752),     
        },
        [1250] = {
            ["NameIS"] = "Ship",
            ["Pos"] = CFrame.new(864.63134765625, 125.05711364746094, 32858.4609375),     
        },
        [1350] = {
            ["NameIS"] = "IceCastle",
            ["Pos"] = CFrame.new(5573.96826, 28.1925011, -6111.41455),     
        },
        [1425] = {
            ["NameIS"] = "ForgottenIsland",
            ["Pos"] = CFrame.new(-3066.82715, 236.847992, -10159.6846),     
        },
    },
    ["Sea 3"] = {
        [1500] = {
            ["NameIS"] = "Default",
            ["Pos"] = CFrame.new(-346.9264221191406, 29.412704467773438, 5377.86376953125),
        },
        [1575] = {
            ["NameIS"] = "Hydra3",
            ["Pos"] = CFrame.new(4727.12988, 51.453064, -1401.72839),
        },
        [1625] = {
            ["NameIS"] = "Hydra1",
            ["Pos"] = CFrame.new(5264.06396, 602.526245, 353.749878),
        },
        [1700] = {
            ["NameIS"] = "GreatTree",
            ["Pos"] = CFrame.new(2260.66162, 25.852705, -6416.6084),
        },
        [1775] = {
            ["NameIS"] = "BigMansion",
            ["Pos"] = CFrame.new(-12550.4844, 337.168365, -7425.26855),
        },
        [1900] = {
            ["NameIS"] = "PineappleTown",
            ["Pos"] = CFrame.new(-11374.4658, 331.723297, -10390.6523),
        },
        [1975] = {
            ["NameIS"] = "HauntedCastle",
            ["Pos"] = CFrame.new(-9540.20898, 142.104858, 5537.26318),
        },
        [2075] = {
            ["NameIS"] = "Peanut",
            ["Pos"] = CFrame.new(-2074.8999023438, 38.104068756104, -10210.8320312),
        },
        [2150] = {
            ["NameIS"] = "IceCream",
            ["Pos"] = CFrame.new(-910.46862792969, 58.945728302002, -10889.098632812),
        },
        [2225] = {
            ["NameIS"] = "Loaf",
            ["Pos"] = CFrame.new(-1895.603271484375, 37.79813766479492, -11885.45703125),
        },
        [2300] = {
            ["NameIS"] = "Chocolate",
            ["Pos"] = CFrame.new(501.06365966796875, 24.734277725219727, -12431.494140625)
        },
        [2400] = {
            ["NameIS"] = "CandyCane",
            ["Pos"] = CFrame.new(-1060.913818359375, 16.107261657714844, -14178.02734375),
        },
        [2450] = {
            ["NameIS"] = "Tiki",
            ["Pos"] = CFrame.new(-16256.5566, 9.06057358, 430.995422),
        }
    },
    
}

getgenv().IslandVariable.SpawnPosition = {
    ["Sea 1"] = {
        ["Pirate [Lv. 35]"] = { "-1269.51318359375, 5.60001277923584, 3857.15771484375", "-967.43310546875, 13.599993705749512, 4034.2470703125", "-972.43310546875, 13.599993705749512, 3939.2470703125", "-1140.51318359375, 5.60001277923584, 3902.15771484375", "-1289.51318359375, 5.60001277923584, 3940.15771484375", "-1182.51318359375, 5.60001277923584, 3972.15771484375" },
        ["Royal Soldier [Lv. 550]"] = { "-7759.458984375, 5606.9365234375, -1862.7027587890625", "-7762.33984375, 5606.9365234375, -1721.01318359375", "-7916.9501953125, 5606.9365234375, -1721.0130615234375", "-7936.9501953125, 5606.9365234375, -1625.0130615234375", "-7946.9501953125, 5606.9365234375, -1824.0130615234375" },
        ["God's Guard [Lv. 450]"] = { "-4820.5673828125, 844.13525390625, -2049.015380859375", "-4863.4169921875, 844.13525390625, -1909.6802978515625", "-4830.609375, 844.13525390625, -1779.0906982421875", "-4700.3125, 844.13525390625, -1792.79638671875", "-4583.8720703125, 843.195556640625, -1938.433837890625", "-4616.88671875, 844.13525390625, -2043.19140625" },
        ["Gorilla [Lv. 20]"] = { "-1249.1898193359375, 8.230012893676758, -456.1899719238281", "-1249.1898193359375, 8.230012893676758, -549.6799926757812", "-1363.1898193359375, 20.230012893676758, -486.1899719238281", "-1186.61865234375, 11.067436218261719, -650.2750854492188" },
        ["Trainee [Lv. 5]"] = { "-2857.82373046875, 41.861534118652344, 2122.80029296875", "-2965.82373046875, 41.861534118652344, 2170.80029296875", "-2888.82373046875, 41.861534118652344, 2226.80029296875", "-2820.250732421875, 24.28679656982422, 2172.480712890625", "-2788.250732421875, 24.28679656982422, 2281.480712890625", "-2726.250732421875, 24.28679656982422, 2238.480712890625", "-2966.090087890625, 39.3367805480957, 2319.310791015625" },
        ["Sky Bandit [Lv. 150]"] = { "-5081.96875, 277.91455078125, -2938.905517578125", "-4944.96875, 277.91455078125, -2784.905517578125", "-4860.96875, 277.91455078125, -2904.905517578125", "-5119.646484375, 274.91455078125, -2809.840576171875" },
        ["Toga Warrior [Lv. 250]"] = { "-2056.187255859375, 7.8789567947387695, -2713.576416015625", "-1838.7723388671875, 7.8789567947387695, -2669.1689453125", "-2128.41064453125, 7.878957271575928, -2853.247802734375", "-1799.861572265625, 7.8789567947387695, -2852.525146484375", "-1672.9788818359375, 7.8789567947387695, -2683.60498046875" },
        ["Monkey [Lv. 14]"] = { "-1202.499755859375, 10.900012969970703, 278.8699645996094", "-1292.669921875, 10.900012016296387, -4.8499908447265625", "-1801.07958984375, 20.980009078979492, 111.2900161743164", "-1743.529541015625, 20.980009078979492, -91.26998138427734", "-1610.469970703125, 20.980009078979492, -48.04999542236328", "-1579.2193603515625, 20.980010986328125, 377.60003662109375", "-1489.249755859375, 20.980009078979492, 88.49000549316406" },
        ["Dark Master [Lv. 175]"] = { "-5244.18017578125, 389.50006103515625, -2155.01416015625", "-5171.18017578125, 389.50006103515625, -2243.01416015625", "-5234.18017578125, 389.50006103515625, -2367.01416015625", "-5339.18017578125, 389.5, -2258.01416015625" },
        ["Galley Captain [Lv. 650]"] = { "5892.3544921875, 39.93544006347656, 4951.92333984375", "5352.00830078125, 39.34882354736328, 4929.39892578125", "5417.00830078125, 61.34882354736328, 4780.39892578125", "5922.3720703125, 58.93544006347656, 4765.84130859375", "5954.96240234375, 39.349098205566406, 4882.10205078125", "5792.3544921875, 58.93544006347656, 4823.92333984375", "5584.00830078125, 60.34881591796875, 4856.39892578125", "5557.00830078125, 39.34882354736328, 4996.39892578125" },
        ["Royal Squad [Lv. 525]"] = { "-7842.9501953125, 5606.9365234375, -1403.0130615234375", "-7724.9501953125, 5606.9365234375, -1511.0130615234375", "-7527.9501953125, 5606.9365234375, -1539.0130615234375", "-7513.9501953125, 5606.9365234375, -1421.0130615234375", "-7669.9501953125, 5606.9365234375, -1379.0130615234375" },
        ["Galley Pirate [Lv. 625]"] = { "5654.07275390625, 39.348819732666016, 3914.322021484375", "5838.07275390625, 39.348819732666016, 3914.322021484375", "5348.28271484375, 39.348819732666016, 3953.255126953125", "5483.07275390625, 55.34881591796875, 4059.322021484375", "5522.07275390625, 39.348819732666016, 3934.322021484375", "5717.07275390625, 57.34881591796875, 4042.322021484375" },
        ["Prisoner [Lv. 190]"] = { "5351.63671875, -0.29998499155044556, 391.106201171875", "5224.7568359375, -0.29998499155044556, 449.44921875", "5089.77880859375, -0.29998496174812317, 423.6646728515625", "5067.125, -0.2999846935272217, 546.4658813476562", "4937.3193359375, -0.4999849796295166, 649.5751342773438" },
        ["Bandit [Lv. 5]"] = { "1341.8011474609375, 16.681461334228516, 1568.909423828125", "1232.51708984375, 16.681461334228516, 1539.7890625", "1123.517578125, 16.681461334228516, 1665.0888671875", "1019.7772216796875, 16.68145751953125, 1566.62890625", "1219.017578125, 16.681461334228516, 1677.4892578125", "934.427490234375, 16.68145751953125, 1517.1414794921875", "1102.039794921875, 16.68145751953125, 1589.462646484375", "1331.8431396484375, 16.68145751953125, 1497.9910888671875", "950.2860107421875, 16.68145751953125, 1625.2266845703125", "1284.3343505859375, 16.681461334228516, 1627.64501953125" },
        ["Gladiator [Lv. 275]"] = { "-1228.0865478515625, 7.946243762969971, -3051.790771484375", "-1483.7042236328125, 7.946243762969971, -3195.212158203125", "-1125.0712890625, 7.946243762969971, -3270.250244140625", "-1356.9586181640625, 7.946243762969971, -3590.606201171875", "-1370.3577880859375, 7.946243762969971, -3377.359375" },
        ["Brute [Lv. 45]"] = { "-979.71533203125, 15.599998474121094, 4234.755859375", "-862.8901977539062, 15.599998474121094, 4281.9560546875", "-1397.734130859375, 15.599998474121094, 4185.5849609375", "-1191.412353515625, 15.599998474121094, 4235.50927734375", "-1230.371337890625, 15.599998474121094, 4331.93701171875", "-1048.6434326171875, 15.599998474121094, 4405.359375" },
        ["Military Soldier [Lv. 300]"] = { "-5413.6005859375, 9.100017547607422, 8591.2646484375", "-5287.19970703125, 9.100017547607422, 8659.865234375", "-5565.6015625, 9.100017547607422, 8327.5693359375", "-5667.80029296875, 9.100017547607422, 8428.666015625", "-5439.8017578125, 9.100017547607422, 8349.1689453125" },
        ["Fishman Commando [Lv. 400]"] = { "61785.90234375, 18.080078125, 1284.111328125", "62051.90234375, 18.080078125, 1422.111328125", "61976.90234375, 18.080078125, 1617.111328125", "61697.8984375, 18.080078125, 1519.111328125", "61760.8984375, 18.080078125, 1460.111328125", "61858.8984375, 18.080078125, 1695.111328125" },
        ["Fishman Warrior [Lv. 375]"] = { "60788.90234375, 17.94921875, 1526.111328125", "60841.90234375, 17.94921875, 1651.111328125", "60943.90234375, 17.94921875, 1744.111328125", "60906.90234375, 17.94921875, 1469.111328125", "60948.90234375, 17.94921875, 1377.111328125", "60840.90234375, 17.94921875, 1301.111328125", "60927.90234375, 17.94921875, 1179.111328125" },
        ["Shanda [Lv. 475]"] = { "-7595.154296875, 5546.34130859375, -653.5570068359375", "-7725.43017578125, 5546.34130859375, -586.8939208984375", "-7795.7646484375, 5546.34130859375, -486.4461975097656", "-7710.7646484375, 5546.34130859375, -336.4461975097656", "-7564.56201171875, 5546.34130859375, -417.35198974609375", "-7539.62109375, 5546.34130859375, -515.81689453125" },
        ["Military Spy [Lv. 325]"] = { "-5917.7041015625, 78.50004577636719, 8844.5693359375", "-5806.70068359375, 78.50004577636719, 8904.4697265625", "-5857.3037109375, 78.50004577636719, 8775.9677734375", "-5787.00537109375, 78.50004577636719, 8651.6630859375" },
        ["Chief Petty Officer [Lv. 120]"] = { "-4805.2421875, 20.5, 3993.880615234375", "-5121.3505859375, 20.5, 4059.597900390625", "-4989.3134765625, 20.5, 3947.639892578125", "-4923.107421875, 20.5, 4076.941650390625", "-4808.6650390625, 20.5, 4540.44921875", "-4873.90869140625, 20.5, 4655.7236328125", "-4614.81103515625, 20.5, 4416.05712890625", "-4633.921875, 20.5, 4551.83349609375" },
        ["Snowman [Lv. 100]"] = { "1148.2493896484375, 106.80999755859375, -1429.319580078125", "1190.08935546875, 106.80999755859375, -1626.5806884765625", "1035.978515625, 106.80999755859375, -1489.359619140625", "1265.4893798828125, 106.80999755859375, -1483.4197998046875" },
        ["Snow Bandit [Lv. 90]"] = { "1458.7076416015625, 88.79003143310547, -1447.1497802734375", "1199.32763671875, 88.79003143310547, -1329.03759765625", "1273.747802734375, 88.79003143310547, -1345.840087890625", "1316.162841796875, 88.79003143310547, -1396.5244140625", "1381.32470703125, 88.79003143310547, -1464.943359375" },
        ["Dangerous Prisoner [Lv. 210]"] = { "5554.5029296875, -0.4999849796295166, 584.723388671875", "5645.556640625, -0.4999849796295166, 764.613525390625", "5442.03857421875, -0.4999847412109375, 1078.8802490234375", "5561.36572265625, -0.4999849796295166, 964.7432250976562", "4955.9150390625, -0.4999847412109375, 925.52978515625", "5485.28271484375, -0.4999847412109375, 468.0664978027344", "5099.65673828125, -0.4999847412109375, 1055.7525634765625" }
    },
    ["Sea 2"] = {
        ["Lab Subordinate [Lv. 1100]"] = { "-5590.3037109375, 14.292499542236328, -4436.53466796875", "-5640.390625, 14.292499542236328, -4680.9375", "-5897.822265625, 14.292499542236328, -4554.6240234375", "-5963.48046875, 14.292499542236328, -4340.27587890625", "-5766.35302734375, 14.292499542236328, -4249.67041015625" },
        ["Ship Engineer [Lv. 1275]"] = { "815.62890625, 43.692771911621094, 33111.33984375", "729.23046875, 43.69268035888672, 32950.34375", "834.796875, 43.69255828857422, 32720.92578125", "1025.6572265625, 43.69258117675781, 32740.85546875", "1088.251708984375, 43.69266891479492, 32890.09375", "1016.777587890625, 43.69276809692383, 33074.1328125" },
        ["Winter Warrior [Lv. 1050]"] = { "1142.4378662109375, 428.80767822265625, -5043.052734375", "1043.3046875, 428.80767822265625, -5049.7861328125", "1205.4586181640625, 428.80767822265625, -5397.35888671875", "1371.870849609375, 428.80767822265625, -5194.70263671875", "1446.2698974609375, 428.80767822265625, -5369.21533203125", "1226.30908203125, 428.80767822265625, -5215.9755859375" },
        ["Arctic Warrior [Lv. 1350]"] = { "5994.5888671875, 27.55978012084961, -6324.279296875", "6095.52587890625, 27.55978012084961, -6077.94140625", "6271.31689453125, 27.55978012084961, -6151.5380859375", "6167.22216796875, 27.55978012084961, -6319.22998046875", "5832.19580078125, 27.55978012084961, -6241.28955078125" },
        ["Mercenary [Lv. 725]"] = { "-913.7650146484375, 72.87559509277344, 1574.1514892578125", "-1085.1514892578125, 72.87559509277344, 1696.3944091796875", "-924.6840209960938, 72.87559509277344, 1788.1241455078125", "-1135.9444580078125, 72.87559509277344, 1248.3272705078125", "-1209.20458984375, 72.87559509277344, 1073.0367431640625", "-986.7745361328125, 72.87559509277344, 1088.446533203125" },
        ["Swan Pirate [Lv. 775]"] = { "967.173828125, 72.96783447265625, 1180.7564697265625", "984.63037109375, 72.80776977539062, 1401.6826171875", "823.6122436523438, 72.80776977539062, 1162.2205810546875", "1063.189453125, 72.80776977539062, 1399.762939453125", "1066.994384765625, 72.80776977539062, 1080.91796875", "827.80029296875, 72.80776977539062, 1326.8966064453125" },
        ["Marine Lieutenant [Lv. 875]"] = { "-3012.852294921875, 71.01408386230469, -2921.832275390625", "-3258.5498046875, 71.01408386230469, -2990.86669921875", "-2766.0703125, 71.01408386230469, -3144.748779296875", "-2932.50048828125, 71.01408386230469, -2604.09619140625", "-2583.945068359375, 71.01408386230469, -3039.6181640625" },
        ["Zombie [Lv. 950]"] = { "-5614.96044921875, 49.30769729614258, -938.4688720703125", "-5766.6494140625, 47.500980377197266, -824.6622924804688", "-5761.99169921875, 49.30769729614258, -654.9384765625", "-5595.60009765625, 49.30769729614258, -524.2483520507812", "-5856.5888671875, 70.35081481933594, -739.050048828125", "-5512.23193359375, 49.30769729614258, -847.97802734375" },
        ["Ship Steward [Lv. 1300]"] = { "986.8828125, 125.8344497680664, 33366.953125", "801.38330078125, 125.8344497680664, 33505.1796875", "918.6671752929688, 125.8344497680664, 33506.50390625", "1032.457763671875, 125.8344497680664, 33512.39453125", "815.0006713867188, 125.8344497680664, 33376.203125" },
        ["Marine Captain [Lv. 900]"] = { "-1928.388916015625, 73.01405334472656, -3119.57958984375", "-2103.933837890625, 73.01405334472656, -3259.303466796875", "-2030.2476806640625, 73.01405334472656, -3477.634765625", "-1601.3172607421875, 73.01405334472656, -3315.3251953125", "-1805.3643798828125, 73.01405334472656, -3313.325439453125" },
        ["Snow Lurker [Lv. 1375]"] = { "5443.421875, 27.55978012084961, -7031.28466796875", "5763.845703125, 27.55978012084961, -6671.0458984375", "5524.1572265625, 27.55978012084961, -6583.82080078125", "5567.857421875, 27.55978012084961, -6900.46533203125", "5484.41845703125, 27.55978012084961, -6733.74951171875" },
        ["Factory Staff [Lv. 800]"] = { "692.1103515625, 72.80769348144531, 227.75210571289062", "936.1103515625, 72.80769348144531, -71.24789428710938", "386.1103210449219, 72.80769348144531, 91.75210571289062", "-426.8896789550781, 72.80769348144531, -367.2478942871094", "-105.88967895507812, 72.80769348144531, -670.2479248046875", "-93.88967895507812, 72.80769348144531, -34.22792053222656" },
        ["Sea Soldier [Lv. 1425]"] = { "-3293.0498046875, 5.909453392028809, -9640.931640625", "-3240.3310546875, 27.452720642089844, -9813.9658203125", "-2550.921875, 28.452720642089844, -9839.9970703125", "-3459.692138671875, 25.62852668762207, -9934.7724609375", "-2840.09228515625, 27.452720642089844, -9814.380859375", "-3499.348388671875, 16.08629035949707, -9712.005859375" },
        ["Ship Officer [Lv. 1325]"] = { "657.529296875, 179.90567016601562, 33460.6328125", "505.529296875, 179.90567016601562, 33263.6328125", "694.529296875, 179.90567016601562, 33112.6328125", "1162.529296875, 179.90567016601562, 33445.6015625", "1320.529296875, 179.90567016601562, 33294.6015625", "1144.529296875, 179.90567016601562, 33112.6015625" },
        ["Ship Deckhand [Lv. 1250]"] = { "580.298828125, 125.57708740234375, 33124.25", "719.298828125, 125.57708740234375, 33032.109375", "1157.298828125, 125.57708740234375, 32930.109375", "1259.298828125, 125.57708740234375, 33032.109375", "1247.298828125, 125.57708740234375, 33218.109375", "1176.298828125, 125.57708740234375, 33119.109375", "580.298828125, 125.57708740234375, 32930.109375" },
        ["Water Fighter [Lv. 1450]"] = { "-3657.9501953125, 239.13833618164062, -10591.1474609375", "-3511.958984375, 239.13833618164062, -10346.9287109375", "-3316.75390625, 239.13833618164062, -10323.1689453125", "-3331.70458984375, 239.13833618164062, -10553.3564453125", "-3396.35888671875, 239.13833618164062, -10745.10546875" },
        ["Raider [Lv. 700]"] = { "-607.4367065429688, 40.007755279541016, 2202.435302734375", "-917.4367065429688, 40.007755279541016, 2250.435302734375", "-904.336669921875, 40.007755279541016, 2501.435302734375", "-612.4367065429688, 40.007755279541016, 2557.435302734375" },
        ["Magma Ninja [Lv. 1175]"] = { "-5097.60986328125, 14.292500495910645, -6117.45654296875", "-5206.634765625, 14.292499542236328, -5976.99072265625", "-5259.78369140625, 14.292499542236328, -6288.5830078125" },
        ["Snow Trooper [Lv. 1000]"] = { "572.6925048828125, 400.80767822265625, -5605.20654296875", "716.6273193359375, 400.80767822265625, -5706.44140625", "642.6663818359375, 400.80767822265625, -5454.4892578125", "484.3445739746094, 400.80767822265625, -5472.41552734375", "445.9443359375, 442.80767822265625, -5553.90576171875", "430.40191650390625, 400.80767822265625, -5069.0947265625", "392.2192687988281, 400.80767822265625, -5207.68505859375" },
        ["Vampire [Lv. 975]"] = { "-6132.39453125, 9.007694244384766, -1466.169189453125", "-5952.99462890625, 9.007694244384766, -1568.5291748046875", "-6277.263671875, 9.007694244384766, -1269.44921875", "-6039.689453125, 9.007694244384766, -1099.1590576171875", "-5776.55224609375, 9.007694244384766, -1373.4498291015625" },
        ["Horned Warrior [Lv. 1125]"] = { "-6499.001953125, 14.292499542236328, -5512.51171875", "-6589.38671875, 14.292499542236328, -5718.66650390625", "-6516.3408203125, 14.292499542236328, -5868.70458984375", "-6093.66748046875, 14.292499542236328, -6061.12353515625", "-6221.7490234375, 14.292499542236328, -5951.302734375", "-6331.76513671875, 14.292499542236328, -5778.94189453125" },
    
    },
    ["Sea 3"] = {
        ["Isle Champion [Lv. 2525]"] = { "-16618.74609375, 58.377708435058594, 1099.5087890625", "-16735.67578125, 23.346088409423828, 1110.5850830078125", "-16787.3203125, 25.204872131347656, 992.1318359375", "-16940.798828125, 14.192967414855957, 1070.8662109375", "-16901.23046875, 12.45141887664795, 969.9686279296875" },
        ["Isle Outlaw [Lv. 2450]"] = { "-16351.77734375, 23.49412727355957, -282.4541015625", "-16433.71875, 57.22137451171875, -195.47314453125", "-16122.4052734375, 11.778807640075684, -257.353515625", "-16289.48828125, 22.874197006225586, -179.4443359375", "-16163.4248046875, 11.945096969604492, -99.35986328125" },
        ["Island Boy [Lv. 2475]"] = { "-16991.73046875, 12.766878128051758, -186.18252563476562", "-16736.21875, 22.171125411987305, -131.72105407714844", "-16661.57421875, 57.37247085571289, -252.96337890625", "-16883.048828125, 23.34747314453125, -250.8740234375", "-16905.3046875, 13.09433364868164, -73.5067367553711" },
        ["Sun-kissed Warrior [Lv. 2500]"] = { "-16153.365234375, 14.465398788452148, 942.4479370117188", "-16052.4560546875, 9.817989349365234, 1061.91259765625", "-16413.5078125, 56.710662841796875, 1054.435546875", "-16186.4208984375, 25.10376739501953, 1098.0830078125", "-16357.3125, 21.019332885742188, 1005.65087890625" },
        ["Pirate Millionaire [Lv. 1500]"] = { "-445.27423095703125, 42.67793273925781, 5511.88427734375", "-543.5744018554688, 43.67792892456055, 5639.18310546875", "-679.28759765625, 43.67792892456055, 5552.123046875", "-132.4427032470703, 43.67792892456055, 5596.91552734375", "-615.337158203125, 43.67793273925781, 5429.96484375", "21.131032943725586, 43.67792892456055, 5738.74609375", "53.43482971191406, 43.67792892456055, 5632.0107421875" },
        ["Pistol Billionaire [Lv. 1525]"] = { "-776.255615234375, 73.67793273925781, 5965.5029296875", "-991.5869140625, 73.67793273925781, 5755.0205078125", "56.2892951965332, 73.67793273925781, 6014.0615234375", "-569.86669921875, 73.67793273925781, 5900.66748046875", "-140.91534423828125, 73.67793273925781, 6018.48291015625", "-354.0088195800781, 73.67793273925781, 5961.24853515625", "5.966832637786865, 73.67793273925781, 6134.5986328125", "93.9766845703125, 73.67793273925781, 6249.533203125" },
        ["Jungle Pirate [Lv. 1900]"] = { "-12142.458984375, 331.60296630859375, -10419.9111328125", "-11918.103515625, 332.51800537109375, -10744.08984375", "-11612.466796875, 335.82196044921875, -10489.4091796875", "-11902.2734375, 331.2919616699219, -10432.0673828125", "-12321.3115234375, 331.43658447265625, -10669.2548828125", "-12306.3486328125, 331.071533203125, -10352.8779296875", "-11708.431640625, 331.8750305175781, -10700.0517578125" },
        ["Chocolate Bar Battler [Lv. 2325]"] = { "701.3120727539062, 25.58249855041504, -12708.21484375", "806.958984375, 25.58249855041504, -12773.078125", "833.198486328125, 25.58249855041504, -12671.404296875", "717.5152587890625, 25.58249855041504, -12557.6708984375", "582.8286743164062, 25.58249855041504, -12550.7041015625", "598.833251953125, 25.58249855041504, -12395.12109375" },
        ["Head Baker [Lv. 2275]"] = { "-2263.3544921875, 51.00957489013672, -12711.3916015625", "-2100.70458984375, 51.00957489013672, -12720.9658203125", "-2389.2294921875, 51.00957489013672, -13018.3349609375", "-2251.576171875, 51.00957489013672, -13033.3974609375", "-2151.3779296875, 51.00957489013672, -13033.3974609375", "-2369.090087890625, 51.00957489013672, -12807.921875" },
        ["Candy Pirate [Lv. 2400]"] = { "-1437.5634765625, 17.148128509521484, -14385.693359375", "-1370.880859375, 17.148128509521484, -14477.8525390625", "-1291.90576171875, 17.148128509521484, -14384.1708984375", "-1412.2529296875, 17.148128509521484, -14704.599609375", "-1298.1181640625, 17.148128509521484, -14801.283203125", "-1254.3702392578125, 17.148128509521484, -14691.8759765625" },
        ["Posessed Mummy [Lv. 2050]"] = { "-9399.6474609375, 12.197922706604004, 6118.810546875", "-9449.3515625, 5.952804088592529, 6342.9736328125", "-9609.3515625, 5.952804088592529, 6361.9736328125", "-9759.3515625, 26.952804565429688, 6368.9736328125", "-9759.3515625, 26.952804565429688, 6051.9736328125" },
        ["Baking Staff [Lv. 2250]"] = { "-1774.078125, 34.66530990600586, -12850.4521484375", "-1759.3228759765625, 34.66530990600586, -12994.7021484375", "-1720.8507080078125, 34.66530990600586, -13087.125", "-1847.177978515625, 34.66530990600586, -13132.50390625", "-1980.4375, 34.66530990600586, -12983.8408203125", "-1828.8009033203125, 34.66530990600586, -12699.4375" },
        ["Forest Pirate [Lv. 1825]"] = { "-13345.5419921875, 332.2262268066406, -7630.7578125", "-13279.54296875, 332.2262268066406, -7897.7578125", "-13600.54296875, 332.2262268066406, -7741.75830078125", "-13651.54296875, 332.2262268066406, -7894.75830078125", "-13513.54296875, 332.2262268066406, -8008.7578125", "-13105.54296875, 332.2262268066406, -7705.7568359375" },
        ["Cookie Crafter [Lv. 2200]"] = { "-2499.169189453125, 37.005104064941406, -12165.0185546875", "-2423.398681640625, 37.005104064941406, -12265.7666015625", "-2321.7119140625, 37.005104064941406, -12216.7841796875", "-2246.3740234375, 37.005104064941406, -12126.94140625", "-2342.87255859375, 37.005104064941406, -12009.23828125", "-2212.8896484375, 37.005104064941406, -11969.2568359375", "-2464.476806640625, 37.005104064941406, -12049.9326171875" },
        ["Cocoa Warrior [Lv. 2300]"] = { "-125.0068359375, 26.225465774536133, -12345.80859375", "-128.67041015625, 26.225465774536133, -12249.8134765625", "34.84403991699219, 26.225465774536133, -12169.6630859375", "167.978515625, 26.225465774536133, -12238.8740234375", "6.332009315490723, 26.225465774536133, -12305.208984375" },
        ["Candy Rebel [Lv. 2375]"] = { "47.92314529418945, 25.58249855041504, -13029.240234375", "52.998046875, 26.58249855041504, -12851.67578125", "220.3782196044922, 26.58249855041504, -12913.9658203125", "166.8196563720703, 25.58249855041504, -13035.345703125", "-72.12920379638672, 25.58249855041504, -12940.32421875" },
        ["Ice Cream Chef [Lv. 2125]"] = { "-502.40997314453125, 64.55926513671875, -10873.794921875", "-1109.287109375, 64.55926513671875, -10931.265625", "-797.03125, 64.55926513671875, -10790.724609375", "-931.744873046875, 64.55926513671875, -11146.73046875", "-966.2890625, 64.55926513671875, -10973.5576171875", "-715.43359375, 64.55926513671875, -10920.435546875" },
        ["Musketeer Pirate [Lv. 1925]"] = { "-13337.8818359375, 472.0621643066406, -9698.6611328125", "-13556.078125, 391.3937072753906, -9735.9443359375", "-13270.8818359375, 472.0621643066406, -9860.6611328125", "-13198.6435546875, 391.3937072753906, -9602.2958984375", "-13417.6435546875, 391.3937072753906, -9962.2958984375", "-13514.8681640625, 403.4041748046875, -9866.51953125", "-13075.6435546875, 391.3937072753906, -9890.2958984375" },
        ["Sweet Thief [Lv. 2350]"] = { "88.47167205810547, 25.58249855041504, -12662.20703125", "143.9703369140625, 25.58249855041504, -12531.720703125", "-140.25830078125, 25.58249855041504, -12652.3115234375", "-77.64675903320312, 25.58249855041504, -12765.6201171875", "5.366209030151367, 25.58249855041504, -12537.42578125" },
        ["Fishman Raider [Lv. 1775]"] = { "-10853.8564453125, 332.60296630859375, -8425.240234375", "-10117.947265625, 332.60296630859375, -8174.68603515625", "-10603.64453125, 332.60296630859375, -8309.1259765625", "-10523.755859375, 332.60296630859375, -8597.5888671875", "-10391.73828125, 332.60296630859375, -8212.2763671875", "-10223.1142578125, 332.60296630859375, -8482.5458984375" },
        ["Living Zombie [Lv. 2000]"] = { "-10184.1015625, 152.95281982421875, 5741.9296875", "-10061.90234375, 140.1746826171875, 6038.626953125", "-10205.1015625, 151.95281982421875, 5861.9296875", "-10170.90234375, 141.1746826171875, 6159.626953125", "-9956.1015625, 140.95281982421875, 5966.9296875", "-10293.1015625, 152.95281982421875, 5960.9296875" },
        ["Cake Guard [Lv. 2225]"] = { "-1736.5443115234375, 35.21882247924805, -12249.060546875", "-1418.51123046875, 35.21882247924805, -12255.71875", "-1471.1275634765625, 35.21882247924805, -12436.84375", "-1693.98046875, 35.21882247924805, -12436.84375", "-1531.411376953125, 35.21882247924805, -12132.439453125" },
        ["Marine Commodore [Lv. 1700]"] = { "2220.769775390625, 73.01031494140625, -7445.7548828125", "2391.769775390625, 73.01031494140625, -7901.7548828125", "2904.5673828125, 73.01033020019531, -7889.30859375", "3175.78173828125, 73.01032257080078, -7878.54736328125", "2254.76953125, 73.01032257080078, -6894.66015625", "2460.76953125, 73.01031494140625, -7220.7548828125", "2604.76953125, 73.01031494140625, -7688.7548828125" },
        ["Training Dummy [Lv. 1500]"] = { "3758.32470703125, 91.5133056640625, 255.39100646972656" },
        ["Snow Demon [Lv. 2425]"] = { "-808.7568359375, 17.148128509521484, -14688.9287109375", "-927.0015869140625, 17.148128509521484, -14763.421875", "-916.22265625, 17.148128509521484, -14638.8125", "-848.005859375, 17.148128509521484, -14407.21484375", "-901.3642578125, 17.148128509521484, -14307.916015625", "-800.322998046875, 17.148128509521484, -14291.1259765625" },
        ["Peanut President [Lv. 2100]"] = { "-1993.406005859375, 37.22210693359375, -10682.9052734375", "-1874.362060546875, 37.22210693359375, -10596.576171875", "-1996.069580078125, 37.22210693359375, -10496.9267578125", "-2395.123779296875, 87.37577819824219, -10456.306640625", "-2311.986572265625, 87.32262420654297, -10609.3427734375", "-2247.476318359375, 87.32262420654297, -10440.8681640625" },
        ["Mythological Pirate [Lv. 1850]"] = { "-13221.03125, 519.10302734375, -6689.01611328125", "-13320.0302734375, 519.10302734375, -6785.017578125", "-13221.0302734375, 519.10302734375, -6902.017578125", "-13456.0498046875, 469.4332275390625, -7039.96435546875", "-13732.0478515625, 469.4332275390625, -6826.96484375", "-13876.0478515625, 469.4332275390625, -7009.96484375" },
        ["Reborn Skeleton [Lv. 1975]"] = { "-8868.1015625, 140.95281982421875, 6034.9296875", "-8682.1015625, 140.95281982421875, 5968.9296875", "-8646.1015625, 140.95281982421875, 5850.9296875", "-8762.6572265625, 141.6120147705078, 6183.34033203125", "-8710.1015625, 140.95281982421875, 6112.9296875", "-8811.5654296875, 143.10498046875, 5871.75341796875", "-8826.1015625, 140.95281982421875, 6165.9296875" },
        ["Fishman Captain [Lv. 1800]"] = { "-11210.2685546875, 331.82598876953125, -9072.7119140625", "-11135.2001953125, 331.82598876953125, -9240.88671875", "-10828.1064453125, 331.82598876953125, -9049.146484375", "-10736.6728515625, 331.82598876953125, -8807.5791015625", "-11107.8544921875, 331.82598876953125, -8842.916015625", "-11072.599609375, 331.8260192871094, -8610.072265625" },
        ["Dragon Crew Warrior [Lv. 1575]"] = { "4279.080078125, 51.61625289916992, -1490.453857421875", "4305.994140625, 51.61625289916992, -1242.9735107421875", "3930.806640625, 51.61625289916992, -1237.3629150390625", "6384.353515625, 51.61625289916992, -1552.883544921875", "6527.7119140625, 52.61625289916992, -1121.532470703125", "6005.84912109375, 52.61625289916992, -1641.8045654296875", "6356.71142578125, 52.61625289916992, -923.5322265625", "6644.71142578125, 52.61625289916992, -929.532470703125" },
        ["Ice Cream Commander [Lv. 2150]"] = { "-883.6304321289062, 70.14082336425781, -11485.525390625", "-528.7485961914062, 65.47904968261719, -11348.9228515625", "-366.8133544921875, 64.6534194946289, -11094.4228515625", "-675.09716796875, 67.66691589355469, -11371.724609375", "-770.4150390625, 125.61077117919922, -11159.8408203125", "-657.5498046875, 129.7410430908203, -11215.7919921875" },
        ["Giant Islander [Lv. 1650]"] = { "5275.6455078125, 604.7410888671875, -166.6568603515625", "5018.2265625, 604.79296875, -322.55908203125", "4847.2265625, 604.79296875, -163.55908203125", "4619.2265625, 604.79296875, -28.5589599609375", "5395.6455078125, 613.7410888671875, -247.6568603515625", "4745.4345703125, 604.79296875, 147.23529052734375" },
        ["Marine Rear Admiral [Lv. 1725]"] = { "3786.447265625, 160.37086486816406, -7283.22119140625", "3474.447021484375, 160.37086486816406, -7253.22119140625", "3396.447265625, 160.37086486816406, -7022.22119140625", "3192.9521484375, 73.01032257080078, -6812.322265625", "3366.952392578125, 73.01032257080078, -6611.322265625", "3520.554443359375, 157.32666015625, -6782.91943359375", "3915.447265625, 160.37086486816406, -6812.220703125", "3916.88525390625, 188.24818420410156, -7081.7158203125" },
        ["Female Islander [Lv. 1625]"] = { "4548.8564453125, 765.579345703125, 264.39056396484375", "5842.7529296875, 781.6395263671875, 843.773681640625", "5578.7529296875, 781.6395263671875, 972.773681640625", "5762.732421875, 800.4412841796875, 971.6632080078125", "4613.88525390625, 748.579345703125, 498.29150390625", "4627.73974609375, 729.6559448242188, 691.7916259765625", "4679.07470703125, 735.6559448242188, 938.0872802734375", "4850.85693359375, 683.1942749023438, 979.4578247070312" },
        ["Dragon Crew Archer [Lv. 1600]"] = { "6453.38818359375, 338.91796875, -171.9967041015625", "6582.38818359375, 338.91796875, -57.996734619140625", "6567.0751953125, 378.2533874511719, 58.22900390625", "6606.0751953125, 379.2533874511719, 418.22900390625", "6765.07568359375, 381.2533874511719, 211.22900390625", "6798.0751953125, 380.2533874511719, 397.22900390625" },
        ["Peanut Scout [Lv. 2075]"] = { "-2078.09130859375, 12.854767799377441, -9997.1044921875", "-1865.427490234375, 8.854758262634277, -10086.232421875", "-2065.34814453125, 34.952178955078125, -10066.810546875", "-2377.283203125, 37.952178955078125, -10308.21875", "-2250.190673828125, 8.85476016998291, -9948.8388671875", "-2294.24755859375, 37.236968994140625, -10176.12109375", "-1924.0009765625, 37.2721061706543, -10199.6630859375" },
        ["Demonic Soul [Lv. 2025]"] = { "-9426.9560546875, 171.95281982421875, 6048.408203125", "-9344.9560546875, 171.95281982421875, 6201.408203125", "-9253.9560546875, 171.95281982421875, 6050.408203125", "-9565.9560546875, 171.95281982421875, 6235.408203125", "-9631.9560546875, 171.95281982421875, 6053.408203125", "-9753.9560546875, 171.95281982421875, 6166.408203125" }
    }
}
getgenv().IslandVariable.ShopItems = {
    ["Abilities"] = {
        {
            ["Name"] = "Geppo",
            ["Args"] = {"BuyHaki","Geppo"},
            ["Price"] = {
            ["Beli"] = 10000,
            },
        },
        {
            ["Name"] = "Buso",
            ["Args"] = {"BuyHaki","Buso"},
            ["Price"] = {
            ["Beli"] = 25000,
            },
        },
        {
            ["Name"] = "Soru",
            ["Args"] = {"BuyHaki","Soru"},
            ["Price"] = {
            ["Beli"] = 100000,
            },
        },
        {
            ["Name"] = "Ken",
            ["Args"] = {"KenTalk","Buy"},
            ["Price"] = {
            ["Beli"] = 150000,
            },
        },
    },
    ["Fighting Styles"]= {
        {
            ["Name"] = "Dark Step",
            ["Args"] = {"BuyBlackLeg"},
            ["Price"] = {
                ["Beli"] = 150000,
            },
        },
        {
            ["Name"] = "Eletro",
            ["Args"] = {"BuyElectro"},
            ["Price"] = {
                ["Beli"] = 500000,
            },
        },
        {
            ["Name"] = "Water Kung Fu",
            ["Args"] = {"BuyFishmanKarate"},
            ["Price"] = {
                ["Beli"] = 750000,
            },
        },
        {
            ["Name"] = "Dragon Breath",
            ["Args"] = {"BlackbeardReward","DragonClaw","2"},
            ["Price"] = {
                ["Fragment"] = 1500,
            },
        },
        {
            ["Name"] = "Superhuman",
            ["Args"] = {"BuySuperhuman"},
            ["Price"] = {
                ["Beli"] = 3000000,
            },
        },
        {
            ["Name"] = "Death Step",
            ["Args"] = {"BuyDeathStep"},
            ["Price"] = {
                ["Beli"] = 2500000,
                ["Fragment"] = 5000,
            },
        },
        {
            ["Name"] = "Sharkman Karate",
            ["Args"] = {"BuySharkmanKarate"},
            ["Price"] = {
                ["Beli"] = 2500000,
                ["Fragment"] = 5000,
            },
        },
        {
            ["Name"] = "Eletric Claw",
            ["Args"] = {"BuyElectricClaw"},
            ["Price"] = {
                ["Beli"] = 3000000,
                ["Fragment"] = 5000,
            },
        },
        {
            ["Name"] = "Dragon Talon",
            ["Args"] = {"BuyDragonTalon"},
            ["Price"] = {
                ["Beli"] = 3000000,
                ["Fragment"] = 5000,
            },
        },
        {
            ["Name"] = "God Human",
            ["Args"] = {"BuyGodhuman"},

            ["Price"] = {
                ["Beli"] = 5000000,
                ["Fragment"] = 5000,
            },
        },
        {
            ["Name"] = "Saguine Art",
            ["Args"] = {"BuySanguineArt"},
            ["Price"] = {
                ["Beli"] = 500000,
                ["Fragment"] = 5000,
            },      
        },
    },
    ["Sword"] = {
        {
            ["Name"] = "Katana",
            ["Args"] = {"BuyItem","Katana"},
            ["Price"] = {
            ["Beli"] = 1000,
            },
        },
        {
            ["Name"] = "Cutlass",
            ["Args"] = {"BuyItem","Cutlass"},
            ["Price"] = {
            ["Beli"] = 1000,
            },
        },
        {
            ["Name"] = "Dual Katana",
            ["Args"] = {"BuyItem","Dual Katana"},
            ["Price"] = {
            ["Beli"] = 12000,
            },
        },
        {
            ["Name"] = "Iron Mace",
            ["Args"] = {"BuyItem","Iron Mace"},
            ["Price"] = {
            ["Beli"] = 25000,
            },
        },
        {
            ["Name"] = "Triple Katana",
            ["Args"] = {"BuyItem","Triple Katana"},
            ["Price"] = {
            ["Beli"] = 60000,
            },
        },
        {
            ["Name"] = "Pipe",
            ["Args"] = {"BuyItem","Pipe"},
            ["Price"] = {
            ["Beli"] = 100000,
            },
        },
        {
            ["Name"] = "Dual-Headed Blade",
            ["Args"] = {"BuyItem","Dual-Headed Blade"},
            ["Price"] = {
            ["Beli"] = 400000,
            },
        },
        {
            ["Name"] = "Bisento",
            ["Args"] = {"BuyItem","Bisento"},
            ["Price"] = {
            ["Beli"] = 1000000,
            },
        },
        {
            ["Name"] = "Soul Cane",
            ["Args"] = {"BuyItem","Soul Cane"},
            ["Price"] = {
            ["Beli"] = 750000,
            },
        },
        {
            ["Name"] = "Midnight Blade",
            ["Args"] = {"Ectoplasm","Buy",3},
            ["Price"] = {
            ["Ectoplasm"] = 100,
            },
        },
        {
            ["Name"] = "True Triple Katana",
            ["Args"] = {"MysteriousMan",2},
            ["Price"] = {
            },
        },
    },
    ["Gun"] = {
        {
            ["Name"] = "Slingshot",
            ["Args"] = {"BuyItem","Slingshot"},
            ["Price"] = {
            ["Beli"] = 5000,
            },
        },
        {
            ["Name"] = "Musket",
            ["Args"] = {"BuyItem","Musket"},
            ["Price"] = {
            ["Beli"] = 8000,
            },
        },
        {
            ["Name"] = "Flintlock",
            ["Args"] = {"BuyItem","Flintlock"},
            ["Price"] = {
            ["Beli"] = 10500,
            },
        },
        {
            ["Name"] = "Refined Slingshot",
            ["Args"] = {"BuyItem","Refined Slingshot"},
            ["Price"] = {
            ["Beli"] = 65000,
            },
        },
        {
            ["Name"] = "Cannon",
            ["Args"] = {"BuyItem","Cannon"},
            ["Price"] = {
            ["Beli"] = 100000,
            },
        },
        {
            ["Name"] = "Kabucha",
            ["Args"] = {"BlackbeardReward","Slingshot","2"},
            ["Price"] = {
            ["Fragment"] = 1500,
            },
        },
        {
            ["Name"] = "Bizarre Rifle",
            ["Args"] = {"Ectoplasm","Buy",1},
            ["Price"] = {
            ["Ectoplasm"] = 25,
            },
        },
    },
    ["Accessories"] = {
        {
            ["Name"] = "Black Cape",
            ["Args"] = {"BuyItem","Black Cape"},
            ["Price"] = {
                ["Beli"] = 50000,
            },
        },
        {
            ["Name"] = "Swordsman Hat",
            ["Args"] = {"BuyItem","Swordsman Hat"},
            ["Price"] = {
                ["Beli"] = 150000,
            },
        },
        {
            ["Name"] = "Tomoe Ring",
            ["Args"] = {"BuyItem","Tomoe Ring"},
            ["Price"] = {
                ["Beli"] = 500000,
            },
        },
        {
            ["Name"] = "Ghoul Mask",
            ["Args"] = {"Ectoplasm","Buy",2},
            ["Price"] = {
                ["Ectoplasm"] = 50,
            },
        },
    }
}

getgenv().IslandVariable.Material = {}
getgenv().IslandVariable.MaterialFarm = {
    CheckMob = {
        ["Magma Ore"] = {
            ["IsMob"] = function (Mob)
                if getgenv().IslandVariable["IsSea1"] then
                    if string.match(Mob.Name,"Military Soldier") or string.match(Mob.Name,"Military Spy") then
                        return true
                    end
                elseif getgenv().IslandVariable["IsSea2"] then
                    if string.match(Mob.Name,"Magma Ninja") or string.match(Mob.Name,"Lava Pirate") then
                        return true
                    end
                end
                return false
            end,
            ["Pos"] = {CFrame.new(-5458.927734375, 22.050642013549805, -5419.67724609375),CFrame.new(-5377.33251953125, 18.274900436401367, -5125.76416015625)}
            
        },
        ["Ectoplasm"] = {
            ["IsMob"] = function(Mob)
                if string.match(Mob.Name,"Ship Deckhand") or string.match(Mob.Name,"Ship Engineer") or string.match(Mob.Name,"Ship Steward") or string.match(Mob.Name,"Ship Officer") then
                    return true
                end
                return false
            end,
            ["Pos"] = CFrame.new(923.2125244140625, 126.97600555419922, 32852.83203125),

        },
        ["Demonic Wisp"] = {
            ["IsMob"] = function(Mob)
                if string.match(Mob.Name,"Reborn Skeleton") or string.match(Mob.Name,"Living Zombie") or string.match(Mob.Name,"Demonic Soul") or string.match(Mob.Name,"Posessed Mummy") and Mob:FindFirstChild("HumanoidRootPart") and (Mob:FindFirstChild("HumanoidRootPart").Position - Vector3.new(-8736.5771484375, 143.10482788085938, 6034.9375)).magnitude < 3500 then
                    return true
                end
                return false
            end,
            ["Pos"] = CFrame.new(-9501.3447265625, 172.1398468017578, 6036.0341796875),
        },
        ["Bones"] = {
            ["IsMob"] = function(Mob)
                if string.match(Mob.Name,"Reborn Skeleton") or string.match(Mob.Name,"Living Zombie") or string.match(Mob.Name,"Demonic Soul") or string.match(Mob.Name,"Posessed Mummy") and Mob:FindFirstChild("HumanoidRootPart") and (Mob:FindFirstChild("HumanoidRootPart").Position - Vector3.new(-8736.5771484375, 143.10482788085938, 6034.9375)).magnitude < 3500 then
                    return true
                end
                return false
            end,
            ["Pos"] = CFrame.new(-9501.3447265625, 172.1398468017578, 6036.0341796875),
        },
        ["Dragon Scale"] = {
            ["IsMob"] = function (Mob)
                if string.match(Mob.Name,"Dragon Crew Archer") or string.match(Mob.Name,"Dragon Crew Warrior") then
                    return true
                end
                return false
            end,
            ["Pos"] = {CFrame.new(6562.64111328125, 148.20350646972656, -712.1854858398438),
            CFrame.new(6525.68896484375, 378.2054138183594, 16.12466049194336),
            CFrame.new(4143.9814453125, 51.48188018798828, -1238.462890625)}
        } ,
        ["Angel Wings"] = {
            ["IsMob"] = function (Mob)
                if string.match(Mob.Name,"Shanda") or string.match(Mob.Name,"Royal Squad") or string.match(Mob.Name,"Royal Soldier") then
                    return true
                end
                return false
            end,
            ["Pos"] = {CFrame.new(-7640.81103515625, 5545.49169921875, -535.966064453125),
            CFrame.new(-7760.857421875, 5634.2216796875, -1555.6251220703125)}
        } ,
        
        ["Mystic Droplet"] = {
            ["IsMob"] = function(Mob)
                if string.match(Mob.Name,"Sea Soldier") or string.match(Mob.Name,"Water Fighter") then
                    return true
                end
                return false
            end,
            ["Pos"] = CFrame.new(-3246.47509765625, 298.66448974609375, -10551.6650390625),
        },
            
        ["Fish Tail"] = {
            ["IsMob"] = function(Mob)
                if getgenv().IslandVariable["IsSea3"] then
                    if string.match(Mob.Name,"Fishman Raider") or string.match(Mob.Name,"Fishman Captain") then
                        return true
                    end
                end
                return false
            end,
            ["Pos"] = CFrame.new(-10918.5673828125, 331.76263427734375, -8698.3408203125)
        },     
        ["Radioactive Material"] = {
            ["IsMob"] = function(Mob)
                if getgenv().IslandVariable["IsSea2"] then
                    if string.match(Mob.Name,"Factory Staff") then
                        return true
                    end
                end
                return false
            end,
            ["Pos"] = {CFrame.new(-16.391239166259766, 148.9493408203125, -182.6639862060547),CFrame.new(542.0455322265625, 72.95976257324219, 22.46308708190918)}
        },
        ["Vampire Fang"] = {
            ["IsMob"] = function(Mob)
                if getgenv().IslandVariable["IsSea2"] then
                    if string.match(Mob.Name,"Vampire") then
                        return true
                    end
                end
                return false
            end,
            ["Pos"] = CFrame.new(-6022.30810546875, 6.402711391448975, -1302.591552734375),
        },
        ["Conjured Cocoa"] = {
            ["IsMob"] = function(Mob)
                if getgenv().IslandVariable["IsSea3"] then
                    if string.match(Mob.Name,"Sweet Thief") or string.match(Mob.Name,"Candy Rebel") or string.match(Mob.Name,"Chocolate Bar Battler") or string.match(Mob.Name,"Cocoa Warrior")   then
                        return true
                    end
                end
                return false
            end,
            ["Pos"] = CFrame.new(233.32058715820312, 74.74764251708984, -12498.2861328125),
        },
        ["Mini Tusk"] = {
            ["IsMob"] = function(Mob)
                if getgenv().IslandVariable["IsSea3"] then
                    if string.match(Mob.Name,"Forest Pirate") or string.match(Mob.Name,"Mythological Pirate") then
                        return true
                    end
                end
                return false
            end,
            ["Pos"] = CFrame.new(-13527.8076171875, 523.6344604492188, -7424.10693359375),
        },
        ["Scrap Metal"] = {
            ["IsMob"] = function(Mob)
                if getgenv().IslandVariable["IsSea3"] then
                    if string.match(Mob.Name,"Pirate Millionaire") or string.match(Mob.Name,"Pistol Billionaire") then
                        return true
                    end
                end
                return false
            end,
            ["Pos"] = {CFrame.new(-315.9371337890625, 73.87043762207031, 5939.98193359375),
                CFrame.new(-289.22113037109375, 43.854217529296875, 5574.4697265625),
                CFrame.new(-636.85888671875, 57.015052795410156, 5626.41748046875),
                CFrame.new(-807.3641357421875, 84.8128890991211, 5991.45166015625),
            }
        },
        ["Leather"] = {
            ["IsMob"] = function(Mob)
                if getgenv().IslandVariable["IsSea3"] then
                    if string.match(Mob.Name,"Pirate Millionaire") or string.match(Mob.Name,"Pistol Billionaire") then
                        return true
                    end
                end
                return false
            end,
            ["Pos"] = {CFrame.new(-315.9371337890625, 73.87043762207031, 5939.98193359375),CFrame.new(-289.22113037109375, 43.854217529296875, 5574.4697265625)}
        }
    },
    ["CheckBoss"] =  {"Meteorite",["Meteorite"]={
        ["IsBoss"] = function()
            if getgenv().IslandVariable["IsSea2"] then
                if game.Workspace.Enemies:FindFirstChild("Fajita") then
                    return game.Workspace.Enemies:FindFirstChild("Fajita")
                end
            end
            return false
        end
    }}
}

getgenv().IslandVariable.MaterialName = {
    "Mystic Droplet",
    "Magma Ore",
    "Fish Tail",
    "Vampire Fang",
    "Dragon Scale",
    "Radioactive Material",
    "Conjured Cocoa",
    "Ectoplasm",
    "Mini Tusk",
    "Demonic Wisp",
    "Meteorite",
    "Angel Wings",
    "Scrap Metal",
    "Leather"
}

getgenv().IslandVariable.MaterialSeaChecker = {
    ["Leather"] = "Sea 3",
    ["Scrap Metal"] = "Sea 3",
    ["Mystic Droplet"] = "Sea 2",
    ["Magma Ore"] = "Sea 2",
    ["Ectoplasm"] = "Sea 2",
    ["Bones"]= "Sea 3",
    ["Demonic Wisp"]= "Sea 3",
    ["Fish Tail"] = "Sea 3",
    ["Dragon Scale"] = "Sea 3",
    ["Radioactive Material"] = "Sea 2",
    ["Mini Tusk"] = "Sea 3",
    ["Vampire Fang"] = "Sea 2",
    ["Meteorite"] = "Sea 2",
    ["Conjured Cocoa"] = "Sea 3",
    ["Angel Wings"] = "Sea 1",
}

getgenv().IslandVariable.RaceEntrances = {
    ['Cyborg'] = CFrame.new(28492.52734375, 14895.9755859375, -422.6058654785156),
    ["Human"] = {
        CFrame.new(29019.9609375, 14891.1474609375, -389.439697265625),
        CFrame.new(29237.48828125, 14891.052734375, -204.71849060058594),
    },
    ["Mink"] = CFrame.new(29020.9492, 14890.6328, -380.407867, -0.0712743625, 8.85832776e-08, -0.997456729, -3.87927805e-08, 1, 9.15811214e-08, 0.997456729, 4.52215083e-08, -0.0712743625),
    ["Fishman"] = CFrame.new(28224.0938, 14891.2402, -212.507004, 0.0963651389, -3.22392211e-08, 0.995346069, 3.76359344e-09, 1, 3.20255857e-08, -0.995346069, 6.59927724e-10, 0.0963651389),
    ["Ghoul"] = CFrame.new(28673.8555, 14890.334, 454.733765, -0.999887466, -3.48198981e-09, 0.0150030479, -3.48583518e-09, 1, -2.30164096e-10, -0.0150030479, -2.82436352e-10, -0.999887466),
    ["Skypiea"] = CFrame.new(28967.8086, 14919.2803, 234.668045, -0.00638482161, 3.80502279e-08, -0.999979615, 6.83823131e-08, 1, 3.76143845e-08, 0.999979615, -6.8140757e-08, -0.00638482161),
}

getgenv().IslandVariable.PlacesPosition = {
    SpawnRipIndra = CFrame.new(-5564.91406, 313.950531, -2666.69287, -0.892237544, -1.03326805e-08, -0.451566368, 1.39742387e-08, 1, -5.04931776e-08, 0.451566368, -5.13622034e-08, -0.892237544),
    CenterCastle = Vector3.new(-5581.2353515625, 313.76556396484375, -3064.094970703125),
    DefaultSeaPosition = Vector3.new(0, -10010, 0)
}

getgenv().IslandVariable.AllFruitKeys = {"Z","X","C","V","F"}
getgenv().IslandVariable.Weapon600Mas = {}
getgenv().IslandVariable.GatesInfo = {
    ["Castle"] = {
        CanInstaTP = true,
        Pos = Vector3.new(-5069.12158203125, 314.5155029296875, -3000.46728515625),
    },
    ["Hydra"] = {
        CanInstaTP = true,
        Hitbox = function()
            return game:GetService("Workspace").Map["Boat Castle"].MapTeleportB.Hitbox
        end,
        Pos = Vector3.new(5657.0947265625, 1013.0795288085938, -340.00445556640625),
    },
    ["Mansion"] = {
        CanInstaTP = true,
        Pos = Vector3.new(-12547.1396484375, 337.16827392578125, -7471.8818359375)
    }
}

getgenv().IslandVariable.NPCs = {}
getgenv().IslandVariable.NPCInstances = {}
getgenv().IslandVariable.BlacklistNpcName = {"Boat Dealer","Quest Giver","Dealer","Set Home Point"}

for _, NPC in pairs(workspace.NPCs:GetChildren()) do 
    local IsBlacklist = false
    for _, BlacklistNPC in pairs(getgenv().IslandVariable.BlacklistNpcName) do 
        if string.find(NPC.Name, BlacklistNPC) then
            IsBlacklist = true
            break 
        end
    end
    if (
        NPC:GetAttribute("FloorPos") 
        - getgenv().IslandVariable.PlacesPosition.DefaultSeaPosition
    ).magnitude < 100 then
        IsBlacklist = true 
    end
    if not IsBlacklist then
        table.insert(getgenv().IslandVariable.NPCs, NPC.Name) 
        getgenv().IslandVariable.NPCInstances[NPC.Name] = NPC
    end
end

for _, NPC in pairs(game:GetService("ReplicatedStorage").NPCs:GetChildren()) do 
    local IsBlacklist = false
    for _, BlacklistNPC in pairs(getgenv().IslandVariable.BlacklistNpcName) do 
        if string.find(NPC.Name, BlacklistNPC) then
            IsBlacklist = true
            break 
        end
    end
    if (
        NPC:GetAttribute("FloorPos")
        - getgenv().IslandVariable.PlacesPosition.DefaultSeaPosition
    ).magnitude < 100 then
        IsBlacklist = true 
    end
    if not IsBlacklist then
        table.insert(getgenv().IslandVariable.NPCs, NPC.Name) 
        getgenv().IslandVariable.NPCInstances[NPC.Name] = NPC
    end
end

getgenv().IslandVariable.SkillsV3Name ={
    ["Mink"] = "Agility",
    ["Skypiea"] = "Heavenly Blood",
    ["Ghoul"] = "Heightened Senses",
    ["Fishman"] = "Water Body",
    ["Cyborg"] = "Energy Core",
    ["Human"] = "Last Resort"
}

getgenv().IslandVariable.BossQuest = {
    ["Sea 1"] = {
        ["The Gorilla King"] = {
            Quest = "JungleQuest",
            Require  = 25,
            LvQuest = 3,
            Pos = CFrame.new(-1604.12012, 36.8521118, 154.23732),
        },
        ["Bobby"] = {
            Quest = "BuggyQuest1",
            Require  = 55,
            LvQuest = 3,
            Pos = CFrame.new(-1139.59717, 4.75205183, 3825.16211),
        },
        ["Yeti"] = {
            Quest = "SnowQuest",
            LvQuest = 3,
            Require  = 110,
            Pos = CFrame.new(1384.90247, 87.3078308, -1296.6825),
        },
        ["Vice Admiral"] = {
            Quest = "MarineQuest2",
            LvQuest = 2,
            Require  = 130,
            Pos = CFrame.new(-5035.42285, 28.6520386, 4324.50293),
        },
        ["Warden"] = {
            Quest = "ImpelQuest",
            LvQuest = 1,
            Require  = 220,
            Pos = CFrame.new(5189.8603515625, 3.5371694564819336, 689.46923828125),
        },
        ["Chief Warden"] = {
            Quest = "ImpelQuest",
            LvQuest = 2,
            Require  = 230,
            Pos = CFrame.new(5189.8603515625, 3.5371694564819336, 689.46923828125),
        },
        ["Swan"] = {
            Quest = "ImpelQuest",
            LvQuest = 3,
            Require  = 230,
            Pos = CFrame.new(5189.8603515625, 3.5371694564819336, 689.46923828125),
        },
        ["Magma Admiral"] = {
            Quest = "MagmaQuest",
            LvQuest = 3,
            Require  = 350,
            Pos = CFrame.new(-5317.07666, 12.2721891, 8517.41699),
        },
        ["Fishman Lord"] = {
            Quest = "FishmanQuest",
            LvQuest = 3,
            Require  = 425,
            Pos = CFrame.new(61123.0859, 18.5066795, 1570.18018),
        },
        ["Wysper"] = {
            Quest = "SkyExp1Quest",
            LvQuest = 3,
            Require  = 500,
            Pos = CFrame.new(-7862.94629, 5545.52832, -379.833954),
        },
        ["Thunder God"] = {
            Quest = "SkyExp2Quest",
            LvQuest = 3,
            Require  = 575,
            Pos = CFrame.new(-7902.78613, 5635.99902, -1411.98706),
        },
        ["Cyborg"] = {
            Quest = "FountainQuest",
            LvQuest = 3,
            Require  = 675,
            Pos = CFrame.new(-5253.54834, 38.5361786, 4050.45166),
        },
    },
    ["Sea 2"] = {
        ["Diamond"] = {
            Quest = "Area1Quest",
            LvQuest = 3,
            Require  = 750,
            Pos = CFrame.new(-424.080078, 73.0055847, 1836.91589),
        },
        ["Jeremy"] = {
            Quest = "Area2Quest",
            LvQuest = 3,
            Require  = 850,
            Pos = CFrame.new(632.698608, 73.1055908, 918.666321),
        },
        ["Fajita"] = {
            Quest = "MarineQuest3",
            LvQuest = 3,
            Require  = 925,
            Pos = CFrame.new(-2442.65015, 73.0511475, -3219.11523),          
        },
        ["Smoke Admiral"] = {
            Quest = "IceSideQuest",
            LvQuest = 3,
            Require  = 1150,
            Pos = CFrame.new(-6059.96191, 15.9868021, -4904.7373),          
        },
        ["Awakened Ice Admiral"] = {
            Quest = "FrostQuest",
            LvQuest = 3,
            Require  = 1400,
            Pos = CFrame.new(5669.33203, 28.2118053, -6481.55908),  
        },
        ["Tide Keeper"] = {
            Quest = "ForgottenQuest",
            LvQuest = 3,
            Require  = 1475,
            Pos = CFrame.new(-3053.89648, 236.881363, -10148.2324),  
        },
    },
    ["Sea 3"]  = {
        ["Stone"] = {
            Quest = "PiratePortQuest",
            LvQuest = 3,
            Require  = 1550,
            Pos = CFrame.new(-288.003815, 43.7675667, 5573.12012),  
        },
        ["Island Empress"]  = {
            Quest = "AmazonQuest2",
            LvQuest = 3,
            Require  = 1675,
            Pos = CFrame.new(5444.14355, 601.603821, 751.306763),  
        },
        ["Kilo Admiral"] = {
            Quest = "MarineTreeIsland",
            LvQuest = 3,
            Require  = 1750,
            Pos = CFrame.new(2223.3645, 28.7049141, -6719.18408),
        },
        ["Captain Elephant"] = {
            Quest = "DeepForestIsland",
            LvQuest = 3,
            Require  = 1875,
            Pos = CFrame.new(-13231.1602, 333.744446, -7624.40723),
        },
        ["Cake Queen"] = {
            Quest = "IceCreamIslandQuest",
            LvQuest = 3,
            Require  = 1875,
            Pos = CFrame.new(-821.71612548828, 65.819519042969, -10965.169921875),
        }
    },
}   

getgenv().IslandVariable.AllBoss = {
    ["Sea 1"] = {
        "Saber Expert","The Saw","Bobby","The Gorilla King","Yeti","Vice Admiral",
        "Warden","Chief Warden","Swan","Magma Admiral","Fishman Lord","Wysper",
        "Thunder God","Cyborg"
    },
    ["Sea 2"] =  {
        "Diamond","Jeremy","Fajita","Smoke Admiral","Awakened Ice Admiral","Tide Keeper",
        "Don Swan","Cursed Captain", "Order"
    },
    ["Sea 3"] = {
        "Stone","Island Empress","Kilo Admiral","Captain Elephant","Cake Queen","Beautiful Pirate",
        "Soul Reaper","rip_indra True Form","Cake Prince","Dough King", "Tyrant of the Skies"
    },
}

getgenv().IslandVariable.AutoBlackSmithv1 = {
    ["Dark Blade"] = {
        ["Magma Ore"] = 10,
        ["Dragon Scale"] = 15,
        ["Dark Fragment"] = 1,
    },
    ["Cursed Dual Katana"] = {
        ["Scrap Metal"] = 60,
        ["Mini Tusk"] = 10,
        ["Demonic Wisp"] = 10,
    },
    ["Hallow Scythe"] = {
        ["Scrap Metal"] = 25,
        ["Bones"] = 800,
        ["Demonic Wisp"] = 8,
    },
    ["True Triple Katana"] = {
        ["Leather"] = 50,
        ["Mystic Droplet"] = 20,
        ["Dragon Scale"] = 5,
    },
    ["Spikey Trident"] = {
        ["Scrap Metal"] = 25,
        ["Conjured Cocoa"] = 8,
        ["Mystic Droplet"] = 5,
    },
    ["Koko"] = {
        ["Scrap Metal"] = 15,
        ["Vampire Fang"] = 10,
    },
    ["Tushita"] = {
        ["Leather"] = 6,
        ["Mini Tusk"] = 20,
    },
    ["Pole (2nd Form)"] = {
        ["Scrap Metal"] = 12,
        ["Mystic Droplet"] = 10,
        ["Fish Tail"] = 15,
    },
    ["Saddi"] = {
        ["Leather"] = 10,
        ["Mystic Droplet"] = 8,
    },
    ["Saber"] = {
        ["Scrap Metal"] = 10,
        ["Radioactive Material"] = 5,
        ["Magma Ore"] = 10,
    },
    ["Yama"] = {
        ["Leather"] = 6,
        ["Mini Tusk"] = 20,
    },
    ["Midnight Blade"] = {
        ["Scrap Metal"] = 15,
        ["Ectoplasm"] = 40,
    },
    ["Buddy Sword"] = {
        ["Leather"] = 25,
        ["Conjured Cocoa"] = 8,
        ["Mystic Droplet"] = 5,
    },
    ["Shisui"] = {
        ["Leather"] = 10,
        ["Mystic Droplet"] = 8,
    },
    ["Bisento"] = {
        ["Scrap Metal"] = 15,
        ["Angel Wings"] = 12,
        ["Magma Ore"] = 10,
    },
    ["Pole (1st Form)"] = {
        ["Scrap Metal"] = 20,
        ["Angel Wings"] = 10,
        ["Radioactive Material"] = 10,
    },
    ["Canvander"] = {
        ["Leather"] = 20,
        ["Dragon Scale"] = 6,
    },
    ["Dark Dagger"] = {
        ["Scrap Metal"] = 10,
        ["Dragon Scale"] = 8,
        ["Dark Fragment"] = 1,
    },
    ["Rengoku"] = {
        ["Vampire Fang"] = 8,
        ["Scrap Metal"] = 15,
        ["Magma Ore"] = 20,
    },
    ["Wando"] = {
        ["Leather"] = 10,
        ["Mystic Droplet"] = 8,
    },
    ["Longsword"] = {
        ["Scrap Metal"] = 10,
        ["Radioactive Material"] = 10,
    },
    ["Pipe"] = {
        ["Scrap Metal"] = 10,
        ["Fish Tail"] = 12,
    },
    ["Dragon Trident"] = {
        ["Leather"] = 10,
        ["Dragon Scale"] = 10,
    },
    ["Jitte"] = {
        ["Scrap Metal"] = 15,
        ["Vampire Fang"] = 10,
    },
    ["Dual-Headed Blade"] = {
        ["Scrap Metal"] = 10,
        ["Fish Tail"] = 12,
    },
    ["Gravity Cane"] = {
        ["Scrap Metal"] = 10,
        ["Meteorite"] = 3,
    },
    ["Soul Cane"] = {
        ["Leather"] = 20,
        ["Radioactive Material"] = 5,
    },
    ["Iron Mace"] = {
        ["Leather"] = 10,
        ["Angel Wings"] = 10,
    },
    ["Shark Saw"] = {
        ["Leather"] = 12,
    },
    ["Twin Hooks"] = {
        ["Leather"] = 20,
        ["Mini Tusk"] = 8,
        ["Fish Tail"] = 10,
    },
    ["Triple Katana"] = {
        ["Leather"] = 15,
        ["Scrap Metal"] = 15,
    },
    ["Skull Guitar"] = {
        ["Magma Ore"] = 10,
        ["Dragon Scale"] = 15,
        ["Dark Fragment"] = 1,
    },
    ["Kabucha"] = {
        ["Leather"] = 50,
        ["Dragon Scale"] = 15,
        ["Vampire Fang"] = 3,
    },
    ["Serpent Bow"] = {
        ["Meteorite"] = 1,
        ["Scrap Metal"] = 10,
        ["Vampire Fang"] = 10,
    },
    ["Bazooka"] = {
        ["Magma Ore"] = 10,
        ["Dragon Scale"] = 15,
        ["Dark Fragment"] = 1,
    },
    ["Cannon"] = {
        ["Leather"] = 5,
        ["Fish Tail"] = 5,
        ["Magma Ore"] = 5,
    },
    ["Refined Slingshot"] = {
        ["Scrap Metal"] = 10,
        ["Angel Wings"] = 10,
    },
    ["Bizarre Rifle"] = {
        ["Leather"] = 20,
        ["Angel Wings"] = 10,
        ["Magma Ore"] = 5,
    },
    ["Musket"] = {
        ["Leather"] = 5,
        ["Fish Tail"] = 5,
    },
    ["Flintlock"] = {
        ["Leather"] = 5,
        ["Magma Ore"] = 5,
    },  
    ["Refined Musket"] = {
        ["Scrap Metal"] = 10,
        ["Fish Tail"] = 10,
    },
    ["Acidum Rifle"] = {
        ["Leather"] = 10,
        ["Vampire Fang"] = 8,
    },
}

getgenv().IslandVariable.BloxFruitCodes = {"GAMERROBOT_YT","FUDD10","fudd10_v2","BIGNEWS","THEGREATACE","SUB2NOOBMASTER123","Sub2Daigrock","Axiore"
,"TantaiGaming","STRAWHATMAINE","Sub2OfficialNoobie","UPD16","SUB2GAMERROBOT_EXP1","3BVISITS","Enyu_is_Pro","Sub2Fer999","Bluxxy","JCWK"
,"Magicbus","Starcodeheo","kittgaming","ADMINGIVEAWAY","GAMER_ROBOT_1M","Sub2CaptainMaui","15B_BESTBROTHERS","DEVSCOOKING","krazydares","Sub2CaptainMaui","DEVSCOOKING",
"KITT_RESET","Sub2UncleKizaru","SUB2GAMERROBOT_RESET1","NOMOREHACK","BANEXPLOIT","GIFTING_HOURS"}

getgenv().IslandVariable.IsNightC = {
    "18","19","20","21","23","24","00","01","02","03","04"
}

getgenv().IslandVariable.BlacklistedItems = getgenv().IslandVariable.BlacklistedItems or {
    "Hallow Essence",
    "God's Chalice",
    "Sweet Chalice",
    "Microchip",
    "Special Microchip",
    "Fist of Darkness",
    "Core Brain"
}
