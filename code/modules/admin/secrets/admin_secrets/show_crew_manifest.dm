/datum/admin_secret_item/admin_secret/show_crew_manifest
	name = "Show Crew Manifest"

/datum/admin_secret_item/admin_secret/show_crew_manifest/execute(mob/user)
	. = ..()
	if(!.)
		return
	var/dat
	dat += "<meta charset=\"utf-8\"><h4>Crew Manifest</h4>"
	dat += html_crew_manifest()

	user << browse(dat, "window=manifest;size=370x420;can_close=1")
