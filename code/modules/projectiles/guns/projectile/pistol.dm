/obj/item/weapon/gun/projectile/automatic/pistol
	name = "stechkin pistol"
	desc = "A small, easily concealable 10mm handgun. Has a threaded barrel for suppressors."
	icon_state = "pistol"
	w_class = 2
	origin_tech = "combat=3;materials=2;syndicate=4"
	mag_type = /obj/item/ammo_box/magazine/m10mm
	can_suppress = 1
	burst_size = 1
	fire_delay = 0
	actions_types = list()

/obj/item/weapon/gun/projectile/automatic/pistol/update_icon()
	..()
	icon_state = "[initial(icon_state)][chambered ? "" : "-e"][suppressed ? "-suppressed" : ""]"
	return

/obj/item/weapon/gun/projectile/automatic/pistol/m1911
	name = "\improper M1911"
	desc = "A classic .45 handgun with a small magazine capacity."
	icon_state = "m1911"
	w_class = 3
	mag_type = /obj/item/ammo_box/magazine/m45
	can_suppress = 0
	
/obj/item/weapon/gun/projectile/automatic/pistol/m1911/meusoc
	name = "M45 MEU(SOC)"
	spread = 5
	canmagnum = 2		//rated for +P+
	desc = "This adaptation of the Colt M1911 still sees use where Nanotrasen needs to arm its officers cheaply and effectively. Rated for +P+ ammunition."

/obj/item/weapon/gun/projectile/automatic/pistol/deagle
	name = "desert eagle"
	desc = "A robust .50 AE handgun."
	icon_state = "deagle"
	force = 14
	mag_type = /obj/item/ammo_box/magazine/m50
	can_suppress = 0

/obj/item/weapon/gun/projectile/automatic/pistol/deagle/update_icon()
	..()
	icon_state = "[initial(icon_state)][magazine ? "" : "-e"]"

/obj/item/weapon/gun/projectile/automatic/pistol/deagle/gold
	desc = "A gold plated desert eagle folded over a million times by superior martian gunsmiths. Uses .50 AE ammo."
	icon_state = "deagleg"
	item_state = "deagleg"

/obj/item/weapon/gun/projectile/automatic/pistol/deagle/camo
	desc = "A Deagle brand Deagle for operators operating operationally. Uses .50 AE ammo."
	icon_state = "deaglecamo"
	item_state = "deagleg"

/obj/item/weapon/gun/projectile/automatic/pistol/APS
	name = "stechkin APS pistol"
	desc = "The original russian version of a widely used Syndicate sidearm. Uses 9mm ammo."
	icon_state = "aps"
	w_class = 3
	origin_tech = "combat=3;materials=2;syndicate=3"
	mag_type = /obj/item/ammo_box/magazine/pistolm9mm
	can_suppress = 0
	burst_size = 3
	fire_delay = 2
	actions_types = list(/datum/action/item_action/toggle_firemode)

/obj/item/weapon/gun/projectile/automatic/pistol/automag
	name = "Automag"
	desc = "A semi-automatic .44 AMP caliber handgun. A rare firearm generally only seen among the highest-ranking NanoTrasen officers. The caliber gives this weapon immense firepower in a fairly small size."
	icon_state = "automag"
	spread = 4
	force = 10
	mag_type = /obj/item/ammo_box/magazine/m44
	can_suppress = 0
	w_class = 3
	fire_sound = 'sound/weapons/revolver_big.ogg'

/obj/item/weapon/gun/projectile/automatic/pistol/automag/update_icon()
	..()
	icon_state = "automag[magazine ? "-[Ceiling(get_ammo(0)/7)*7]" : ""][chambered ? "" : "-e"]"
	return
/obj/item/weapon/gun/projectile/automatic/pistol/c05r
	name = "C05-R"
	desc = "A replica of an old Russian handgun. This one however, is chambered to fire .45 ACP. Generally seen wielded by New-Russian soldiers."
	icon_state = "c05r"
	mag_type = /obj/item/ammo_box/magazine/c05r
	can_suppress = 0
	w_class = 3
	fire_sound = 'sound/weapons/pistol_glock17_1.ogg'

/obj/item/weapon/gun/projectile/automatic/pistol/c05r/update_icon()
	..()
	icon_state = "[initial(icon_state)][magazine ? "" : "-e"]"

/obj/item/weapon/gun/projectile/automatic/pistol/luger
	name = "P053M Luger"
	desc = "A modern take on an ancient weapon, this one is chambered in .357."
	icon_state = "p08"
	canmagnum = 1
	mag_type = /obj/item/ammo_box/magazine/luger
	can_suppress = 0
	w_class = 3
	fire_sound = 'sound/weapons/gunshot_beefy.ogg'

/obj/item/weapon/gun/projectile/automatic/pistol/luger/update_icon()
	..()
	icon_state = "p08[magazine ? "-[Ceiling(get_ammo(0)/10)*10]" : ""][chambered ? "" : "-e"]"
	return
	
/obj/item/weapon/gun/projectile/automatic/pistol/usp
	name = "\improper P12 Compact"
	desc = "Renowned on Earth for its legendary reliability, this .45 handgun is still in use in some militaries throughout the galaxy. Has a threaded barrel to mount a suppressor. Has an accessory rail to mount a flashlight. Rated for +P ammunition."
	icon_state = "usp"
	mag_type = /obj/item/ammo_box/magazine/usp
	can_flashlight = 1
	canmagnum = 1
	flight_x_offset = 16
	flight_y_offset = 12
	spread = 5
	w_class = 2
	fire_sound = 'sound/weapons/pistol_glock17_1.ogg'

/obj/item/weapon/gun/projectile/automatic/pistol/usp/ui_action_click()
	toggle_gunlight()
	
/obj/item/weapon/gun/projectile/automatic/pistol/usp/update_icon()
	..()
	icon_state = "usp[suppressed ? "-can" : ""][chambered ? "" : "-locked"][magazine ? "" : "-nomag"]"
	if(F && can_flashlight)
		var/iconF = "flight"
		if(F.on)
			iconF = "flight_on"
		add_overlay(image(icon = icon, icon_state = iconF, pixel_x = flight_x_offset, pixel_y = flight_y_offset))
	return
	

/obj/item/weapon/gun/projectile/automatic/pistol/usp/andreas
	desc = "Renowned on Earth for its legendary reliability, this .45 handgun is still in use in some militaries throughout the galaxy. Has a threaded barrel to mount a suppressor. Has an accessory rail to mount a flashlight. Rated for +P ammunition. \n \nThis particular handgun bears an engraving on the left side of an encircled eagle, over the words \"DEUTSCHE BUNDESWEHR\" painted in white. Above the serial is '5842189 R S', engraved messily. The handgun seems carefully tuned with a match-grade trigger and an ambidexterous safety. It also seems well-maintained - seems its owner cared a lot about it."
	spread = 4.5
