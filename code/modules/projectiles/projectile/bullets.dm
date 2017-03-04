//quick numbers for personal manual of style
// max base damage of 75
//armour piercing reduces base damage and armour
//hollowpoint increases base damage and armour
//the basic idea is the armour multiplier is more than the base, so using hollowpoint against armour will do
//less damage to armoured foes than regular ammo against unarmoured
//similarly using armour piercing is better against armoured foes than unarmoured
//using AP against an unarmoured target or HP against an armoured target will do less damage than a regular bullet

/obj/item/projectile/bullet
	name = "bullet"
	icon_state = "bullet"
	damage = 60
	damage_type = BRUTE
	damage_spread_coeff = 0
	damage_spread_type = DAMAGE_SPREAD_OFF
	var/ismagnum = 0		//for magnum rounds, such as +p/+p+ - currently unused, but may later cause it to blow up the gun
	nodamage = 0
	flag = "bullet"
	hitsound_wall = "ricochet"
	
/obj/item/projectile/bullet/calibre
	damage_spread_coeff = 0.2
	damage_spread_type = DAMAGE_SPREAD_MULT
	
///////////////////////////////////
// HANDGUN AND SMALL ARMS ROUNDS //
///////////////////////////////////

//IMPERIAL CALIBRES
/obj/item/projectile/bullet/calibre/cal17			//.17 HMR
	damage = 15

/obj/item/projectile/bullet/calibre/cal17/ap
	damage = 12					//20% weaker, but does 25% armour penetration, which does better damage
	armour_penetration = 25				//against armoued foes than regular bullets
	damage_spread_type = DAMAGE_SPREAD_ADD
	damage_spread_coeff = 2				//the bullet's weak as hell, we don't want to nerf it much harder
	
/obj/item/projectile/bullet/calibre/cal17/hp
	damage = 18					//20% stronger, but does 25% less penetration, which does better damage
	armour_penetration = -25			//against unarmoued foes than regular bullets

/obj/item/projectile/bullet/calibre/cal177			//.177 airgun
	damage = 5					//you'll shoot your eye out, kid
	stamina = 2					

/obj/item/projectile/bullet/calibre/cal22lr			//.22 Long Rifle
	damage = 20
	
/obj/item/projectile/bullet/calibre/cal357			//.357 magnum
	damage = 50
	ismagnum = 1
	
/obj/item/projectile/bullet/calibre/cal357/ap
	damage = 40
	armour_penetration = 25
	
/obj/item/projectile/bullet/calibre/cal357/hp
	damage = 60
	armour_penetration = -25

/obj/item/projectile/bullet/calibre/cal357/spl			//.38 Special
	damage = 15
	stamina = 50
	ismagnum = 0
	
/obj/item/projectile/bullet/calibre/cal357/spl/lethal
	damage = 40
	stamina = 0

/obj/item/projectile/bullet/calibre/cal44mag			//.44 Magnum
	damage = 55
	ismagnum = 1
	
/obj/item/projectile/bullet/calibre/cal44mag/ap
	damage = 44
	armour_penetration = 25

/obj/item/projectile/bullet/calibre/cal44mag/hp
	damage = 66
	armour_penetration = -25

/obj/item/projectile/bullet/calibre/cal44mag/spl		//.44 Special
	damage = 50
	ismagnum = 0
	
/obj/item/projectile/bullet/calibre/cal45acp			//.45 Automatic
	damage = 35
	stamina = 20
	
/obj/item/projectile/bullet/calibre/cal45acp/plus			//+P
	damage = 45
	ismagnum = 1
	
/obj/item/projectile/bullet/calibre/cal5acp/plusplus			//+P+
	damage = 50
	ismagnum = 2			//very high pressure

/obj/item/projectile/bullet/calibre/cal45acp/ap
	damage = 28
	armour_penetration = 25
	
/obj/item/projectile/bullet/calibre/cal45acp/hp
	damage = 42
	armour_penetration = -25
	
/obj/item/projectile/bullet/calibre/cal454			//.454 Casull
	damage = 65
	damage_spread_coeff = 0.3			//.454 is a wildcat, so loading will vary between handloaders
	ismagnum = 1
	
