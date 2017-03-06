///////////////////////////////////
//////////Autolathe Designs ///////
///////////////////////////////////

/datum/design/bucket
	name = "Bucket"
	id = "bucket"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 200)
	build_path = /obj/item/weapon/reagent_containers/glass/bucket
	category = list("initial","Tools")

/datum/design/crowbar
	name = "Pocket crowbar"
	id = "crowbar"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 50)
	build_path = /obj/item/weapon/crowbar
	category = list("initial","Tools")

/datum/design/flashlight
	name = "Flashlight"
	id = "flashlight"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 50, MAT_GLASS = 20)
	build_path = /obj/item/device/flashlight
	category = list("initial","Tools")

/datum/design/extinguisher
	name = "Fire extinguisher"
	id = "extinguisher"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 90)
	build_path = /obj/item/weapon/extinguisher
	category = list("initial","Tools")

/datum/design/multitool
	name = "Multitool"
	id = "multitool"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 50, MAT_GLASS = 20)
	build_path = /obj/item/device/multitool
	category = list("initial","Tools")

/datum/design/analyzer
	name = "Analyzer"
	id = "analyzer"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 30, MAT_GLASS = 20)
	build_path = /obj/item/device/analyzer
	category = list("initial","Tools")

/datum/design/tscanner
	name = "T-ray scanner"
	id = "tscanner"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 150)
	build_path = /obj/item/device/t_scanner
	category = list("initial","Tools")

/datum/design/weldingtool
	name = "Welding tool"
	id = "welding_tool"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 70, MAT_GLASS = 20)
	build_path = /obj/item/weapon/weldingtool
	category = list("initial","Tools")

/datum/design/screwdriver
	name = "Screwdriver"
	id = "screwdriver"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 75)
	build_path = /obj/item/weapon/screwdriver
	category = list("initial","Tools")

/datum/design/wirecutters
	name = "Wirecutters"
	id = "wirecutters"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 80)
	build_path = /obj/item/weapon/wirecutters
	category = list("initial","Tools")

/datum/design/wrench
	name = "Wrench"
	id = "wrench"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 150)
	build_path = /obj/item/weapon/wrench
	category = list("initial","Tools")

/datum/design/welding_helmet
	name = "Welding helmet"
	id = "welding_helmet"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 1750, MAT_GLASS = 400)
	build_path = /obj/item/clothing/head/welding
	category = list("initial","Tools")

/datum/design/cable_coil
	name = "Cable coil"
	id = "cable_coil"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 10, MAT_GLASS = 5)
	build_path = /obj/item/stack/cable_coil/random
	category = list("initial","Tools")
	maxstack = 30

/datum/design/toolbox
	name = "Toolbox"
	id = "tool_box"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 500)
	build_path = /obj/item/weapon/storage/toolbox
	category = list("initial","Tools")

/datum/design/console_screen
	name = "Console screen"
	id = "console_screen"
	build_type = AUTOLATHE
	materials = list(MAT_GLASS = 200)
	build_path = /obj/item/weapon/stock_parts/console_screen
	category = list("initial", "Electronics")

/datum/design/apc_board
	name = "APC module"
	id = "power control"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 100, MAT_GLASS = 100)
	build_path = /obj/item/weapon/electronics/apc
	category = list("initial", "Electronics")

/datum/design/airlock_board
	name = "Airlock electronics"
	id = "airlock_board"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 50, MAT_GLASS = 50)
	build_path = /obj/item/weapon/electronics/airlock
	category = list("initial", "Electronics")

/datum/design/firelock_board
	name = "Firelock circuitry"
	id = "firelock_board"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 50, MAT_GLASS = 50)
	build_path = /obj/item/weapon/electronics/firelock
	category = list("initial", "Electronics")

/datum/design/airalarm_electronics
	name = "Air alarm electronics"
	id = "airalarm_electronics"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 50, MAT_GLASS = 50)
	build_path = /obj/item/weapon/electronics/airalarm
	category = list("initial", "Electronics")

