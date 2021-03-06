/obj/item/weapon/gun/projectile/automatic
	origin_tech = "combat=4;materials=2"
	w_class = 3
	var/alarmed = 0
	var/select = 1
	var/can_tactical_reload = 1
	can_suppress = 1
	burst_size = 3
	fire_delay = 2
	spread = 5
	actions_types = list(/datum/action/item_action/toggle_firemode)
	var/eject_sound = null		//only used with the M1 Garand, so expect disappointment if you try it elsewhere

/obj/item/weapon/gun/projectile/automatic/proto
	name = "\improper NanoTrasen Saber SMG"
	desc = "A prototype three-round burst 9mm submachine gun, designated 'SABR'. Has a threaded barrel for suppressors."
	icon_state = "saber"
	mag_type = /obj/item/ammo_box/magazine/smgm9mm
	pin = null

/obj/item/weapon/gun/projectile/automatic/proto/unrestricted
	pin = /obj/item/device/firing_pin

/obj/item/weapon/gun/projectile/automatic/update_icon()
	..()
	cut_overlays()
	if(!select)
		add_overlay("[initial(icon_state)]semi")
	if(select == 1)
		add_overlay("[initial(icon_state)]burst")
	icon_state = "[initial(icon_state)][magazine ? "-[magazine.max_ammo]" : ""][chambered ? "" : "-e"][suppressed ? "-suppressed" : ""]"

/obj/item/weapon/gun/projectile/automatic/attackby(obj/item/A, mob/user, params)
	. = ..()
	if(.)
		return
	if(can_tactical_reload == 1)
		if(istype(A, /obj/item/ammo_box/magazine))
			var/obj/item/ammo_box/magazine/AM = A
			if(istype(AM, mag_type))
				if(magazine)
					user << "<span class='notice'>You perform a tactical reload on \the [src], replacing the magazine.</span>"
					magazine.loc = get_turf(src.loc)
					magazine.update_icon()
					magazine = null
				else
					user << "<span class='notice'>You insert the magazine into \the [src].</span>"
				user.remove_from_mob(AM)
				magazine = AM
				magazine.loc = src
				chamber_round()
				A.update_icon()
				update_icon()
				return 1
	else if(can_tactical_reload == 2)		//used with the M1 Garand
		if(magazine || chambered)		//cheap hack, removing the magazine dechambers it
			user << "<span class='warning'>You cannot perform a tactical reload with an en-bloc clip, eject it first!</span>"
			return
		else
			if(istype(A, /obj/item/ammo_box/magazine))
				var/obj/item/ammo_box/magazine/AM = A
				if(istype(AM, mag_type))
					user << "<span class='notice'>You insert the en-bloc clip into \the [src].</span>"
					user.remove_from_mob(AM)
					magazine = AM
					magazine.loc = src
					chamber_round()
					A.update_icon()
					update_icon()
					return 1

/obj/item/weapon/gun/projectile/automatic/ui_action_click()
	burst_select()

/obj/item/weapon/gun/projectile/automatic/proc/burst_select()
	var/mob/living/carbon/human/user = usr
	select = !select
	if(!select)
		burst_size = 1
		fire_delay = 0
		user << "<span class='notice'>You switch to semi-automatic.</span>"
	else
		burst_size = initial(burst_size)
		fire_delay = initial(fire_delay)
		user << "<span class='notice'>You switch to [burst_size]-rnd burst.</span>"

	playsound(user, 'sound/weapons/empty.ogg', 100, 1)
	update_icon()
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()

/obj/item/weapon/gun/projectile/automatic/can_shoot()
	return get_ammo()

/obj/item/weapon/gun/projectile/automatic/proc/empty_alarm()
	if(!chambered && !get_ammo() && !alarmed)
		playsound(src.loc, 'sound/weapons/smg_empty_alarm.ogg', 40, 1)
		update_icon()
		alarmed = 1
	return