/obj/item/projectile/bullet/calibre/cal50ae			//.50 Action Express
	damage = 60
	stamina = 10

/obj/item/projectile/bullet/calibre/cal50ae/ap
	damage = 48
	armour_penetration = 25
	
/obj/item/projectile/bullet/calibre/cal50ae/hp
	damage = 72
	armour_penetration = -25

/obj/item/projectile/bullet/calibre/cal500sw			//.500 Smith & Wesson
	damage = 65
	stamina = 25
//if your gun's this powerful, you don't need AP or HP rounds
	
	
//METRIC
/obj/item/projectile/bullet/calibre/cal46x30			//4.6x30mm
	damage = 20

/obj/item/projectile/bullet/calibre/cal46x30/ap
	damage = 16
	armour_penetration = 25
	
/obj/item/projectile/bullet/calibre/cal46x30/hp
	damage = 24
	armour_penetration = -25
	
/obj/item/projectile/bullet/calibre/cal46x30/tox
	damage = 15
	damage_type = TOX
	
/obj/item/projectile/bullet/calibre/cal46x30/incendiary
	damage = 10
	
/obj/item/projectile/bullet/calibre/cal46x30/incendiary/on_hit(atom/target, blocked = 0)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.adjust_fire_stacks(4)
		M.IgniteMob()

/obj/item/projectile/bullet/calibre/cal57x28			//5.7x28mm FNH
	damage = 22
	
/obj/item/projectile/bullet/calibre/cal57x28/ap
	damage = 18
	armour_penetration = 25
	
/obj/item/projectile/bullet/calibre/cal57x28/ap
	damage = 26
	armour_penetration = -25

/obj/item/projectile/bullet/calibre/cal9x18			//9x18mm Makarov
	damage = 30
	damage_spread_coeff = 0.25
	
/obj/item/projectile/bullet/calibre/cal9x18/ap
	damage = 24
	armour_penetration = 25
	
/obj/item/projectile/bullet/calibre/cal9x18/ap
	damage = 36
	armour_penetration = -25
	
/obj/item/projectile/bullet/calibre/cal9x19			//9x19 Parabellum
	damage = 30
	
/obj/item/projectile/bullet/calibre/cal9x19/ap
	damage = 24
	armour_penetration = 25
	
/obj/item/projectile/bullet/calibre/cal9x19/hp
	damage = 24
	armour_penetration = -25

/obj/item/projectile/bullet/calibre/cal9x19/tox
	damage = 15
	damage_type = TOX
	
/obj/item/projectile/bullet/calibre/cal9x19/incendiary
	damage = 10
	
/obj/item/projectile/bullet/calibre/cal9x19/incendiary/on_hit(atom/target, blocked = 0)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.adjust_fire_stacks(4)
		M.IgniteMob()

/obj/item/projectile/bullet/calibre/cal10x25			//10x25 Automatic
	damage = 32
	damage_spread_coeff = 0.3		//not widely used IRL so loading will vary
	
/obj/item/projectile/bullet/calibre/cal10x25/ap
	damage = 26
	armour_penetration = 25
	
/obj/item/projectile/bullet/calibre/cal10x25/hp
	damage = 38
	armour_penetration = -25


/obj/item/projectile/bullet/calibre/cal68x43			//6.8x43mm Caseless
	damage = 30
	
/obj/item/projectile/bullet/calibre/cal68x43/ap
	damage = 24
	armour_penetration = 25
	
/obj/item/projectile/bullet/calibre/cal68x43/ap
	damage = 36
	armour_penetration = -25
	

///////////////////////////////
// RIFLE AND LONG ARM ROUNDS //
///////////////////////////////

//IMPERIAL CALIBRES

//.223 Remington is under 556x45 below - identical to 5.56x45 NATO but lower pressure

/obj/item/projectile/bullet/calibre/cal3006	//.30-06 Winchester
	damage = 40
	

/obj/item/projectile/bullet/calibre/cal3006/ap
	damage = 28			//more of a hit for rifle bullets (30%), but...
	armour_penetration = 40		//...more of a return against armoured targets (40%)
	
	