/datum/design/firealarm_electronics
	name = "Fire alarm electronics"
	id = "firealarm_electronics"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 50, MAT_GLASS = 50)
	build_path = /obj/item/weapon/electronics/firealarm
	category = list("initial", "Electronics")

/datum/design/pipe_painter
	name = "Pipe painter"
	id = "pipe_painter"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 5000, MAT_GLASS = 2000)
	build_path = /obj/item/device/pipe_painter
	category = list("initial", "Misc")

/datum/design/airlock_painter
	name = "Airlock painter"
	id = "airlock_painter"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 50, MAT_GLASS = 50)
	build_path = /obj/item/weapon/airlock_painter
	category = list("initial", "Misc")

/datum/design/metal
	name = "Metal"
	id = "metal"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = MINERAL_MATERIAL_AMOUNT)
	build_path = /obj/item/stack/sheet/metal
	category = list("initial","Construction")
	maxstack = 50

/datum/design/glass
	name = "Glass"
	id = "glass"
	build_type = AUTOLATHE
	materials = list(MAT_GLASS = MINERAL_MATERIAL_AMOUNT)
	build_path = /obj/item/stack/sheet/glass
	category = list("initial","Construction")
	maxstack = 50

/datum/design/rglass
	name = "Reinforced glass"
	id = "rglass"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 1000, MAT_GLASS = MINERAL_MATERIAL_AMOUNT)
	build_path = /obj/item/stack/sheet/rglass
	category = list("initial","Construction")
	maxstack = 50

/datum/design/rods
	name = "Metal rod"
	id = "rods"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 1000)
	build_path = /obj/item/stack/rods
	category = list("initial","Construction")
	maxstack = 50

/datum/design/rcd_ammo
	name = "Compressed matter cartridge"
	id = "rcd_ammo"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 3000, MAT_GLASS=2000)
	build_path = /obj/item/weapon/rcd_ammo
	category = list("initial","Construction")

/datum/design/kitchen_knife
	name = "Kitchen knife"
	id = "kitchen_knife"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 12000)
	build_path = /obj/item/weapon/kitchen/knife
	category = list("initial","Dinnerware")

/datum/design/fork
	name = "Fork"
	id = "fork"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 80)
	build_path = /obj/item/weapon/kitchen/fork
	category = list("initial","Dinnerware")

/datum/design/tray
	name = "Tray"
	id = "tray"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 3000)
	build_path = /obj/item/weapon/storage/bag/tray
	category = list("initial","Dinnerware")

/datum/design/bowl
	name = "Bowl"
	id = "bowl"
	build_type = AUTOLATHE
	materials = list(MAT_GLASS = 500)
	build_path = /obj/item/weapon/reagent_containers/glass/bowl
	category = list("initial","Dinnerware")

/datum/design/drinking_glass
	name = "Drinking glass"
	id = "drinking_glass"
	build_type = AUTOLATHE
	materials = list(MAT_GLASS = 500)
	build_path = /obj/item/weapon/reagent_containers/food/drinks/drinkingglass
	category = list("initial","Dinnerware")

/datum/design/shot_glass
	name = "Shot glass"
	id = "shot_glass"
	build_type = AUTOLATHE
	materials = list(MAT_GLASS = 100)
	build_path = /obj/item/weapon/reagent_containers/food/drinks/drinkingglass/shotglass
	category = list("initial","Dinnerware")

/datum/design/shaker
	name = "Shaker"
	id = "shaker"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 1500)
	build_path = /obj/item/weapon/reagent_containers/food/drinks/shaker
	category = list("initial","Dinnerware")

/datum/design/cultivator
	name = "Cultivator"
	id = "cultivator"
	build_type = AUTOLATHE
	materials = list(MAT_METAL=50)
	build_path = /obj/item/weapon/cultivator
	category = list("initial","Misc")