/obj/item/weapon/gun/projectile/automatic/c20r
	name = "\improper C-20r SMG"
	desc = "A bullpup two-round burst .45 SMG, designated 'C-20r'. Has a 'Scarborough Arms - Per falcis, per pravitas' buttstamp."
	icon_state = "c20r"
	item_state = "c20r"
	origin_tech = "combat=5;materials=2;syndicate=6"
	mag_type = /obj/item/ammo_box/magazine/smgm45
	fire_sound = 'sound/weapons/Gunshot_smg.ogg'
	fire_delay = 2
	burst_size = 2
	pin = /obj/item/device/firing_pin/implant/pindicate

/obj/item/weapon/gun/projectile/automatic/c20r/unrestricted
	pin = /obj/item/device/firing_pin

/obj/item/weapon/gun/projectile/automatic/c20r/New()
	..()
	update_icon()
	return

/obj/item/weapon/gun/projectile/automatic/c20r/afterattack()
	..()
	empty_alarm()
	return

/obj/item/weapon/gun/projectile/automatic/c20r/update_icon()
	..()
	icon_state = "c20r[magazine ? "-[Ceiling(get_ammo(0)/4)*4]" : ""][chambered ? "" : "-e"][suppressed ? "-suppressed" : ""]"

/obj/item/weapon/gun/projectile/automatic/wt550
	name = "security auto rifle"
	desc = "An outdated personal defence weapon. Uses 4.6x30mm rounds and is designated the WT-550 Automatic Rifle."
	icon_state = "wt550"
	item_state = "arg"
	spread = 6			//cheap malaysian piece of shit
	mag_type = /obj/item/ammo_box/magazine/wt550m9
	fire_delay = 2
	can_suppress = 0
	burst_size = 0
	actions_types = list()

/obj/item/weapon/gun/projectile/automatic/wt550/update_icon()
	..()
	icon_state = "wt550[magazine ? "-[Ceiling(get_ammo(0)/4)*4]" : ""]"

/obj/item/weapon/gun/projectile/automatic/br55
	name = "\improper BR55 Battle Rifle"
	desc = "A battle rifle chambered in 4.6x30mm, first manufactured in 2524. Bears the logo of Misriah Armory laser-engraved into the cheek plate. The firing selector has a 3-round-burst and a semi-automatic mode."
	icon_state = "br55"
	item_state = "c20r"
	spread = 4
	mag_type = /obj/item/ammo_box/magazine/br55
	fire_delay = 1
	can_suppress = 0
	burst_size = 3
	zoomable = TRUE			//EXPERIMENTAL
	zoom_amt = 4		
	fire_sound = 'sound/weapons/gunshot_br55.ogg'

/obj/item/weapon/gun/projectile/automatic/br55/update_icon()
	..()
	icon_state = "[initial(icon_state)][chambered ? "" : "-locked"][magazine ? "" : "-nomag"]"
	return
	
/obj/item/weapon/gun/projectile/automatic/br55/civilian
	name = "\improper BR55-CV rifle"
	desc = "The civilian variant of a battle rifle chambered in 4.6x30mm, first manufactured in 2524. Bears the logo of Misriah Armory laser-engraved into the cheek plate. The firing selector only has a semi-automatic mode."
	icon_state = "br55civ"
	mag_type = /obj/item/ammo_box/magazine/br55/civilian
	spread = 2		//you lose the burst, but get better accuracy because less kick
	fire_delay = 2
	can_suppress = 0
	burst_size = 0
	zoom_amt = 2		//honk.
	actions_types = list()

/obj/item/weapon/gun/projectile/automatic/mini_uzi
	name = "\improper 'Type U3' Uzi"
	desc = "A lightweight, burst-fire submachine gun, for when you really want someone dead. Uses 9mm rounds."
	icon_state = "mini-uzi"
	spread = 8		//short barrel, automatic
	origin_tech = "combat=4;materials=2;syndicate=4"
	mag_type = /obj/item/ammo_box/magazine/uzim9mm
	burst_size = 2