obj/item/projectile/bullet/calibre/cal3006/hp
	damage = 52			//and vice versa
	armour_penetration = -40		

/obj/item/projectile/bullet/calibre/cal308	//.308 Winchester
	damage = 40
	
/obj/item/projectile/bullet/calibre/cal308/ap
	damage = 28
	armour_penetration = 40
	
/obj/item/projectile/bullet/calibre/cal308/hp
	damage = 52
	armour_penetration = -40
	
/obj/item/projectile/bullet/calibre/cal338	//.338 Lapua
	damage = 45
	armour_penetration = 10		//sniper bullet
	
/obj/item/projectile/bullet/calibre/cal338/mag	//.338 Lapua Magnum
	damage = 50
	ismagnum = 1

/obj/item/projectile/bullet/calibre/cal4570	//.45-70 Government
	damage = 55
	armour_penetration = 10

/obj/item/projectile/bullet/calibre/cal50bmg	//.50 Browning Machine Gun
	damage = 75				//the bullet is fucking huge, 12.7x99mm - and that's just the CASE!
	stun = 5
	weaken = 5
	armour_penetration = 15
	var/breakthings = TRUE
	
/obj/item/projectile/bullet/calibre/cal50bmg/on_hit(atom/target, blocked = 0, hit_zone)
	if((blocked != 100) && (!ismob(target) && breakthings))
		target.ex_act(rand(1,2))
	return ..()
	
/obj/item/projectile/bullet/calibre/cal50bmg/narq
	armour_penetration = 0
	nodamage = 1
	stun = 0
	weaken = 0
	breakthings = FALSE

/obj/item/projectile/bullet/calibre/cal50bmg/narq/on_hit(atom/target, blocked = 0, hit_zone)
	if((blocked != 100) && istype(target, /mob/living))
		var/mob/living/L = target
		L.Sleeping(20)
	return ..()


/obj/item/projectile/bullet/calibre/cal50bmg/cal50bmg/haemorrhage
	armour_penetration = 15
	damage = 15
	stun = 0
	weaken = 0
	breakthings = FALSE

/obj/item/projectile/bullet/calibre/cal50bmg/haemorrhage/on_hit(atom/target, blocked = 0, hit_zone)
	if((blocked != 100) && iscarbon(target))
		var/mob/living/carbon/C = target
		C.bleed(100)
	return ..()


/obj/item/projectile/bullet/calibre/cal50bmg/penetrator
	icon_state = "gauss"
	name = "penetrator round"
	damage = 60
	forcedodge = 1
	stun = 0
	weaken = 0
	breakthings = FALSE
	

//METRIC

/obj/item/projectile/bullet/calibre/cal556x45	//5.56x45mm NATO
	damage = 35
	ismagnum = 1
	
/obj/item/projectile/bullet/calibre/cal556x45/ap
	damage = 25
	armour_penetration = 40
	
/obj/item/projectile/bullet/calibre/cal556x45/bleeding
	damage = 20
	armour_penetration = 0

/obj/item/projectile/bullet/calibre/cal556x45/bleeding/on_hit(atom/target, blocked = 0, hit_zone)
	. = ..()
	if((blocked != 100) && iscarbon(target))
		var/mob/living/carbon/C = target
		C.bleed(35)

/obj/item/projectile/bullet/calibre/cal556x45/hp
	damage = 45
	armour_penetration = -40


/obj/item/projectile/bullet/calibre/cal556x45/incen
	damage = 7
	armour_penetration = 0
	
/obj/item/projectile/bullet/calibre/cal556x45/incen/Move()
	..()
	var/turf/location = get_turf(src)
	if(location)
		PoolOrNew(/obj/effect/hotspot, location)
		location.hotspot_expose(700, 50, 1)

/obj/item/projectile/bullet/calibre/cal556x45/incen/on_hit(atom/target, blocked = 0)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.adjust_fire_stacks(3)
		M.IgniteMob()
	
