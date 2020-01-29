

/*
	This is a simple mission using precisely placed loot crates and infantry, static weapons and vehicle patrols.
	See the accompanying example mission in the exampleMission folder to get an idea how I laid this out.
	Note that I exported the mission using the exportAll function of M3EDEN editor.
*/

#include "privateVars.sqf";

_mission = "static mission template";  //  Included for additional documentation. Not intended to be spawned as a mission per se.

_difficulty = "red";  // Skill level of AI (blue, red, green etc)
diag_log format["[blckeagls static missions] STARTED initializing middions %1 position at %2 difficulty %3",_mission,_missionCenter,_difficulty];
_crateLoot = blck_BoxLoot_Orange;  // You can use a customized _crateLoot configuration by defining an array here. It must follow the following format shown for a hypothetical loot array called _customLootArray
	/*
	_customLootArray = 
		// Loot is grouped as [weapons],[magazines],[items] in order to be able to use the correct function to load the item into the crate later on.
		// Each item consist of the following information ["ItemName",minNum, maxNum] where min is the smallest number added and min+max is the largest number added.
		
		[  
			[// Weapons	

				["srifle_DMR_06_olive_F","20Rnd_762x51_Mag"]				
			],
			[//Magazines
				["10Rnd_93x64_DMR_05_Mag" ,1,5]				
			],			
			[  // Optics
				["optic_KHS_tan",1,3]
			],
			[// Materials and supplies				
				["Exile_Item_MetalScrews",3,10]
				//
			],
			[//Items
				["Exile_Item_MountainDupe",1,3]				
			],
			[ // Backpacks
				["B_OutdoorPack_tan",1,2]
			]
	];	
	*/

_lootCounts = blck_lootCountsRed; // You can use a customized set of loot counts or one that is predefined but it must follow the following format:
								  // values are: number of things from the weapons, magazines, optics, materials(cinder etc), items (food etc) and backpacks arrays to add, respectively.
								  //  blck_lootCountsOrange = [[6,8],[24,32],[5,10],[25,35],16,1];   // Orange

/****************************************************

	PLACE MARKER DEFINITIONS PULLED FROM YOUR MISSION BELOW
	
*****************************************************/

_markerType = ["mil_flag",[0,0]];
_markerColor = "ColorEAST";
_markermissionname = "Destroyer";
_markerLabel = "";
_missionCenter = [1391.91,4534.11,0];

/****************************************************

	PLACE THE DATA DEFININING THE BUILDINGS, VEHICLES ETC. PULLED FROM YOUR MISSION BELOW
	
*****************************************************/
								  
					_garrisonedBuildings_BuildingPosnSystem = [
];