/datum/design/plant_analyzer
	name = "Plant analyzer"
	id = "plant_analyzer"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 30, MAT_GLASS = 20)
	build_path = /obj/item/device/plant_analyzer
	category = list("initial","Misc")

/datum/design/shovel
	name = "Shovel"
	id = "shovel"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 50)
	build_path = /obj/item/weapon/shovel
	category = list("initial","Misc")

/datum/design/spade
	name = "Spade"
	id = "spade"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 50)
	build_path = /obj/item/weapon/shovel/spade
	category = list("initial","Misc")

/datum/design/hatchet
	name = "Hatchet"
	id = "hatchet"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 15000)
	build_path = /obj/item/weapon/hatchet
	category = list("initial","Misc")

/datum/design/scalpel
	name = "Scalpel"
	id = "scalpel"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 4000, MAT_GLASS = 1000)
	build_path = /obj/item/weapon/scalpel
	category = list("initial", "Medical")

/datum/design/circular_saw
	name = "Circular saw"
	id = "circular_saw"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 10000, MAT_GLASS = 6000)
	build_path = /obj/item/weapon/circular_saw
	category = list("initial", "Medical")

/datum/design/surgicaldrill
	name = "Surgical drill"
	id = "surgicaldrill"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 10000, MAT_GLASS = 6000)
	build_path = /obj/item/weapon/surgicaldrill
	category = list("initial", "Medical")

/datum/design/retractor
	name = "Retractor"
	id = "retractor"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 6000, MAT_GLASS = 3000)
	build_path = /obj/item/weapon/retractor
	category = list("initial", "Medical")

/datum/design/cautery
	name = "Cautery"
	id = "cautery"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 2500, MAT_GLASS = 750)
	build_path = /obj/item/weapon/cautery
	category = list("initial", "Medical")

/datum/design/hemostat
	name = "Hemostat"
	id = "hemostat"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 5000, MAT_GLASS = 2500)
	build_path = /obj/item/weapon/hemostat
	category = list("initial", "Medical")

/datum/design/beaker
	name = "Beaker"
	id = "beaker"
	build_type = AUTOLATHE
	materials = list(MAT_GLASS = 500)
	build_path = /obj/item/weapon/reagent_containers/glass/beaker
	category = list("initial", "Medical")

/datum/design/large_beaker
	name = "Large beaker"
	id = "large_beaker"
	build_type = AUTOLATHE
	materials = list(MAT_GLASS = 2500)
	build_path = /obj/item/weapon/reagent_containers/glass/beaker/large
	category = list("initial", "Medical")

/datum/design/healthanalyzer
	name = "Health Analyzer"
	id = "healthanalyzer"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 500, MAT_GLASS = 50)
	build_path = /obj/item/device/healthanalyzer
	category = list("initial", "Medical")

/datum/design/beanbag_slug
	name = "Rubber slug"
	id = "beanbag_slug"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 250)
	build_path = /obj/item/ammo_casing/shotgun/beanbag
	category = list("initial", "Ammunition")

/datum/design/rubbershot
	name = "00 rubber shot"
	id = "rubber_shot"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 4000)
	build_path = /obj/item/ammo_casing/shotgun/rubbershot
	category = list("initial", "Ammunition")
	
/datum/design/rubbershot/tripleaught
	name = "000 rubber shot"
	id = "rubber_shot_000"
	build_path = /obj/item/ammo_casing/shotgun/rubbershot/tripleaught
	
/datum/design/rubbershot/quadrupleaught
	name = "0000 rubber shot"
	id = "rubber_shot_0000"
	build_path = /obj/item/ammo_casing/shotgun/rubbershot/quadrupleaught

/datum/design/c38
	name = "Speedloader (.38 stunshot)"
	id = "c38"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 30000)
	build_path = /obj/item/ammo_box/c38
	category = list("initial", "Ammunition")