/obj/item/weapon/gun/projectile/automatic/m90
	name = "\improper M-90gl Carbine"
	desc = "A three-round burst 5.56 toploading carbine, designated 'M-90gl'. Has an attached underbarrel grenade launcher which can be toggled on and off."
	icon_state = "m90"
	item_state = "m90"
	origin_tech = "combat=5;materials=2;syndicate=6"
	mag_type = /obj/item/ammo_box/magazine/m556
	fire_sound = 'sound/weapons/Gunshot_smg.ogg'
	can_suppress = 0
	var/obj/item/weapon/gun/projectile/revolver/grenadelauncher/underbarrel
	burst_size = 3
	fire_delay = 2
	pin = /obj/item/device/firing_pin/implant/pindicate

/obj/item/weapon/gun/projectile/automatic/m90/New()
	..()
	underbarrel = new /obj/item/weapon/gun/projectile/revolver/grenadelauncher(src)
	update_icon()
	return

/obj/item/weapon/gun/projectile/automatic/m90/unrestricted
	pin = /obj/item/device/firing_pin

/obj/item/weapon/gun/projectile/automatic/m90/unrestricted/New()
	..()
	underbarrel = new /obj/item/weapon/gun/projectile/revolver/grenadelauncher/unrestricted(src)
	update_icon()
	return

/obj/item/weapon/gun/projectile/automatic/m90/afterattack(atom/target, mob/living/user, flag, params)
	if(select == 2)
		underbarrel.afterattack(target, user, flag, params)
	else
		..()
		return
/obj/item/weapon/gun/projectile/automatic/m90/attackby(obj/item/A, mob/user, params)
	if(istype(A, /obj/item/ammo_casing))
		if(istype(A, underbarrel.magazine.ammo_type))
			underbarrel.attack_self()
			underbarrel.attackby(A, user, params)
	else
		..()
/obj/item/weapon/gun/projectile/automatic/m90/update_icon()
	..()
	cut_overlays()
	switch(select)
		if(0)
			add_overlay("[initial(icon_state)]semi")
		if(1)
			add_overlay("[initial(icon_state)]burst")
		if(2)
			add_overlay("[initial(icon_state)]gren")
	icon_state = "[initial(icon_state)][magazine ? "" : "-e"]"
	return
/obj/item/weapon/gun/projectile/automatic/m90/burst_select()
	var/mob/living/carbon/human/user = usr
	switch(select)
		if(0)
			select = 1
			burst_size = initial(burst_size)
			fire_delay = initial(fire_delay)
			user << "<span class='notice'>You switch to [burst_size]-rnd burst.</span>"
		if(1)
			select = 2
			user << "<span class='notice'>You switch to grenades.</span>"
		if(2)
			select = 0
			burst_size = 1
			fire_delay = 0
			user << "<span class='notice'>You switch to semi-auto.</span>"
	playsound(user, 'sound/weapons/empty.ogg', 100, 1)
	update_icon()
	return

/obj/item/weapon/gun/projectile/automatic/tommygun
	name = "\improper Thompson SMG"
	desc = "Based on the classic 'Chicago Typewriter'."
	icon_state = "tommygun"
	item_state = "shotgun"
	spread = 3
	w_class = 5
	slot_flags = 0
	origin_tech = "combat=5;materials=1;syndicate=3"
	mag_type = /obj/item/ammo_box/magazine/tommygunm45
	fire_sound = 'sound/weapons/Gunshot_smg.ogg'
	can_suppress = 0
	burst_size = 4
	fire_delay = 1

/obj/item/weapon/gun/projectile/automatic/ar
	name = "\improper NT-ARG 'Boarder'"
	desc = "A robust assault rile used by Nanotrasen fighting forces."
	icon_state = "arg"
	item_state = "arg"
	slot_flags = 0
	origin_tech = "combat=6;engineering=4"
	mag_type = /obj/item/ammo_box/magazine/m556
	fire_sound = 'sound/weapons/Gunshot_smg.ogg'
	can_suppress = 0
	burst_size = 3
	fire_delay = 1