_garrisonedBuilding_ASLsystem = [
     ["Land_Destroyer_01_hull_01_F",[1391.91,4534.11,-0.649969],[[0.800984,-0.598686,0],[0,0,1]],true,true,[["B_Ship_Gun_01_F",[4.72949,-3.60547,12.7434],307.439],["B_HMG_01_high_F",[4.54016,-11.2021,12.6131],218.472],["B_HMG_01_high_F",[12.3756,-1.15869,12.6055],35.61],["B_HMG_01_high_F",[-18.7921,14.3188,13.5111],302.093]],[[[18.4319,-5.26758,11.2153],125.682],[[10.4352,-15.731,11.2192],126.977]],600],
     ["Land_Destroyer_01_hull_02_F",[1423.95,4510.16,-0.649969],[[0.800984,-0.598686,0],[0,0,1]],true,true,[["B_AAA_System_01_F",[-2.25073,1.73682,15.7379],306.598],["B_Ship_MRLS_01_F",[-13.9872,10.4492,11.174],306.737]],[],600],
     ["Land_Destroyer_01_interior_03_F",[1460,4483.22,-0.649969],[[0.800984,-0.598686,0],[0,0,1]],true,true,[["B_HMG_01_high_F",[-10.1742,8.03906,7.91909],126.706],["B_HMG_01_high_F",[2.72375,-16.1348,7.91922],42.9322],["B_HMG_01_high_F",[16.5839,2.18066,7.9192],214.502],["B_HMG_01_high_F",[5.68848,-18.1914,7.91922],31.9215],["B_HMG_01_high_F",[19.4551,-0.00439453,7.9192],225.512],["B_HMG_01_high_F",[-20.0377,9.01123,11.011],42.4187]],[[[17.2562,-13.7939,7.92044],123.338],[[18.3827,-12.2373,7.92066],123.337],[[14.7008,-13.4897,7.92044],35.3291],[[20.3577,-4.94238,7.92065],269.259],[[10.6315,-17.2856,7.92065],331.786],[[14.04,-8.40332,7.92068],129.234],[[17.1906,-3.07178,7.92065],256.3],[[10.2245,-10.4814,7.92044],83.8439],[[6.5321,-14.2183,7.92067],355.258],[[8.61267,-8.57373,7.92067],95.4863],[[10.6578,-5.18457,7.92067],132.177],[[7.36707,-5.53564,7.92071],120.027],[[12.703,1.01563,7.92065],192.721],[[2.7157,-11.6484,7.92065],52.269],[[9.87585,2.76758,7.92065],169.98],[[-0.106323,-9.88867,7.92065],68.2595],[[3.9646,-2.23047,7.9207],108.07],[[2.1499,-3.51074,7.92083],349.174],[[1.4425,0.710938,7.92056],123.923],[[-1.80359,-0.573242,7.92044],100.847],[[-0.227417,1.98584,7.92044],125.283],[[-3.26526,0.62793,7.92076],100.411],[[-2.53613,3.5835,7.92054],122.522],[[-6.16113,3.58398,7.92065],108.109],[[-11.7808,10.2075,7.92058],209.775],[[-19.2814,8.31104,11.0124],26.8193]],600],
     ["Land_Destroyer_01_interior_02_F",[1423.95,4510.16,-0.649969],[[0.800984,-0.598686,0],[0,0,1]],true,true,[["B_HMG_01_high_F",[5.01099,-3.89209,11.0036],127.048],["B_HMG_01_high_F",[10.8843,-11.3027,17.4478],158.015]],[[[5.72925,-2.02148,11.0051],134.144],[[4.04919,-4.86035,11.0051],104.51],[[1.52112,-8.03076,11.0051],35.1277],[[8.57251,0.78418,11.0051],225.784],[[12.7998,-8.05127,11.0064],151.586],[[1.52563,-1.25928,19.842],295.781],[[9.59998,-14.0918,11.0094],123.392],[[-1.18127,-5.98975,19.842],120.854],[[5.33276,3.2002,19.842],166.754],[[4.22217,-4.77832,19.842],158.107],[[5.79309,-2.68311,19.842],168.472],[[10.0356,-11.7954,14.2685],126.151],[[16.5643,-11.1797,11.0064],214.928],[[10.4938,-14.623,14.2685],306.919],[[14.4235,-14.2329,11.009],213.067],[[10.3951,-12.2212,17.4492],147.258],[[6.73352,-11.2139,19.923],94.4214],[[9.48193,-13.1953,17.4492],120.328]],600],
     ["Land_Destroyer_01_hull_04_F",[1496.04,4456.28,-0.649969],[[0.800984,-0.598686,0],[0,0,1]],true,true,[["B_AAA_System_01_F",[5.1239,-3.81299,16.435],127.49],["B_AAA_System_01_F",[-7.22266,5.40479,19.8668],126.907]],[],600],
     ["Land_Destroyer_01_interior_04_F",[1496.04,4456.28,-0.649969],[[0.800984,-0.598686,0],[0,0,1]],true,true,[["B_HMG_01_high_F",[-10.6223,18.4663,9.45069],159.411]],[[[-0.0811768,-2.49951,9.45211],35.2905],[[3.74036,0.499512,9.45212],219.071],[[4.07251,4.46191,9.45212],32.9361],[[-2.64954,-5.72754,9.45211],209.113],[[0.796021,6.94385,9.45211],32.2703],[[0.0319824,-7.6875,9.45212],209.113],[[2.64417,8.20605,11.7909],217.679],[[13.7255,-0.901855,9.45212],293.906],[[4.60083,-13.2754,9.45212],214.506],[[14.0101,5.79736,9.43772],122.065],[[-3.71155,13.167,11.7909],32.2703],[[-15.2096,4.36914,9.45212],113.126],[[-13.408,9.53369,9.45211],211.223],[[17.4581,3.89941,9.43772],209.113],[[-14.6182,10.5728,9.45213],215.171]],600],
     ["Land_Destroyer_01_hull_01_F",[30295.4,319.649,-0.622],[[0.683923,0.729554,0],[0,0,1]],true,true,[["B_Ship_Gun_01_F",[4.10742,4.29971,12.7434],223.814],["B_HMG_01_high_F",[11.6367,3.26865,12.6131],134.846],["B_HMG_01_high_F",[2.52539,12.1696,12.6055],311.985],["B_HMG_01_high_F",[-16.3184,-17.0865,13.5111],218.468]],[[[7.33203,17.7766,11.2153],42.0576],[[16.8418,8.66891,11.2192],43.3522]],600],
     ["Land_Destroyer_01_hull_02_F",[30322.8,348.831,-0.622],[[0.683923,0.729554,0],[0,0,1]],true,true,[["B_AAA_System_01_F",[-1.97656,-2.04358,15.7379],222.973],["B_Ship_MRLS_01_F",[-11.9414,-12.7422,11.174],223.112]],[],600],
     ["Land_Destroyer_01_interior_02_F",[30322.8,348.831,-0.622],[[0.683923,0.729554,0],[0,0,1]],true,true,[["B_HMG_01_high_F",[4.42383,4.548,11.0036],43.4227],["B_HMG_01_high_F",[12.4434,9.56168,17.4478],74.3907]],[[[13,15.2649,11.0064],131.302],[[15.7969,12.7982,11.009],129.441],[[15.1211,8.0199,11.0094],39.767],[[15.748,8.84909,14.2685],223.293],[[9.47266,11.8699,11.0064],67.961],[[12.8867,8.70901,14.2685],42.5262],[[13.3477,9.01886,17.4492],63.6329],[[14.2148,8.00345,17.4492],36.7034],[[11.9414,5.49207,19.923],10.7965],[[5.33203,3.52863,11.0051],20.8846],[[0.222656,8.65125,11.0051],142.158],[[2.69531,5.51337,11.0051],50.5195],[[8.20117,0.6651,11.0051],311.503],[[3.36133,5.50327,19.842],84.847],[[5.26758,3.71045,19.842],74.4826],[[5.87109,-1.79449,19.842],37.2293],[[1.4707,1.42041,19.842],212.155],[[-2.53711,5.69864,19.842],83.1293]],600],
     ["Land_Destroyer_01_interior_03_F",[30353.6,381.661,-0.622],[[0.683923,0.729554,0],[0,0,1]],true,true,[["B_HMG_01_high_F",[-9.11523,-9.21994,7.91909],43.0813],["B_HMG_01_high_F",[16.3379,0.915314,7.91922],319.307],["B_HMG_01_high_F",[-0.707031,16.3835,7.9192],130.875],["B_HMG_01_high_F",[18.709,3.63425,7.91922],308.297],["B_HMG_01_high_F",[1.78516,18.9931,7.9192],141.886],["B_HMG_01_high_F",[-11.1758,-18.9154,11.011],318.794]],[[[15.6738,15.662,7.92044],39.713],[[14.252,16.9545,7.92066],39.7126],[[15.0879,13.157,7.92044],311.704],[[7.22266,19.7268,7.92065],185.634],[[18.4082,8.69135,7.92065],248.161],[[9.95898,13.065,7.92068],45.609],[[5.00977,16.7883,7.92065],172.675],[[11.6016,9.04199,7.92044],0.219],[[14.9043,4.95792,7.92067],271.633],[[9.52734,7.65131,7.92067],11.8615],[[6.38672,10.0601,7.92067],48.552],[[6.36914,6.75143,7.92071],36.4026],[[0.451172,12.7811,7.92065],109.095],[[11.9258,1.44986,7.92065],328.644],[[-1.60352,10.167,7.92065],86.3551],[[9.86523,-1.15985,7.92065],344.635],[[2.70508,3.7366,7.9207],24.4451],[[3.77734,1.79135,7.92083],265.548],[[-0.496094,1.55679,7.92056],40.298],[[0.419922,-1.81201,7.92044],17.222],[[-1.94922,0.039978,7.92044],41.658],[[-0.9375,-3.13019,7.92076],16.7862],[[-3.79297,-2.07892,7.92054],38.8969],[[-4.19727,-5.67975,7.92065],24.4841],[[-11.4004,-10.5308,7.92058],126.148],[[-10.3516,-18.1954,11.0124],303.194]],600],
     ["Land_Destroyer_01_hull_04_F",[30384.4,414.491,-0.622],[[0.683923,0.729554,0],[0,0,1]],true,true,[["B_AAA_System_01_F",[4.35742,4.66916,16.435],43.8648],["B_AAA_System_01_F",[-6.17383,-6.57806,19.8668],43.282]],[],600],
     ["Land_Destroyer_01_interior_04_F",[30384.4,414.491,-0.622],[[0.683923,0.729554,0],[0,0,1]],true,true,[["B_HMG_01_high_F",[-19.4805,-8.45926,9.45069],75.7862]],[[[2.52539,-0.314575,9.45211],311.665],[[-0.03125,3.81635,9.45212],135.445],[[-3.93359,4.58731,9.45212],309.311],[[5.44727,-3.22516,9.45211],125.486],[[-6.76367,1.60672,9.45211],308.645],[[7.69336,-0.778015,9.45212],125.486],[[-7.8125,3.58273,11.7909],134.052],[[2.46875,13.5851,9.45212],210.281],[[13.752,3.14368,9.45212],130.88],[[-4.15625,14.6113,9.43772],38.44],[[-13.4492,-2.18231,11.7909],308.645],[[-5.98242,-14.5853,9.45212],29.5009],[[-10.9141,-12.2226,9.45211],127.596],[[-1.88672,17.8273,9.43772],125.486],[[-12.082,-13.3101,9.45213],131.544]],600],
     ["Land_Destroyer_01_hull_05_F",[1524.07,4435.33,-0.649969],[[0.800984,-0.598686,0],[0,0,1]],true,true,[],[[[-7.3092,1.93457,9.41139],33.1311],[[-4.10486,6.45459,9.41135],209.987],[[-9.75696,3.86768,9.41044],33.1311],[[-6.60742,8.18164,9.41058],210.399],[[-9.54858,-8.17236,9.41244],3.81238]],600],
     ["Land_Destroyer_01_hull_05_F",[30408.3,440.025,-0.622],[[0.683923,0.729554,0],[0,0,1]],true,true,[],[[[-2.68555,-7.00522,9.41139],309.506],[[-6.82227,-3.31778,9.41135],126.361],[[-4.87695,-9.2233,9.41044],309.506],[[-8.81445,-5.6131,9.41058],126.773],[[7.11133,-10.3541,9.41247],280.187]],600]
];