/datum/design/recorder
	name = "Universal recorder"
	id = "recorder"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 60, MAT_GLASS = 30)
	build_path = /obj/item/device/taperecorder/empty
	category = list("initial", "Misc")

/datum/design/tape
	name = "Tape"
	id = "tape"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 20, MAT_GLASS = 5)
	build_path = /obj/item/device/tape
	category = list("initial", "Misc")

/datum/design/igniter
	name = "Igniter"
	id = "igniter"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 500, MAT_GLASS = 50)
	build_path = /obj/item/device/assembly/igniter
	category = list("initial", "Misc")

/datum/design/signaler
	name = "Remote signaling device"
	id = "signaler"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 400, MAT_GLASS = 120)
	build_path = /obj/item/device/assembly/signaler
	category = list("initial", "T-Comm")

/datum/design/radio_headset
	name = "Radio headset"
	id = "radio_headset"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 75)
	build_path = /obj/item/device/radio/headset
	category = list("initial", "T-Comm")

/datum/design/bounced_radio
	name = "Station bounced radio"
	id = "bounced_radio"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 75, MAT_GLASS = 25)
	build_path = /obj/item/device/radio/off
	category = list("initial", "T-Comm")

/datum/design/infrared_emitter
	name = "Infrared emitter"
	id = "infrared_emitter"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 1000, MAT_GLASS = 500)
	build_path = /obj/item/device/assembly/infra
	category = list("initial", "Misc")

/datum/design/health_sensor
	name = "Health sensor"
	id = "health_sensor"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 800, MAT_GLASS = 200)
	build_path = /obj/item/device/assembly/health
	category = list("initial", "Medical")

/datum/design/timer
	name = "Timer"
	id = "timer"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 500, MAT_GLASS = 50)
	build_path = /obj/item/device/assembly/timer
	category = list("initial", "Misc")

/datum/design/voice_analyser
	name = "Voice analyser"
	id = "voice_analyser"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 500, MAT_GLASS = 50)
	build_path = /obj/item/device/assembly/voice
	category = list("initial", "Misc")

/datum/design/light_tube
	name = "Light tube"
	id = "light_tube"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 60, MAT_GLASS = 100)
	build_path = /obj/item/weapon/light/tube
	category = list("initial", "Construction")

/datum/design/light_bulb
	name = "Light bulb"
	id = "light_bulb"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 60, MAT_GLASS = 100)
	build_path = /obj/item/weapon/light/bulb
	category = list("initial", "Construction")

/datum/design/camera_assembly
	name = "Camera assembly"
	id = "camera_assembly"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 400, MAT_GLASS = 250)
	build_path = /obj/item/wallframe/camera
	category = list("initial", "Construction")

/datum/design/newscaster_frame
	name = "Newscaster frame"
	id = "newscaster_frame"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 14000, MAT_GLASS = 8000)
	build_path = /obj/item/wallframe/newscaster
	category = list("initial", "Construction")

/datum/design/syringe
	name = "Syringe"
	id = "syringe"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 10, MAT_GLASS = 20)
	build_path = /obj/item/weapon/reagent_containers/syringe
	category = list("initial", "Medical")

/datum/design/prox_sensor
	name = "Proximity sensor"
	id = "prox_sensor"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 800, MAT_GLASS = 200)
	build_path = /obj/item/device/assembly/prox_sensor
	category = list("initial", "Misc")

/datum/design/foam_dart
	name = "Box of Foam Darts"
	id = "foam_dart"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 500)
	build_path = /obj/item/ammo_box/foambox
	category = list("initial", "Misc")

//hacked autolathe recipes
/datum/design/flamethrower
	name = "Flamethrower"
	id = "flamethrower"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 500)
	build_path = /obj/item/weapon/flamethrower/full
	category = list("hacked", "Weapons and ammo")