// Bulldog shotgun //

/obj/item/weapon/gun/projectile/automatic/shotgun/bulldog
	name = "\improper 'Bulldog' Shotgun"
	desc = "A semi-auto, mag-fed shotgun for combat in narrow corridors, nicknamed 'Bulldog' by boarding parties. Compatible only with specialized 8-round drum magazines."
	icon_state = "bulldog"
	item_state = "bulldog"
	w_class = 3
	origin_tech = "combat=6;materials=4;syndicate=6"
	mag_type = /obj/item/ammo_box/magazine/m12g
	fire_sound = 'sound/weapons/Gunshot.ogg'
	spread = 0		//handled in buckshot code. We don't want spread here as well.
	can_suppress = 0
	burst_size = 1
	fire_delay = 0
	pin = /obj/item/device/firing_pin/implant/pindicate
	actions_types = list()

/obj/item/weapon/gun/projectile/automatic/shotgun/bulldog/unrestricted
	pin = /obj/item/device/firing_pin

/obj/item/weapon/gun/projectile/automatic/shotgun/bulldog/New()
	..()
	update_icon()
	return

/obj/item/weapon/gun/projectile/automatic/shotgun/bulldog/proc/update_magazine()
	if(magazine)
		src.overlays = 0
		add_overlay("[magazine.icon_state]")
		return

/obj/item/weapon/gun/projectile/automatic/shotgun/bulldog/update_icon()
	src.overlays = 0
	update_magazine()
	icon_state = "bulldog[chambered ? "" : "-e"]"

/obj/item/weapon/gun/projectile/automatic/shotgun/bulldog/afterattack()
	..()
	empty_alarm()
	return



// L6 SAW //

/obj/item/weapon/gun/projectile/automatic/l6_saw
	name = "\improper L6 SAW"
	desc = "A heavily modified 5.56x45mm light machine gun, designated 'L6 SAW'. Has 'Aussec Armoury - 2531' engraved on the receiver below the designation."
	icon_state = "l6closed100"
	item_state = "l6closedmag"
	w_class = 5
	slot_flags = 0
	origin_tech = "combat=6;engineering=3;syndicate=6"
	mag_type = /obj/item/ammo_box/magazine/mm556x45
	weapon_weight = WEAPON_MEDIUM
	fire_sound = 'sound/weapons/Gunshot_smg.ogg'
	var/cover_open = 0
	can_suppress = 0
	burst_size = 3
	fire_delay = 1
	pin = /obj/item/device/firing_pin/implant/pindicate

/obj/item/weapon/gun/projectile/automatic/l6_saw/unrestricted
	pin = /obj/item/device/firing_pin


/obj/item/weapon/gun/projectile/automatic/l6_saw/attack_self(mob/user)
	cover_open = !cover_open
	user << "<span class='notice'>You [cover_open ? "open" : "close"] [src]'s cover.</span>"
	update_icon()


/obj/item/weapon/gun/projectile/automatic/l6_saw/update_icon()
	icon_state = "l6[cover_open ? "open" : "closed"][magazine ? Ceiling(get_ammo(0)/12.5)*25 : "-empty"][suppressed ? "-suppressed" : ""]"
	item_state = "l6[cover_open ? "openmag" : "closedmag"]"


/obj/item/weapon/gun/projectile/automatic/l6_saw/afterattack(atom/target as mob|obj|turf, mob/living/user as mob|obj, flag, params) //what I tried to do here is just add a check to see if the cover is open or not and add an icon_state change because I can't figure out how c-20rs do it with overlays
	if(cover_open)
		user << "<span class='warning'>[src]'s cover is open! Close it before firing!</span>"
	else
		..()
		update_icon()


/obj/item/weapon/gun/projectile/automatic/l6_saw/attack_hand(mob/user)
	if(loc != user)
		..()
		return	//let them pick it up
	if(!cover_open || (cover_open && !magazine))
		..()
	else if(cover_open && magazine)
		//drop the mag
		magazine.update_icon()
		magazine.loc = get_turf(src.loc)
		user.put_in_hands(magazine)
		magazine = null
		update_icon()
		user << "<span class='notice'>You remove the magazine from [src].</span>"