_missionLandscape = [
     ["Land_Destroyer_01_base_F",[1460,4483.22,3.05176e-005],[[0.800983,-0.598686,0],[0,0,1]],[true,true]],
     ["Land_Destroyer_01_hull_03_F",[1460,4483.22,-0.649969],[[0.800984,-0.598686,0],[0,0,1]],[true,true]],
     ["Land_HelipadEmpty_F",[1523.6,4435.68,8.7616],[[0.800984,-0.598686,0],[0,0,1]],[true,true]],
     ["ShipFlag_US_F",[1533.5,4428.28,8.76269],[[0.800984,-0.598686,0],[0,0,1]],[true,true]],
     ["Land_Destroyer_01_base_F",[30353.6,381.661,0.0279999],[[0.683923,0.729554,0],[0,0,1]],[true,true]],
     ["Land_Destroyer_01_hull_03_F",[30353.6,381.661,-0.622],[[0.683923,0.729554,0],[0,0,1]],[true,true]],
     ["ShipFlag_US_F",[30416.3,448.607,8.79066],[[0.683923,0.729554,0],[0,0,1]],[true,true]],
     ["Land_HelipadEmpty_F",[30407.9,439.59,8.78957],[[0.683923,0.729554,0],[0,0,1]],[true,true]]
];