/datum/design/rcd
	name = "Rapid construction device (RCD)"
	id = "rcd"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 30000)
	build_path = /obj/item/weapon/rcd
	category = list("hacked", "Construction")

/datum/design/rpd
	name = "Rapid pipe dispenser (RPD)"
	id = "rpd"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 75000, MAT_GLASS = 37500)
	build_path = /obj/item/weapon/pipe_dispenser
	category = list("hacked", "Construction")

/datum/design/electropack
	name = "Electropack"
	id = "electropack"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 10000, MAT_GLASS = 2500)
	build_path = /obj/item/device/electropack
	category = list("hacked", "Tools")

/datum/design/large_welding_tool
	name = "Industrial welding tool"
	id = "large_welding_tool"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 70, MAT_GLASS = 60)
	build_path = /obj/item/weapon/weldingtool/largetank
	category = list("hacked", "Tools")

/datum/design/handcuffs
	name = "Handcuffs"
	id = "handcuffs"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 500)
	build_path = /obj/item/weapon/restraints/handcuffs
	category = list("hacked", "Security")

/datum/design/shotgun_slug
	name = "Shotgun slug"
	id = "shotgun_slug"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 4000)
	build_path = /obj/item/ammo_casing/shotgun
	category = list("hacked", "Ammunition")

/datum/design/buckshot_shell
	name = "00 Buckshot shell"
	id = "buckshot_shell"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 4000)
	build_path = /obj/item/ammo_casing/shotgun/buckshot
	category = list("hacked", "Ammunition")
	
/datum/design/buckshot_shell/tripleaught
	name = "000 Buckshot shell"
	id = "buckshot_shell_000"
	build_path = /obj/item/ammo_casing/shotgun/buckshot/tripleaught
	
/datum/design/buckshot_shell/quadrupleaught
	name = "0000 Buckshot shell"
	id = "buckshot_shell_0000"
	build_path = /obj/item/ammo_casing/shotgun/buckshot/quadrupleaught

/datum/design/shotgun_dart
	name = "Shotgun dart"
	id = "shotgun_dart"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 4000)
	build_path = /obj/item/ammo_casing/shotgun/dart
	category = list("hacked", "Ammunition")

/datum/design/incendiary_slug
	name = "Incendiary slug"
	id = "incendiary_slug"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 4000)
	build_path = /obj/item/ammo_casing/shotgun/incendiary
	category = list("hacked", "Ammunition")
	
/datum/design/a17
	name = "Ammo box (.17 HMR)"
	id = "c17hmr"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 30000)
	build_path = /obj/item/ammo_box/c17hmr
	category = list("hacked", "Ammunition")
	
/datum/design/a17/hp
	name = "Ammo box (.17 HMR HP)"
	id = "c17hmr_hp"
	build_path = /obj/item/ammo_box/c17hmr/hp
	
/datum/design/a17/ap
	name = "Ammo box (.17 HMR AP)"
	id = "c17hmr_hp"
	build_path = /obj/item/ammo_box/c17hmr/ap
	
/datum/design/a22lr
	name = "Ammo box (.22 LR)"
	id = "c22lr"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 30000)
	build_path = /obj/item/ammo_box/c22lr
	category = list("hacked", "Ammunition")

/datum/design/a357
	name = "Speedloader (.357)"
	id = "a357"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 30000)
	build_path = /obj/item/ammo_box/a357
	category = list("hacked", "Ammunition")

/datum/design/a357/hp
	name = "Speedloader (.357 HP)"
	id = "a357_hp"
	build_path = /obj/item/ammo_box/a357/hp
	
/datum/design/a357/hp
	name = "Speedloader (.357 AP)"
	id = "a357_hp"
	build_path = /obj/item/ammo_box/a357/hp

/datum/design/c38lethal
	name = "Speedloader (.38 Lethal)"
	id = "a38_fmj"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 30000)
	build_path = /obj/item/ammo_box/c38lethal
	category = list("hacked", "Ammunition")