/obj/item/weapon/gun/projectile/automatic/l6_saw/attackby(obj/item/A, mob/user, params)
	. = ..()
	if(.)
		return
	if(!cover_open)
		user << "<span class='warning'>[src]'s cover is closed! You can't insert a new mag.</span>"
		return
	..()



// SNIPER //

/obj/item/weapon/gun/projectile/automatic/sniper_rifle
	name = "sniper rifle"
	desc = "The kind of gun that will leave you crying for mummy before you even realise your leg's missing"
	icon_state = "sniper"
	item_state = "sniper"
	recoil = 2
	weapon_weight = WEAPON_MEDIUM
	mag_type = /obj/item/ammo_box/magazine/sniper_rounds
	fire_delay = 40
	burst_size = 1
	origin_tech = "combat=7"
	can_unsuppress = 1
	spread = 0			//no spread
	can_suppress = 1
	w_class = 3
	zoomable = TRUE
	zoom_amt = 7 //Long range, enough to see in front of you, but no tiles behind you.
	slot_flags = SLOT_BACK
	actions_types = list()


/obj/item/weapon/gun/projectile/automatic/sniper_rifle/update_icon()
	if(magazine)
		icon_state = "sniper-mag"
	else
		icon_state = "sniper"


/obj/item/weapon/gun/projectile/automatic/sniper_rifle/syndicate
	name = "syndicate sniper rifle"
	desc = "Syndicate flavoured sniper rifle, it packs quite a punch, a punch to your face"
	pin = /obj/item/device/firing_pin/implant/pindicate
	origin_tech = "combat=7;syndicate=6"




// Laser rifle (rechargeable magazine) //

/obj/item/weapon/gun/projectile/automatic/laser
	name = "laser rifle"
	desc = "Though sometimes mocked for the relatively weak firepower of their energy weapons, the logistic miracle of rechargable ammunition has given Nanotrasen a decisive edge over many a foe."
	icon_state = "oldrifle"
	item_state = "arg"
	mag_type = /obj/item/ammo_box/magazine/recharge
	fire_delay = 2
	can_suppress = 0
	burst_size = 0
	actions_types = list()
	fire_sound = 'sound/weapons/Laser.ogg'

/obj/item/weapon/gun/projectile/automatic/laser/process_chamber(eject_casing = 0, empty_chamber = 1)
	..() //we changed the default value of the first argument


/obj/item/weapon/gun/projectile/automatic/laser/update_icon()
	..()
	icon_state = "oldrifle[magazine ? "-[Ceiling(get_ammo(0)/4)*4]" : ""]"
	return


/obj/item/weapon/gun/projectile/automatic/xmg80
	name = "AA-XMG80"
	desc = "A state-of-the-art, high-tech assault rifle manufactured by Aussec Armory. Comes with a 2x red dot sight. Utilizes the uncommon 6.8x43mm caseless ammunition, which is light while still allowing for superior armor-piercing capability and high velocity. Often called 'The Shredder' for its immense damage potential, which also results in this firearm being banned in NanoTrasen-controlled sectors for being 'too messy' and expensive."
	icon_state = "xmg80"
	item_state = "c20r"
	mag_type = /obj/item/ammo_box/magazine/xmg80
	can_suppress = 0
	w_class = 3
	burst_size = 3
	fire_delay = 1
	spread = 3
	force = 10 //melee damage
	origin_tech = "combat=6;materials=4;syndicate=8"
	fire_sound = 'sound/weapons/gunshot_g36.ogg'

/obj/item/weapon/gun/projectile/automatic/xmg80/update_icon()
	..()
	icon_state = "[initial(icon_state)][magazine ? "" : "-e"]"

/obj/item/weapon/gun/projectile/automatic/xmg80/process_chamber(eject_casing = 0, empty_chamber = 1)
	..()