_aiGroupParameters = [
    [[1402.35,4518.38,10.5692],"Red",[1,1],45,600],
     [[1438.52,4493.1,10.3624],"Red",[1,1],45,600],
     [[1433.55,4496.07,10.3595],"Red",[1,1],45,600],
     [[1438.37,4495.93,10.359],"Red",[1,1],45,600],
     [[1424.12,4499.21,18.8213],"Red",[1,1],45,600],
     [[1430.68,4498.95,19.273],"Red",[1,1],45,600],
     [[1434.35,4497.94,16.7993],"Red",[1,1],45,600],
     [[1433.43,4496.97,16.7993],"Red",[1,1],45,600],
     [[1433.99,4498.37,13.6185],"Red",[1,1],45,600],
     [[1434.44,4495.54,13.6185],"Red",[1,1],45,600],
     [[1432.52,4510.95,10.3551],"Red",[1,1],45,600],
     [[1428,4505.3,10.3551],"Red",[1,1],45,600],
     [[1429.68,4508.14,10.3551],"Red",[1,1],45,600],
     [[1425.47,4502.13,10.3551],"Red",[1,1],45,600],
     [[1436.75,4502.11,10.3565],"Red",[1,1],45,600],
     [[1412.57,4514.3,10.484],"Red",[1,1],45,600],
     [[1410.34,4528.84,10.5653],"Red",[1,1],45,600],
     [[1414.51,4505.62,10.4361],"Red",[1,1],45,600],
     [[1426.87,4520,10.426],"Red",[1,1],45,600],
     [[1431.32,4516.01,10.3788],"Red",[1,1],45,600],
     [[1420.29,4501.45,10.3788],"Red",[1,1],45,600],
     [[1417.1,4520.38,10.484],"Red",[1,1],45,600],
     [[1434.42,4513.06,18.8213],"Red",[1,1],45,600],
     [[1436.38,4512.75,18.8215],"Red",[1,1],45,600],
     [[1429.28,4513.36,19.1921],"Red",[1,1],45,600],
     [[1428.17,4505.38,19.1921],"Red",[1,1],45,600],
     [[1422.77,4504.17,19.1921],"Red",[1,1],45,600],
     [[1429.74,4507.48,19.1921],"Red",[1,1],45,600],
     [[1425.48,4508.9,19.1921],"Red",[1,1],45,600],
     [[1466.53,4469,7.2707],"Red",[1,1],45,600],
     [[1459.89,4473.33,7.27068],"Red",[1,1],45,600],
     [[1462.71,4471.57,7.27068],"Red",[1,1],45,600],
     [[1469.87,4485.99,7.27068],"Red",[1,1],45,600],
     [[1462.15,4479.71,7.27086],"Red",[1,1],45,600],
     [[1467.36,4477.68,7.27074],"Red",[1,1],45,600],
     [[1468.61,4474.65,7.2707],"Red",[1,1],45,600],
     [[1463.96,4480.99,7.27073],"Red",[1,1],45,600],
     [[1461.44,4483.93,7.27059],"Red",[1,1],45,600],
     [[1458.19,4482.65,7.27047],"Red",[1,1],45,600],
     [[1459.77,4485.21,7.27047],"Red",[1,1],45,600],
     [[1456.73,4483.85,7.27079],"Red",[1,1],45,600],
     [[1457.46,4486.8,7.27057],"Red",[1,1],45,600],
     [[1453.83,4486.8,7.27068],"Red",[1,1],45,600],
     [[1448.21,4493.43,7.27061],"Red",[1,1],45,600],
     [[1442.6,4497.31,10.3625],"Red",[1,1],45,600],
     [[1440.71,4491.53,10.3624],"Red",[1,1],45,600],
     [[1440.52,4498.98,10.3565],"Red",[1,1],45,600],
     [[1470.63,4465.93,7.27068],"Red",[1,1],45,600],
     [[1481.42,4466.85,8.80216],"Red",[1,1],45,600],
     [[1496.84,4463.22,8.80215],"Red",[1,1],45,600],
     [[1492.33,4469.45,11.1409],"Red",[1,1],45,600],
     [[1496.07,4448.59,8.80215],"Red",[1,1],45,600],
     [[1493.39,4450.55,8.80215],"Red",[1,1],45,600],
     [[1499.78,4456.78,8.80215],"Red",[1,1],45,600],
     [[1495.96,4453.78,8.80214],"Red",[1,1],45,600],
     [[1482.63,4465.81,8.80214],"Red",[1,1],45,600],
     [[1480.83,4460.65,8.80215],"Red",[1,1],45,600],
     [[1498.68,4464.49,11.1409],"Red",[1,1],45,600],
     [[1477.25,4469.43,7.27047],"Red",[1,1],45,600],
     [[1474.7,4469.73,7.27047],"Red",[1,1],45,600],
     [[1470.22,4472.74,7.27047],"Red",[1,1],45,600],
     [[1470.65,4478.04,7.2707],"Red",[1,1],45,600],
     [[1474.04,4474.82,7.27071],"Red",[1,1],45,600],
     [[1478.38,4470.98,7.27069],"Red",[1,1],45,600],
     [[1472.7,4484.24,7.27068],"Red",[1,1],45,600],
     [[1477.19,4480.15,7.27068],"Red",[1,1],45,600],
     [[1480.35,4478.28,7.27068],"Red",[1,1],45,600],
     [[1514.53,4427.15,8.76247],"Red",[1,1],45,600],
     [[1514.32,4439.19,8.76047],"Red",[1,1],45,600],
     [[1516.76,4437.26,8.76142],"Red",[1,1],45,600],
     [[1500.11,4460.74,8.80215],"Red",[1,1],45,600],
     [[1509.76,4455.38,8.80215],"Red",[1,1],45,600],
     [[1500.64,4443,8.80215],"Red",[1,1],45,600],
     [[1510.05,4462.08,8.78775],"Red",[1,1],45,600],
     [[1513.5,4460.18,8.78775],"Red",[1,1],45,600],
     [[1517.47,4443.51,8.76061],"Red",[1,1],45,600],
     [[1519.97,4441.78,8.76138],"Red",[1,1],45,600],
     [[30312.3,328.318,10.5972],"Red",[1,1],45,600],
     [[30323,357.482,10.3831],"Red",[1,1],45,600],
     [[30328.1,352.36,10.3831],"Red",[1,1],45,600],
     [[30302.8,337.426,10.5933],"Red",[1,1],45,600],
     [[30311.9,343.204,10.512],"Red",[1,1],45,600],
     [[30325.5,354.344,10.3831],"Red",[1,1],45,600],
     [[30317.5,338.023,10.5119],"Red",[1,1],45,600],
     [[30317.9,356.845,10.4068],"Red",[1,1],45,600],
     [[30326.3,338.987,10.4641],"Red",[1,1],45,600],
     [[30313.4,352.867,10.454],"Red",[1,1],45,600],
     [[30321.1,359.599,18.8493],"Red",[1,1],45,600],
     [[30320.3,354.53,19.22],"Red",[1,1],45,600],
     [[30328.1,352.542,19.22],"Red",[1,1],45,600],
     [[30328.7,347.037,19.22],"Red",[1,1],45,600],
     [[30326.2,354.334,19.22],"Red",[1,1],45,600],
     [[30324.3,350.251,19.22],"Red",[1,1],45,600],
     [[30321.7,361.519,18.8494],"Red",[1,1],45,600],
     [[30331.1,344.269,10.4068],"Red",[1,1],45,600],
     [[30337.9,356.851,10.3874],"Red",[1,1],45,600],
     [[30333.8,347.824,18.8493],"Red",[1,1],45,600],
     [[30331,349.496,10.3831],"Red",[1,1],45,600],
     [[30334.7,354.323,19.301],"Red",[1,1],45,600],
     [[30336.1,357.85,16.8272],"Red",[1,1],45,600],
     [[30337,356.835,16.8272],"Red",[1,1],45,600],
     [[30335.7,357.54,13.6465],"Red",[1,1],45,600],
     [[30338.5,357.68,13.6465],"Red",[1,1],45,600],
     [[30359.9,388.412,7.29871],"Red",[1,1],45,600],
     [[30356.3,385.398,7.2987],"Red",[1,1],45,600],
     [[30353.1,383.218,7.29856],"Red",[1,1],45,600],
     [[30354,379.849,7.29844],"Red",[1,1],45,600],
     [[30357.4,383.452,7.29883],"Red",[1,1],45,600],
     [[30351.6,381.701,7.29844],"Red",[1,1],45,600],
     [[30352.6,378.531,7.29876],"Red",[1,1],45,600],
     [[30349.8,379.582,7.29854],"Red",[1,1],45,600],
     [[30349.4,375.981,7.29865],"Red",[1,1],45,600],
     [[30342.2,371.13,7.29858],"Red",[1,1],45,600],
     [[30337.7,365.986,10.3904],"Red",[1,1],45,600],
     [[30343.2,363.466,10.3904],"Red",[1,1],45,600],
     [[30341.4,361.458,10.3904],"Red",[1,1],45,600],
     [[30338.6,361.629,10.387],"Red",[1,1],45,600],
     [[30335.8,364.096,10.3844],"Red",[1,1],45,600],
     [[30332.3,360.701,10.3844],"Red",[1,1],45,600],
     [[30360,391.721,7.29867],"Red",[1,1],45,600],
     [[30354,394.442,7.29865],"Red",[1,1],45,600],
     [[30358.6,398.449,7.29865],"Red",[1,1],45,600],
     [[30352,391.828,7.29865],"Red",[1,1],45,600],
     [[30363.1,389.312,7.29867],"Red",[1,1],45,600],
     [[30365.5,383.111,7.29865],"Red",[1,1],45,600],
     [[30368.5,386.619,7.29867],"Red",[1,1],45,600],
     [[30363.4,380.501,7.29865],"Red",[1,1],45,600],
     [[30372,390.352,7.29865],"Red",[1,1],45,600],
     [[30360.8,401.388,7.29865],"Red",[1,1],45,600],
     [[30384.3,418.307,8.83012],"Red",[1,1],45,600],
     [[30386.9,414.176,8.83011],"Red",[1,1],45,600],
     [[30389.8,411.266,8.83011],"Red",[1,1],45,600],
     [[30378.4,399.906,8.83012],"Red",[1,1],45,600],
     [[30376.5,418.074,11.1689],"Red",[1,1],45,600],
     [[30380.4,419.078,8.83012],"Red",[1,1],45,600],
     [[30373.4,402.268,8.83011],"Red",[1,1],45,600],
     [[30377.6,416.098,8.83011],"Red",[1,1],45,600],
     [[30370.9,412.309,11.1689],"Red",[1,1],45,600],
     [[30372.3,401.181,8.83013],"Red",[1,1],45,600],
     [[30368.7,394.818,7.29844],"Red",[1,1],45,600],
     [[30365.2,390.703,7.29844],"Red",[1,1],45,600],
     [[30369.3,397.323,7.29844],"Red",[1,1],45,600],
     [[30363.5,394.726,7.29868],"Red",[1,1],45,600],
     [[30367.8,398.616,7.29866],"Red",[1,1],45,600],
     [[30386.8,428.076,8.83012],"Red",[1,1],45,600],
     [[30380.2,429.102,8.81572],"Red",[1,1],45,600],
     [[30382.5,432.318,8.81572],"Red",[1,1],45,600],
     [[30392,413.713,8.83012],"Red",[1,1],45,600],
     [[30398.1,417.635,8.83012],"Red",[1,1],45,600],
     [[30415.4,429.671,8.79047],"Red",[1,1],45,600],
     [[30405.6,433.02,8.78939],"Red",[1,1],45,600],
     [[30401.5,436.708,8.78935],"Red",[1,1],45,600],
     [[30399.5,434.412,8.78858],"Red",[1,1],45,600],
     [[30403.4,430.802,8.78844],"Red",[1,1],45,600]
];