/datum/design/c44mag
	name = "Ammo box (.44 Magnum)"
	id = "a44mag"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 30000)
	build_path = /obj/item/ammo_box/c44mag
	category = list("hacked", "Ammunition")

/datum/design/c44mag/hp
	name = "Ammo box (.44 Magnum HP)"
	id = "a44mag_hp"
	build_path = /obj/item/ammo_box/c44mag/hp

/datum/design/c44mag/ap
	name = "Ammo box (.44 Magnum AP)"
	id = "a44mag_ap"
	build_path = /obj/item/ammo_box/c44mag/ap
	
/datum/design/c45
	name = "Ammo box (.45 ACP)"
	id = "c45"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 30000)
	build_path = /obj/item/ammo_box/c45
	category = list("hacked", "Ammunition")

/datum/design/c45/plus
	name = "Ammo box (.45 ACP +P)"
	id = "c45_plus"
	build_path = /obj/item/ammo_box/c45/plus
	
/datum/design/c45/plus/plus
	name = "Ammo box (.45 ACP +P+)"
	id = "c45_plusplus"
	build_path = /obj/item/ammo_box/c45/plus/plus

/datum/design/c45/hp
	name = "Ammo box (.45 ACP HP)"
	id = "c45_hp"
	build_path = /obj/item/ammo_box/c45/hp
	
/datum/design/c45/ap
	name = "Ammo box (.45 ACP AP)"
	id = "c45_ap"
	build_path = /obj/item/ammo_box/c45/ap
	
/datum/design/c454
	name = "Ammo box (.454 wildcat)"
	id = "c454"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 30000)
	build_path = /obj/item/ammo_box/c454casull
	category = list("hacked", "Ammunition")
	
/datum/design/c50ae
	name = "Ammo box (.50 Action Express)"
	id = "c50ae"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 30000)
	build_path = /obj/item/ammo_box/c50ae
	category = list("hacked", "Ammunition")

/datum/design/c50ae/hp
	name = "Ammo box (.50 Action Express HP)"
	id = "c50ae_hp"
	build_path = /obj/item/ammo_box/c50ae/hp
	
/datum/design/c50ae/ap
	name = "Ammo box (.50 Action Express AP)"
	id = "c50ae_ap"
	build_path = /obj/item/ammo_box/c50ae/ap
	
/datum/design/c50ae
	name = "Ammo box (.500 S&W Magnum)"
	id = "c500swm"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 30000)
	build_path = /obj/item/ammo_box/c500sw
	category = list("hacked", "Ammunition")
	
/datum/design/c46x30mm
	name = "Ammo box (HK 4.6x30mm)"
	id = "c46x30mm"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 30000)
	build_path = /obj/item/ammo_box/c46x30mm
	category = list("hacked", "Ammunition")
	
/datum/design/c46x30mm/hp
	name = "Ammo box (HK 4.6x30mm HP)"
	id = "c46x30mm_hp"
	build_path = /obj/item/ammo_box/c46x30mm/hp

/datum/design/c46x30mm/ap
	name = "Ammo box (HK 4.6x30mm AP)"
	id = "c46x30mm_ap"
	build_path = /obj/item/ammo_box/c46x30mm/ap

/datum/design/c57x28mm
	name = "Ammo box (FN 5.7x28mm)"
	id = "c57x28mm"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 30000)
	build_path = /obj/item/ammo_box/c57x28mm
	category = list("hacked", "Ammunition")
	
/datum/design/c57x28mm/hp
	name = "Ammo box (FN 5.7x28mm HP)"
	id = "c57x28mm_hp"
	build_path = /obj/item/ammo_box/c57x28mm/hp

/datum/design/c57x28mm/ap
	name = "Ammo box (FN 5.7x28mm AP)"
	id = "c57x28mm_ap"
	build_path = /obj/item/ammo_box/c57x28mm/ap
	
