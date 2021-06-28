Config = {}

Config.ESX = {									-- ESX settings, if you are using vRP just ignore
	['ESXSHAREDOBJECT'] = "esx:getSharedObject",-- Change your getshared object event here, if you are using anti-cheat
}

Config.stock = {
	['default_price'] = 2.00,
	['default_stock'] = 9999
}

Config.FuelDecor = "FUEL_LEVEL"

Config.DisableKeys = { 0,22,23,24,29,30,31,37,44,56,82,140,166,167,168,170,288,289,311,323 }

Config.PumpModels = {
	[-2007231801] = true,
	[1339433404] = true,
	[1694452750] = true,
	[1933174915] = true,
	[-462817101] = true,
	[-469694731] = true,
	[-164877493] = true
}

Config.GasStationOwner = {
	["gas_station_1"] = {264.95275878906,-1259.4567871094,29.142911911011,30},
	["gas_station_2"] = {819.61047363281,-1028.2071533203,26.404321670532,30},
	["gas_station_3"] = {1208.6068115234,-1402.2863769531,35.224140167236,30},
	["gas_station_4"] = {1180.9593505859,-329.84280395508,69.316436767578,30},
	["gas_station_5"] = {620.80499267578,268.73849487305,103.08948516846,30},
	["gas_station_6"] = {2581.1779785156,362.01254272461,108.46883392334,30},
	["gas_station_7"] = {175.55857849121,-1562.2135009766,29.264209747314,30},
	["gas_station_8"] = {-319.42581176758,-1471.8182373047,30.548692703247,30},
	["gas_station_9"] = {1785.9000244141,3330.9035644531,41.377250671387,30},
	["gas_station_10"] = {49.802303314209,2779.318359375,58.043937683105,30},
	["gas_station_11"] = {263.92358398438,2607.4140625,44.983062744141,30},
	["gas_station_12"] = {1039.1220703125,2671.30859375,39.550872802734,30},
	["gas_station_13"] = {1208.0380859375,2660.4892578125,37.899772644043,30},
	["gas_station_14"] = {2539.3337402344,2594.61328125,37.944820404053,30},
	["gas_station_15"] = {2679.9396972656,3264.0981445313,55.240585327148,30},
	["gas_station_16"] = {2005.0074462891,3774.2006835938,32.40393447876,30},
	["gas_station_17"] = {1687.263671875,4929.6328125,42.078086853027,30},
	["gas_station_18"] = {1702.0052490234,6416.9975585938,32.763767242432,30},
	["gas_station_19"] = {179.82470703125,6602.8408203125,31.868196487427,30},
	["gas_station_20"] = {-94.206100463867,6419.4975585938,31.489490509033,30},
	["gas_station_21"] = {-2555.1257324219,2334.2705078125,33.078022003174,30},
	["gas_station_22"] = {-1799.4152832031,802.8154296875,138.65368652344,30},
	["gas_station_23"] = {-1436.9724121094,-276.55426025391,46.207653045654,30},
	["gas_station_24"] = {-2096.5913085938,-321.48611450195,13.168619155884,30},
	["gas_station_25"] = {-723.298828125,-935.55322265625,19.213928222656,30},
	["gas_station_26"] = {-525.35266113281,-1211.3215332031,18.184829711914,30},
	["gas_station_27"] = {-70.514175415039,-1761.2590332031,29.655626296997,30},
}

Config.Classes = {
	[0] = 0.6, -- Compacts
	[1] = 0.6, -- Sedans
	[2] = 0.6, -- SUVs
	[3] = 0.6, -- Coupes
	[4] = 0.6, -- Muscle
	[5] = 0.6, -- Sports Classics
	[6] = 0.6, -- Sports
	[7] = 0.6, -- Super
	[8] = 0.6, -- Motorcycles
	[9] = 0.6, -- Off-road
	[10] = 0.6, -- Industrial
	[11] = 0.6, -- Utility
	[12] = 0.6, -- Vans
	[13] = 0.0, -- Cycles
	[14] = 0.0, -- Boats
	[15] = 0.0, -- Helicopters
	[16] = 0.0, -- Planes
	[17] = 0.3, -- Service
	[18] = 0.3, -- Emergency
	[19] = 0.6, -- Military
	[20] = 0.6, -- Commercial
	[21] = 0.6, -- Trains
}

