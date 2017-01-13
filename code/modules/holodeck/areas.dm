/area/shuttle/ftl/holodeck
	name = "Holodeck"
	icon_state = "Holodeck"
	luminosity = 1
	lighting_use_dynamic = 0

	var/obj/machinery/computer/holodeck/linked
	var/restricted = 0 // if true, program goes on emag list

/*
	Power tracking: Use the holodeck computer's power grid
	Asserts are to avoid the inevitable infinite loops
*/

/area/shuttle/ftl/holodeck/powered(var/chan)
	if(!master.requires_power)
		return 1
	if(master.always_unpowered)
		return 0
	if(!linked)
		return 0
	var/area/A = get_area(linked)
	ASSERT(!istype(A,/area/shuttle/ftl/holodeck))
	return A.powered(chan)

/area/shuttle/ftl/holodeck/usage(var/chan)
	if(!linked)
		return 0
	var/area/A = get_area(linked)
	ASSERT(!istype(A,/area/shuttle/ftl/holodeck))
	return A.usage(chan)

/area/shuttle/ftl/holodeck/addStaticPower(value, powerchannel)
	if(!linked)
		return
	var/area/A = get_area(linked)
	ASSERT(!istype(A,/area/shuttle/ftl/holodeck))
	return A.addStaticPower(value,powerchannel)

/area/shuttle/ftl/holodeck/use_power(var/amount, var/chan)
	if(!linked)
		return 0
	var/area/A = get_area(linked)
	ASSERT(!istype(A,/area/shuttle/ftl/holodeck))
	return A.use_power(amount,chan)


/*
	This is the standard holodeck.  It is intended to allow you to
	blow off steam by doing stupid things like laying down, throwing
	spheres at holes, or bludgeoning people.
*/
/area/shuttle/ftl/holodeck/rec_center
	name = "\improper Recreational Holodeck"

/area/shuttle/ftl/holodeck/rec_center/offline
	name = "Holodeck - Offline"

/area/shuttle/ftl/holodeck/rec_center/court
	name = "Holodeck - Empty Court"

/area/shuttle/ftl/holodeck/rec_center/dodgeball
	name = "Holodeck - Dodgeball Court"

/area/shuttle/ftl/holodeck/rec_center/basketball
	name = "Holodeck - Basketball Court"

/area/shuttle/ftl/holodeck/rec_center/thunderdome
	name = "Holodeck - Thunderdome Court"

/area/shuttle/ftl/holodeck/rec_center/beach
	name = "Holodeck - Beach"

/area/shuttle/ftl/holodeck/rec_center/lounge
	name = "Holodeck - Lounge"

/area/shuttle/ftl/holodeck/rec_center/medical
	name = "Holodeck - Emergency Medical"

/area/shuttle/ftl/holodeck/rec_center/pet_lounge
	name = "Holodeck - Pet Playground"

/area/shuttle/ftl/holodeck/rec_center/winterwonderland
	name = "Holodeck - Winter Wonderland"

// Bad programs

/area/shuttle/ftl/holodeck/rec_center/burn
	name = "Holodeck - Atmospheric Burn Test"
	restricted = 1

/area/shuttle/ftl/holodeck/rec_center/wildlife
	name = "Holodeck - Wildlife Simulation"
	restricted = 1

/area/shuttle/ftl/holodeck/rec_center/bunker
	name = "Holodeck - Holdout Bunker"
	restricted = 1

/area/shuttle/ftl/holodeck/rec_center/anthophila
	name = "Holodeck - Anthophila"
	restricted = 1