/obj/item/projectile/bullet/calibre/cal556x45/cal223	//.223 Remington Magnum
	damage = 30
	ismagnum = 0
	
/obj/item/projectile/bullet/calibre/cal556x45/cal223/ap
	damage = 21
	armour_penetration = 40
	
/obj/item/projectile/bullet/calibre/cal556x45/cal223/ap
	damage = 39
	armour_penetration = -40
	
/obj/item/projectile/bullet/calibre/cal762x39		//7.62x39mm Kalashnikov
	damage = 50
	
/obj/item/projectile/bullet/calibre/cal762x39/ap
	damage = 35
	armour_penetration = 40
	
/obj/item/projectile/bullet/calibre/cal762x39/hp
	damage = 65
	armour_penetration = -40
	
/obj/item/projectile/bullet/calibre/cal762x51		//7.62x51mm NATO
	damage = 65
	
/obj/item/projectile/bullet/calibre/cal762x51/ap
	damage = 46
	armour_penetration = 40
	
//no hollowpoint, it goes past base damage on my personal MoS

///////////////////////////////
// SHOTGUN AMMUNITION (12ga) //
///////////////////////////////

/obj/item/projectile/bullet/shotshell	//TO REMAIN UNUSED
	name = "shotgun pellet"
	damage = 1				
	damage_spread_coeff = 0.3

//LETHALS

/obj/item/projectile/bullet/shotshell/slug		//slug
	name = "shotgun slug"
	damage = 60
	damage_spread_coeff = 0.2
	
/obj/item/projectile/bullet/shotshell/slug/ap		//fletchette
	name = "shotgun fletchette"
	damage = 40
	armour_penetration = 40

/obj/item/projectile/bullet/shotshell/doubleaught	//00 buck
	damage = 10

/obj/item/projectile/bullet/shotshell/tripleaught	//000 buck
	damage = 15
	
/obj/item/projectile/bullet/shotshell/quadrupleaught	//0000 buck
	damage = 20
	
/obj/item/projectile/bullet/shotshell/metal_shavings/New()	//improv shell
	damage = 6
	range = rand(8)

/obj/item/projectile/bullet/shotshell/metal_shavings/on_range()
 	var/datum/effect_system/spark_spread/sparks = new /datum/effect_system/spark_spread
 	sparks.set_up(1, 1, src)
 	sparks.start()
 	..()

/obj/item/projectile/bullet/shotshell/metal_shavings/overload/New()
	damage = 3
	range = rand(10)

/obj/item/projectile/bullet/shotshell/metal_shavings/overload/on_hit(atom/target, blocked = 0)
 	..()
 	explosion(target, 0, 0, 2)

/obj/item/projectile/bullet/shotshell/metal_shavings/overload/on_range()
 	explosion(src, 0, 0, 2)
 	var/datum/effect_system/spark_spread/sparks = new /datum/effect_system/spark_spread
 	sparks.set_up(3, 3, src)
 	sparks.start()
 	..()	

/obj/item/projectile/bullet/shotshell/incendiary	//incendiary shot
	name = "incendiary slug"
	damage = 20

/obj/item/projectile/bullet/shotshell/incendiary/Move()
	..()
	var/turf/location = get_turf(src)
	if(location)
		PoolOrNew(/obj/effect/hotspot, location)
	location.hotspot_expose(700, 50, 1)
	
/obj/item/projectile/bullet/shotshell/incendiary/dragon		//dragonsbreath shot
	name = "dragonsbreath shot"
	damage = 5

//LESS THAN LETHAL

/obj/item/projectile/bullet/shotshell/ltl		//rubber slug
	damage = 5
	damage_spread_type = DAMAGE_SPREAD_OFF		//damage too low
	stamina = 80

/obj/item/projectile/bullet/shotshell/ltl/doubleaught	//00 rubber shot
	damage = 3
	stamina = 25
	
/obj/item/projectile/bullet/shotshell/ltl/tripleaught	//000 rubber shot
	damage = 4
	stamina = 30
	
/obj/item/projectile/bullet/shotshell/ltl/quadrupleaught	//0000 rubber shot
	damage = 5
	stamina = 35
	