/datum/design/c9x18mm
	name = "Ammo box (9x18mm Makarov)"
	id = "c9x18mm"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 30000)
	build_path = /obj/item/ammo_box/c9x18mm
	category = list("hacked", "Ammunition")
	
/datum/design/c9x18mm/hp
	name = "Ammo box (9x18mm Makarov HP)"
	id = "c9x18mm_hp"
	build_path = /obj/item/ammo_box/c9x18mm/hp
	
/datum/design/c9x18mm/ap
	name = "Ammo box (9x18mm Makarov AP)"
	id = "c9x18mm_hp"
	build_path = /obj/item/ammo_box/c9x18mm/ap

/datum/design/c9mm
	name = "Ammo box (9x19mm NATO)"
	id = "c9mm"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 30000)
	build_path = /obj/item/ammo_box/c9mm
	category = list("hacked", "Ammunition")
	
/datum/design/c9mm/hp
	name = "Ammo box (9x19mm NATO HP)"
	id = "c9mm_hp"
	build_path = /obj/item/ammo_box/c9mm/hp
	
/datum/design/c9mm/ap
	name = "Ammo box (9x19mm NATO AP)"
	id = "c9mm_ap"
	build_path = /obj/item/ammo_box/c9mm/ap
	
/datum/design/c10mm
	name = "Ammo box (10mm Auto)"
	id = "c10mm"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 30000)
	build_path = /obj/item/ammo_box/c10mm
	category = list("hacked", "Ammunition")
	
/datum/design/c10mm/hp
	name = "Ammo box (10mm Auto HP)"
	id = "c10mm_hp"
	build_path = /obj/item/ammo_box/c10mm/hp
	
/datum/design/c10mm
	name = "Ammo box (10mm Auto)"
	id = "c10mm"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 30000)
	build_path = /obj/item/ammo_box/c10mm
	category = list("hacked", "Ammunition")
	
/datum/design/c223
	name = "Ammo box (.223 Remington)"
	id = "c223"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 30000)
	build_path = /obj/item/ammo_box/c223
	category = list("hacked", "Ammunition")
	
/datum/design/c223/hp
	name = "Ammo box (.223 Remington HP)"
	id = "c223_hp"
	build_path = /obj/item/ammo_box/c223/hp
	
/datum/design/c223/ap
	name = "Ammo box (.223 Remington AP)"
	id = "c223_ap"
	build_path = /obj/item/ammo_box/c223/ap

/datum/design/c3006
	name = "Ammo box (.30-06 Springfield)"
	id = "c3006"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 30000)
	build_path = /obj/item/ammo_box/c3006
	category = list("hacked", "Ammunition")
	
/datum/design/c3006/hp
	name = "Ammo box (.30-06 Springfield HP)"
	id = "c3006_hp"
	build_path = /obj/item/ammo_box/c3006/hp
	
/datum/design/c3006/ap
	name = "Ammo box (.30-06 Springfield AP)"
	id = "c3006_ap"
	build_path = /obj/item/ammo_box/c3006/ap
	
/datum/design/c308
	name = "Ammo box (.308 Winchester)"
	id = "c308"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 30000)
	build_path = /obj/item/ammo_box/c308
	category = list("hacked", "Ammunition")
	
/datum/design/c308/hp
	name = "Ammo box (.308 Winchester HP)"
	id = "c308_hp"
	build_path = /obj/item/ammo_box/c308/hp

/datum/design/c308/ap
	name = "Ammo box (.308 Winchester AP)"
	id = "c308_ap"
	build_path = /obj/item/ammo_box/c308/ap
	
/datum/design/c338
	name = "Ammo box (.338 Lapua Magnum)"
	id = "c338"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 40000)
	build_path = /obj/item/ammo_box/c338
	category = list("hacked", "Ammunition")
	