/obj/item/weapon/gun/projectile/automatic/aks74
	name = "AKS-740u"
	desc = "An earlier model of the AK platform, this fires a lower caliber cartridge and is a lighter weight than its AK-922 counterpart. Remains quite deadly regardless and functions similarly."
	icon_state = "aks74"
	item_state = "ak922"
	mag_type = /obj/item/ammo_box/magazine/aks74
	can_suppress = 0
	w_class = 3
	burst_size = 3
	fire_delay = 1
	fire_sound = 'sound/weapons/tommygun_shoot.ogg'

/obj/item/weapon/gun/projectile/automatic/aks74/update_icon()
	..()
	icon_state = "[initial(icon_state)][magazine ? "" : "-e"]"

/obj/item/weapon/gun/projectile/automatic/ak922
	name = "AK-922"
	desc = "A New-Russia standard-issue battle rifle chambered in 7.62x39mm. Packs a punch and is built out of strong materials with an old yet reliable build."
	icon_state = "ak922"
	item_state = "ak922"
	origin_tech = "combat=5;materials=3"
	mag_type = /obj/item/ammo_box/magazine/ak922
	can_suppress = 0
	fire_sound = 'sound/weapons/handcannon.ogg'
	fire_delay = 1
	burst_size = 3

/obj/item/weapon/gun/projectile/automatic/ak922/afterattack()
	..()
	empty_alarm()
	return

/obj/item/weapon/gun/projectile/automatic/ak922/update_icon()
	..()
	icon_state = "ak922[magazine ? "-[Ceiling(get_ammo(0)/5)*5]" : ""][chambered ? "" : "-e"]"
	return
	
/////////////////////
// M1 GARAND
/////////////////////

/obj/item/weapon/gun/projectile/automatic/garand
	w_class = 4
	fire_delay = 2
	name = "\improper M1 Garand"
	desc = "This .30-06 rifle is well-known for its eight-round en-bloc clip that ejects with a distinctive <i>ping!</i>, and its use during a war in the early 1940s."
	icon_state = "garand"
	item_state = "moistnugget"
	mag_type = /obj/item/ammo_box/magazine/enbloc
	actions_types = list()
	fire_delay = 2
	spread = 1
	can_tactical_reload = 2
	can_suppress = 0
	burst_size = 0
	fire_sound = "sound/weapons/Gunshot_beefy.ogg"
	eject_sound = "sound/weapons/garand_ping.ogg"
	
/obj/item/weapon/gun/projectile/automatic/garand/update_icon()
	..()
	icon_state = "[initial(icon_state)][magazine ? "" : "-locked"]"


/obj/item/weapon/gun/projectile/automatic/garand/afterattack()
	..()
	if (magazine && !chambered)
		empty_alarm()
	return
	
/obj/item/weapon/gun/projectile/automatic/garand/empty_alarm()
	if(!chambered && !get_ammo() && !alarmed)
		src.visible_message("<span class='warning'>The clip ejects from \the [src]!</span>")
		playsound(src.loc, eject_sound, 40, 1)
		magazine.loc = get_turf(src.loc)
		magazine.update_icon()
		magazine.SpinAnimation(10,1)
		magazine = null
		update_icon()
	return
	

/obj/item/weapon/gun/projectile/automatic/garand/attack_self(mob/living/user)
	var/obj/item/ammo_casing/AC = chambered //Find chambered round
	if(magazine)
		magazine.loc = get_turf(src.loc)
		magazine.update_icon()
		magazine.SpinAnimation(10,1)
		magazine = null
		user << "<span class='notice'>You eject the en-bloc clip from \the [src].</span>"
		playsound(src.loc, eject_sound, 50, 1)
		AC.loc = get_turf(src)		//we want it to de-chamber at the same time
		AC.SpinAnimation(10, 1)
		chambered = null
	else
		user << "<span class='notice'>There's no en-bloc clip in \the [src].</span>"
	update_icon()
	return