/obj/item/projectile/bullet/shotshell/ltl/xrep			//eXtended Range Electromuscular Projectile
	name = "XREP"
	damage = 5
	stun = 5
	weaken = 5
	stutter = 5
	jitter = 20
	range = 7
	icon_state = "spark"
	color = "#FFFF00"
	
/obj/item/projectile/bullet/shotshell/ltl/meteor		//meteor shot
	name = "meteor"
	icon = 'icons/obj/meteor.dmi'
	icon_state = "dust"
	damage = 30
	damage_spread_type = DAMAGE_SPREAD_MULT
	weaken = 8
	stun = 8
	hitsound = 'sound/effects/meteorimpact.ogg'
	
/obj/item/projectile/bullet/shotshell/ltl/meteor/on_hit(atom/target, blocked = 0)
	. = ..()
	if(istype(target, /atom/movable))
		var/atom/movable/M = target
		var/atom/throw_target = get_edge_target_turf(M, get_dir(src, get_step_away(M, src)))
		M.throw_at(throw_target, 3, 2)

/obj/item/projectile/bullet/shotshell/ltl/meteor/New()
	..()
	SpinAnimation()


/obj/item/projectile/bullet/shotshell/ltl/meteor/breach		//Avon Calling
	damage = 10
	weaken = 4
	stun = 4
	


/////BOOKMARK
	

/obj/item/projectile/bullet/SDSbullet
	name = "bullet"
	icon_state = "bullet"
	damage = 7
	damage_type = BRUTE
	nodamage = 0
	flag = "bullet"
	hitsound_wall = "ricochet"

/obj/item/projectile/bullet/honker
	damage = 0
	weaken = 3
	stun = 3
	forcedodge = 1
	nodamage = 1
	hitsound = 'sound/items/bikehorn.ogg'
	icon = 'icons/obj/hydroponics/harvest.dmi'
	icon_state = "banana"
	range = 200

/obj/item/projectile/bullet/honker/New()
	..()
	SpinAnimation()

/obj/item/projectile/bullet/mime
	damage = 20

/obj/item/projectile/bullet/mime/on_hit(atom/target, blocked = 0)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.silent = max(M.silent, 10)


/obj/item/projectile/bullet/dart
	name = "dart"
	icon_state = "cbbolt"
	damage = 6
	var/piercing = 0

/obj/item/projectile/bullet/dart/New()
	..()
	create_reagents(50)
	reagents.set_reacting(FALSE)

/obj/item/projectile/bullet/dart/on_hit(atom/target, blocked = 0, hit_zone)
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		if(blocked != 100) // not completely blocked
			if(M.can_inject(null,0,hit_zone,piercing)) // Pass the hit zone to see if it can inject by whether it hit the head or the body.
				..()
				reagents.reaction(M, INJECT)
				reagents.trans_to(M, reagents.total_volume)
				return 1
			else
				blocked = 100
				target.visible_message("<span class='danger'>The [name] was deflected!</span>", \
									   "<span class='userdanger'>You were protected against the [name]!</span>")

	..(target, blocked, hit_zone)
	reagents.set_reacting(TRUE)
	reagents.handle_reactions()
	return 1

/obj/item/projectile/bullet/dart/metalfoam/New()
	..()
	reagents.add_reagent("aluminium", 15)
	reagents.add_reagent("foaming_agent", 5)
	reagents.add_reagent("facid", 5)

//This one is for future syringe guns update
/obj/item/projectile/bullet/dart/syringe
	name = "syringe"
	icon = 'icons/obj/chemical.dmi'
	icon_state = "syringeproj"

//Piercing Syringe
/obj/item/projectile/bullet/dart/syringe/piercing
	piercing = 1

/obj/item/projectile/bullet/neurotoxin
	name = "neurotoxin spit"
	icon_state = "neurotoxin"
	damage = 5
	damage_type = TOX
	weaken = 5

/obj/item/projectile/bullet/neurotoxin/on_hit(atom/target, blocked = 0)
	if(isalien(target))
		weaken = 0
		nodamage = 1
	. = ..() // Execute the rest of the code.