/datum/design/c4570
	name = "Ammo box (.45-70 Government)"
	id = "c4570"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 45000)
	build_path = /obj/item/ammo_box/4570
	category = list("hacked", "Ammunition")	
	
/datum/design/c50bmg
	name = "Ammo box (.50 BMG, Saboted LAP)"
	id = "c50bmg"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 65000)
	build_path = /obj/item/ammo_box/c50bmg
	category = list("hacked", "Ammunition")	
	
/datum/design/c50bmg/narq	
	name = "Ammo box (.50 BMG, Tranquilizer)"
	id = "c50bmg_narq"
	materials = list(MAT_METAL = 55000)
	build_path = /obj/item/ammo_box/c50bmg/tranq

/datum/design/c556x45mm
	name = "Ammo box (5.56x45mm NATO)"
	id = "c556"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 30000)
	build_path = /obj/item/ammo_box/c556x45
	category = list("hacked", "Ammunition")
	
/datum/design/c556x45mm/hp
	name = "Ammo box (5.56x45mm NATO HP)"
	id = "c556_hp"
	build_path = /obj/item/ammo_box/c556x45_hp

/datum/design/c556x45mm/ap
	name = "Ammo box (5.56x45mm NATO AP)"
	id = "c556_ap"
	build_path = /obj/item/ammo_box/c556x45_ap

/datum/design/c762x39mm
	name = "Ammo box (7.62x39mm)"
	id = "c762x39"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 30000)
	build_path = /obj/item/ammo_box/c762x39
	category = list("hacked", "Ammunition")
	
/datum/design/c762x39mm/hp
	name = "Ammo box (7.62x39mm HP)"
	id = "c762x39_hp"
	build_path = /obj/item/ammo_box/c762x39/hp

/datum/design/c762x39mm/ap
	name = "Ammo box (7.62x39mm AP)"
	id = "c762x39_ap"
	build_path = /obj/item/ammo_box/c762x39/ap
	
/datum/design/c762x51mm
	name = "Ammo box (7.62x51mm NATO)"
	id = "c762x51"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 35000)
	build_path = /obj/item/ammo_box/c762x51
	category = list("hacked", "Ammunition")
	
/datum/design/c762x51mm/ap		//no HP rounds
	name = "Ammo box (7.62x51mm NATO AP)"
	id = "c762x51_ap"
	build_path = /obj/item/ammo_box/c762x51/ap

/datum/design/cleaver
	name = "Butcher's cleaver"
	id = "cleaver"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 18000)
	build_path = /obj/item/weapon/kitchen/knife/butcher
	category = list("hacked", "Dinnerware")

/datum/design/spraycan
	name = "Spraycan"
	id = "spraycan"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 100, MAT_GLASS = 100)
	build_path = /obj/item/toy/crayon/spraycan
	category = list("initial", "Tools")

/datum/design/desttagger
	name = "Destination tagger"
	id = "desttagger"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 250, MAT_GLASS = 125)
	build_path = /obj/item/device/destTagger
	category = list("initial", "Electronics")

/datum/design/handlabeler
	name = "Hand labeler"
	id = "handlabel"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 150, MAT_GLASS = 125)
	build_path = /obj/item/weapon/hand_labeler
	category = list("initial", "Electronics")

/datum/design/geiger
	name = "Geiger counter"
	id = "geigercounter"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 150, MAT_GLASS = 150)
	build_path = /obj/item/device/geiger_counter
	category = list("initial", "Tools")

/datum/design/turret_control_frame
	name = "Turret control frame"
	id = "turret_control"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 12000)
	build_path = /obj/item/wallframe/turret_control
	category = list("initial", "Construction")

/datum/design/firing_actuator
	name = "MAC cannon firing actuator"
	id = "firing_actuator"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 4000, MAT_GLASS = 4000)
	build_path = /obj/item/weapon/twohanded/required/firing_actuator
	category = list("initial", "Misc")