_aiScubaGroupParameters = [
 
];

_vehiclePatrolParameters = [
];

_airPatrols = [
     ["B_Heli_Transport_01_F",[1497.91,4454.91,8.81003],"Red",1700,600],
     ["B_Heli_Transport_01_F",[1520.08,4438.22,8.76003],"Red",1700,600],
     ["B_Heli_Transport_01_F",[30385.9,416.202,8.838],"Red",1700,600],
     ["B_Heli_Transport_01_F",[30405,436.382,8.788],"Red",1700,600]
];

_missionEmplacedWeapons = [
];

_submarinePatrolParameters = [
];

_missionLootBoxes = [
     ["CargoNet_01_barrels_F",[1499.12,4463.46,8.80071],[[0.80658,-0.591125,0],[0,0,1]],[true,false],_crateLoot,_lootCounts],
     ["B_CargoNet_01_ammo_F",[1498.92,4465.68,8.80103],[[0.796447,-0.604708,0],[0,0,1]],[true,false],_crateLoot,_lootCounts],
     ["B_CargoNet_01_ammo_F",[1497.93,4464.4,8.80103],[[0.796447,-0.604708,0],[0,0,1]],[true,false],_crateLoot,_lootCounts],
     ["B_CargoNet_01_ammo_F",[1501.3,4463.92,8.80071],[[-0.805457,0.592654,0],[0,0,1]],[true,false],_crateLoot,_lootCounts],
     ["CargoNet_01_barrels_F",[1500.07,4464.73,8.8007],[[0.80658,-0.591125,0],[0,0,1]],[true,false],_crateLoot,_lootCounts],
     ["B_CargoNet_01_ammo_F",[1500.36,4462.63,8.80038],[[-0.805457,0.592654,0],[0,0,1]],[true,false],_crateLoot,_lootCounts],
     ["CargoNet_01_barrels_F",[1501.52,4461.7,8.80071],[[0.80658,-0.591125,0],[0,0,1]],[true,false],_crateLoot,_lootCounts],
     ["B_CargoNet_01_ammo_F",[1503.69,4462.17,8.80103],[[-0.805457,0.592654,0],[0,0,1]],[true,false],_crateLoot,_lootCounts],
     ["CargoNet_01_barrels_F",[1502.46,4462.97,8.8007],[[0.80658,-0.591125,0],[0,0,1]],[true,false],_crateLoot,_lootCounts],
     ["B_CargoNet_01_ammo_F",[1502.75,4460.87,8.80071],[[-0.805457,0.592654,0],[0,0,1]],[true,false],_crateLoot,_lootCounts],
     ["CargoNet_01_barrels_F",[30376.4,419.433,8.82867],[[0.67703,0.735955,0],[0,0,1]],[true,false],_crateLoot,_lootCounts],
     ["CargoNet_01_barrels_F",[30377.6,418.35,8.82868],[[0.67703,0.735955,0],[0,0,1]],[true,false],_crateLoot,_lootCounts],
     ["B_CargoNet_01_ammo_F",[30376.5,417.272,8.82899],[[0.689405,0.724376,0],[0,0,1]],[true,false],_crateLoot,_lootCounts],
     ["B_CargoNet_01_ammo_F",[30378.5,419.487,8.82835],[[-0.678416,-0.734678,0],[0,0,1]],[true,false],_crateLoot,_lootCounts],
     ["B_CargoNet_01_ammo_F",[30375.3,418.397,8.82899],[[0.689405,0.724376,0],[0,0,1]],[true,false],_crateLoot,_lootCounts],
     ["B_CargoNet_01_ammo_F",[30377.3,420.563,8.82868],[[-0.678416,-0.734678,0],[0,0,1]],[true,false],_crateLoot,_lootCounts],
     ["CargoNet_01_barrels_F",[30379.6,420.535,8.82868],[[0.67703,0.735955,0],[0,0,1]],[true,false],_crateLoot,_lootCounts],
     ["B_CargoNet_01_ammo_F",[30379.4,422.748,8.82899],[[-0.678416,-0.734678,0],[0,0,1]],[true,false],_crateLoot,_lootCounts],
     ["CargoNet_01_barrels_F",[30378.4,421.618,8.82867],[[0.67703,0.735955,0],[0,0,1]],[true,false],_crateLoot,_lootCounts],
     ["B_CargoNet_01_ammo_F",[30380.5,421.671,8.82868],[[-0.678416,-0.734678,0],[0,0,1]],[true,false],_crateLoot,_lootCounts]
];

			  
								  
								  
/****************************************************

	ENABLE ANY SETTINGS YOU LIKE FROM THE LIST BELOW. 
	iF THESE ARE NOT ENABLED THEN THE DEFAULTS DEFINED IN BLCK_CONFIG.SQF 
	AND THE MOD-SPECIFIC CONFIGURATIONS WILL BE USED.
	
*****************************************************/								  
			