Config.FuelUsage = {
	[1.0] = 2.0,
	[0.9] = 1.8,
	[0.8] = 1.6,
	[0.7] = 1.4,
	[0.6] = 1.2,
	[0.5] = 1.0,
	[0.4] = 0.8,
	[0.3] = 0.6,
	[0.2] = 0.4,
	[0.1] = 0.2,
	[0.0] = 0.0,
}

Config.gas_station_locations = {
	["gas_station_1"] = {										-- ID
		['buy_price'] = 800000,									-- Price to buy this gas station
		['sell_price'] = 400000,								-- Price to sell this gas station
		['coord'] = {289.27,-1267.01,29.45},					-- Coordinates to open the menu
		['truck_coord'] = {278.33,-1243.18,29.2,185.71},		-- Garage coordinates, where trucks will spawn (coordinates made up of x, y, z, h)
		['trailer_coord'] = {284.9,-1245.9,29.22,178.75},		-- Garage coordinates, where the truck trailers will spawn (coordinates composed of x, y, z, h)
		['deliveryman_coord'] = {288.56,-1269.86,29.45},		-- Coordinates where the delivery person will take the jobs you created
		['type'] = 'small_gas_station', 						-- Enter the gas station type ID here
	},
	["gas_station_2"] = {
		['buy_price'] = 700000,
		['sell_price'] = 350000,
		['coord'] = {818.1,-1040.54,26.76},
		['truck_coord'] = {827.26,-1045.28,27.25,352.23},
		['trailer_coord'] = {825.43,-1058.54,27.95,349.77},
		['deliveryman_coord'] = {820.73,-1040.27,26.76},
		['type'] = 'small_gas_station',
	},
	["gas_station_3"] = {
		['buy_price'] = 650000,
		['sell_price'] = 330000,
		['coord'] = {1211.36,-1389.19,35.38},
		['truck_coord'] = {1197.71,-1403.83,35.23,174.42},
		['trailer_coord'] = {1197.73,-1392.26,35.23,179.75},
		['deliveryman_coord'] = {1207.58,-1389.69,35.38},
		['type'] = 'small_gas_station',
	},
	["gas_station_4"] = {
		['buy_price'] = 650000,
		['sell_price'] = 330000,
		['coord'] = {1167.22,-321.45,69.28,101.94},
		['truck_coord'] = {1158.52,-339.37,68.07,195.21},
		['trailer_coord'] = {1154.73,-340.22,67.78,182.82},
		['deliveryman_coord'] = {1164.85,-326.2,69.25,16.22},
		['type'] = 'small_gas_station',
	},
	["gas_station_5"] = {
		['buy_price'] = 600000,
		['sell_price'] = 300000,
		['coord'] = {642.37,260.39,103.3,240.42},
		['truck_coord'] = {640.34,275.72,103.14,148.4},
		['trailer_coord'] = {644.27,274.14,103.14,149.89},
		['deliveryman_coord'] = {646.51,267.58,103.26,241.78},
		['type'] = 'small_gas_station',
	},
	["gas_station_6"] = {
		['buy_price'] = 400000,
		['sell_price'] = 200000,
		['coord'] = {2559.1,373.79,108.63,89.26},
		['truck_coord'] = {2583.31,407.09,108.46,180.32},
		['trailer_coord'] = {2588.93,407.35,108.46,177.83},
		['deliveryman_coord'] = {2559.44,356.5,108.63,85.51},
		['type'] = 'small_gas_station',
	},
	["gas_station_7"] = {
		['buy_price'] = 750000,
		['sell_price'] = 350000,
		['coord'] = {166.83,-1553.26,29.27,42.35},
		['truck_coord'] = {181.51,-1552.6,29.18,220.92},
		['trailer_coord'] = {184.35,-1549.41,29.19,212.39},
		['deliveryman_coord'] = {164.66,-1556.33,29.27,43.06},
		['type'] = 'small_gas_station',
	},
	["gas_station_8"] = {
		['buy_price'] = 700000,
		['sell_price'] = 350000,
		['coord'] = {-342.5,-1475.09,30.75,87.6},
		['truck_coord'] = {-332.91,-1486.36,30.62,12.0},
		['trailer_coord'] = {-337.62,-1486.47,30.59,1.16},
		['deliveryman_coord'] = {-342.61,-1485.99,30.76,89.84},
		['type'] = 'small_gas_station',
	},
	["gas_station_9"] = {
		['buy_price'] = 500000,
		['sell_price'] = 250000,
		['coord'] = {1776.34,3327.44,41.44,118.91},
		['truck_coord'] = {1784.93,3322.97,41.42,317.42},
		['trailer_coord'] = {1787.89,3318.95,41.62,301.42},
		['deliveryman_coord'] = {1777.64,3325.0,41.44,120.45},
		['type'] = 'small_gas_station',
	},
	["gas_station_10"] = {
		['buy_price'] = 400000,
		['sell_price'] = 200000,
		['coord'] = {46.66,2789.41,57.88,322.54},
		['truck_coord'] = {61.19,2780.46,57.88,145.73},
		['trailer_coord'] = {64.39,2777.86,57.88,145.99},
		['deliveryman_coord'] = {56.1,2785.75,57.88,325.04},
		['type'] = 'small_gas_station',
	},
	["gas_station_11"] = {
		['buy_price'] = 400000,
		['sell_price'] = 200000,
		['coord'] = {265.9,2598.27,44.84,187.59},
		['truck_coord'] = {236.38,2602.51,45.32,15.15},
		['trailer_coord'] = {241.88,2605.24,45.15,98.1},
		['deliveryman_coord'] = {268.28,2598.66,44.84,193.58},
		['type'] = 'small_gas_station',
	},
	["gas_station_12"] = {
		['buy_price'] = 450000,
		['sell_price'] = 220000,
		['coord'] = {1039.27,2664.23,39.56,184.1},
		['truck_coord'] = {1028.3,2669.53,39.56,359.01},
		['trailer_coord'] = {1022.44,2669.65,39.56,2.54},
		['deliveryman_coord'] = {1036.28,2664.8,39.56,173.18},
		['type'] = 'small_gas_station',
	},
	["gas_station_13"] = {
		['buy_price'] = 450000,
		['sell_price'] = 220000,
		['coord'] = {1200.68,2655.62,37.86,129.51},
		['truck_coord'] = {1211.54,2645.8,37.83,350.83},
		['trailer_coord'] = {1194.27,2664.12,37.81,307.48},
		['deliveryman_coord'] = {1204.73,2653.79,37.86,130.24},
		['type'] = 'small_gas_station',
	},
	["gas_station_14"] = {
		['buy_price'] = 350000,
		['sell_price'] = 150000,
		['coord'] = {2561.88,2590.69,38.09,111.26},
		['truck_coord'] = {2537.62,2614.28,37.95,284.28 },
		['trailer_coord'] = {2539.67,2609.49,37.95,294.62},
		['deliveryman_coord'] = {2560.25,2595.21,38.09,111.04},
		['type'] = 'small_gas_station',
	},
	["gas_station_15"] = {
		['buy_price'] = 400000,
		['sell_price'] = 200000,
		['coord'] = {2673.71,3266.88,55.25,65.02},
		['truck_coord'] = {2663.11,3250.49,54.96,240.18},
		['trailer_coord'] = {2666.79,3256.28,55.25,245.83},
		['deliveryman_coord'] = {2677.61,3272.99,55.41,60.26},
		['type'] = 'small_gas_station',
	},
	["gas_station_16"] = {
		['buy_price'] = 450000,
		['sell_price'] = 220000,
		['coord'] = {2001.46,3779.97,32.19,27.27},
		['truck_coord'] = {1977.54,3769.05,32.19,208.79},
		['trailer_coord'] = {1983.13,3771.28,32.19,205.63},
		['deliveryman_coord'] = {2006.31,3782.1,32.19,31.42},
		['type'] = 'small_gas_station',
	},
	["gas_station_17"] = {
		['buy_price'] = 200000,
		['sell_price'] = 100000,
		['coord'] = {1702.81,4917.25,42.23,327.75},
		['truck_coord'] = {1685.22,4923.52,42.08,51.58},
		['trailer_coord'] = {1682.18,4920.22,42.08,53.27},
		['deliveryman_coord'] = {1696.73,4927.44,42.24,234.67},
		['type'] = 'small_gas_station',
	},
	["gas_station_18"] = {
		['buy_price'] = 200000,
		['sell_price'] = 100000,
		['coord'] = {1706.25,6425.88,32.78,337.42},
		['truck_coord'] = {1711.78,6415.53,32.95,157.15},
		['trailer_coord'] = {1716.57,6412.93,33.53,156.53},
		['deliveryman_coord'] = {1698.68,6426.06,32.77,337.51},
		['type'] = 'small_gas_station',
	},
	["gas_station_19"] = {
		['buy_price'] = 200000,
		['sell_price'] = 100000,
		['coord'] = {156.4,6628.03,31.84,320.48},
		['truck_coord'] = {167.99,6602.3,31.85,182.23},
		['trailer_coord'] = {162.8,6600.87,31.86,189.62},
		['deliveryman_coord'] = {180.97,6600.43,32.05,99.79},
		['type'] = 'small_gas_station',
	},
	["gas_station_20"] = {
		['buy_price'] = 200000,
		['sell_price'] = 100000,
		['coord'] = {-92.59,6409.92,31.65,227.57},
		['truck_coord'] = {-84.41,6425.86,31.5,45.22},
		['trailer_coord'] = {-80.86,6430.33,31.5,46.0},
		['deliveryman_coord'] = {-90.66,6414.05,31.65,221.1},
		['type'] = 'small_gas_station',
	},
	["gas_station_21"] = {
		['buy_price'] = 400000,
		['sell_price'] = 200000,
		['coord'] = {-2544.05,2315.94,33.22,188.89},
		['truck_coord'] = {-2520.51,2338.61,33.06,208.15},
		['trailer_coord'] = {-2524.16,2336.7,33.06,209.23},
		['deliveryman_coord'] = {-2552.98,2315.94,33.22,172.08},
		['type'] = 'small_gas_station',
	},
	["gas_station_22"] = {
		['buy_price'] = 450000,
		['sell_price'] = 220000,
		['coord'] = {-1818.72,796.68,138.14,128.86},
		['truck_coord'] = {-1819.58,774.97,136.93,208.09},
		['trailer_coord'] = {-1816.09,777.12,137.05,215.49},
		['deliveryman_coord'] = {-1818.08,791.34,138.12,41.34},
		['type'] = 'small_gas_station',
	},
	["gas_station_23"] = {
		['buy_price'] = 450000,
		['sell_price'] = 220000,
		['coord'] = {-1427.92,-268.1,46.23,309.63},
		['truck_coord'] = {-1425.13,-285.27,46.22,128.54},
		['trailer_coord'] = {-1418.41,-284.97,46.27,127.03},
		['deliveryman_coord'] = {-1435.93,-259.56,46.27,318.99},
		['type'] = 'small_gas_station',
	},
	["gas_station_24"] = {
		['buy_price'] = 450000,
		['sell_price'] = 220000,
		['coord'] = {-2073.02,-327.4,13.32,265.21},
		['truck_coord'] = {-2086.82,-331.87,13.03,81.77},
		['trailer_coord'] = {-2087.14,-335.31,13.04,79.5},
		['deliveryman_coord'] = {-2073.57,-324.56,13.32,263.24},
		['type'] = 'small_gas_station',
	},
	["gas_station_25"] = {
		['buy_price'] = 650000,
		['sell_price'] = 330000,
		['coord'] = {-703.0,-916.85,19.22,359.45},
		['truck_coord'] = {-711.72,-929.02,19.02,177.74},
		['trailer_coord'] = {-706.4,-929.02,19.02,177.91},
		['deliveryman_coord'] = {-706.55,-917.16,19.22,356.88},
		['type'] = 'small_gas_station',
	},
	["gas_station_26"] = {
		['buy_price'] = 650000,
		['sell_price'] = 330000,
		['coord'] = {-531.43,-1221.15,18.46,152.6},
		['truck_coord'] = {-514.5,-1201.33,19.1,314.81},
		['trailer_coord'] = {-511.64,-1206.39,18.75,315.84},
		['deliveryman_coord'] = {-535.7,-1218.22,18.46,149.83},
		['type'] = 'small_gas_station',
	},
	["gas_station_27"] = {
		['buy_price'] = 650000,
		['sell_price'] = 330000,
		['coord'] = {-49.33,-1760.37,29.44,316.8},
		['truck_coord'] = {-68.88,-1744.15,29.36,123.63},
		['trailer_coord'] = {-67.02,-1748.64,29.45,108.54},
		['deliveryman_coord'] = {-51.57,-1758.84,29.44,317.78},
		['type'] = 'small_gas_station',
	}
}
Config.gas_station_types = {
	['small_gas_station'] = {					-- Gas station type ID
		['stock_capacity'] = 1000,				-- Maximum stock capacity
		['min_gas_price'] = 0,					-- Minimum price that the owner can apply
		['max_gas_price'] = 10,					-- Maximum price that the owner can apply
		['upgrades'] = {						-- Definition of each upgrade
			['stock'] = {						-- Stock capacity
				['price'] = 20000,				-- Price
				['level_reward'] = {			-- Reward for each level (maximum level: 5)
					[0] = 0,
					[1] = 250,
					[2] = 500,
					[3] = 1000,
					[4] = 1500,
					[5] = 2000,
				}
			},
			['truck'] = {						-- Truck capacity
				['price'] = 45000,
				['level_reward'] = {
					[0] = 0,
					[1] = 10,
					[2] = 20,
					[3] = 30,
					[4] = 40,
					[5] = 50,
				}
			},
			['relationship'] = {				-- Relationship
				['price'] = 60000,
				['level_reward'] = {
					[0] = 0,
					[1] = 5,
					[2] = 10,
					[3] = 20,
					[4] = 30,
					[5] = 40,
				}
			},
		},
		['ressuply_deliveryman'] = {					-- Driver contracts
			['max_amount'] = 100,						-- Maximum amount of fuel per contract
			['price_per_liter'] = 35					-- Standard price per contract liter
		},
		['ressuply'] = {								-- Definition of contracts for the owner
			[1] = {
				['name'] = 'Small cargo',				-- Name in contract
				['price_per_liter_to_import'] = 35,		-- Price per liter to import
				['price_per_liter_to_export'] = 40,		-- Price per liter to export
				['liters'] = 50,						-- Delivery liters
				['max_distance'] = 3,					-- Maximum distance that a delivery is generated
				['truck_level'] = 0,					-- Required truck level
				['img'] = 'combustivel.png'				-- Image
			},
			[2] = {
				['name'] = 'Medium cargo',
				['price_per_liter_to_import'] = 30,
				['price_per_liter_to_export'] = 40,
				['liters'] = 100,
				['max_distance'] = 5.5,
				['truck_level'] = 2,
				['img'] = 'barril.png'
			},
			[3] = {
				['name'] = 'Large cargo',
				['price_per_liter_to_import'] = 20,
				['price_per_liter_to_export'] = 40,
				['liters'] = 200,
				['max_distance'] = 99,
				['truck_level'] = 5,
				['img'] = 'caminhao.png'
			}
		},
		['blips'] = {							-- Create the blips on the map
			['id']    = 361,            -- Blip ID [Set this value to 0 to not have a blip]
			['name']  = "Petrol Ofisi", -- Blip Name
			['color'] = 1,              -- Blip Color
			['scale'] = 0.7,            -- Blip Scale
		}
	}
}