/*			
_missionLandscapeMode = "precise"; // acceptable values are "random","precise"
									// In precise mode objects will be spawned at the relative positions specified.
									// In the random mode, objects will be randomly spawned within the mission area.

_aircraftTypes = blck_patrolHelisRed;  //  You can use one of the pre-defined lists in blck_configs or your own custom array.
_noAirPatrols =	blck_noPatrolHelisRed; // You can use one of the pre-defined values or a custom one. acceptable values are integers (1,2,3) or a range such as [2,4]; 
										//  Note: this value is ignored if you specify air patrols in the array below.
//  Change _useMines to true/false below to enable mission-specific settings.
_useMines  = blck_useMines;  // Set to false if you have vehicles patrolling nearby.
_uniforms  = blck_SkinList;  // You can replace this list with a custom list of uniforms if you like.
_headgear  = blck_headgear;  // You can replace this list with a custom list of headgear.
_vests     = blck_vests;     // You can replace this list with a custom list of vests.
_backpacks = blck_backpacks; // You can replace this list with a custom list of backpacks.
_weapons   = blck_WeaponList_Orange; // You can replace this list with a customized list of weapons, or another predifined list from blck_configs_epoch or blck_configs_exile as appropriate.
_sideArms  = blck_pistols;    // You can replace this list with a custom list of sidearms.
*/


//********************************************************
// Do not modify anything below this line.
//********************************************************
#include "\q\addons\custom_server\Missions\Static\Code\GMS_fnc_sm_initializeMission.sqf"; 

diag_log format["[blckeagls static missions] COMPLETED initializing middions %1 position at %2 difficulty %3",_mission,_missionCenter,_difficulty];