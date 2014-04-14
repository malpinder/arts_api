== Arts API

Want to book a ticket to one of London's art exhibitions or cultural events? Do it here! Since the Great Revolution of 2043, the People's Council for Totally Cool Art has been responsible for handling admissions & opening times for galleries all across our shining city-state.

Unfortunatly our web-design skills aren't as great as our revolutionary fervor. So this is a JSON api only.

== Purpose

This is a demonstration API used to teach about services & building gems. Students should create a gem that can set up the API connection and control HTTP requests / JSON parsing etc, and then build a simple user-facing sinatra app with that gem.

== Routes

`GET /galleries` returns a list of galleries.

`GET /galleries/:id` returns the information for a specific gallery.

`GET /galleries/:id/exhibitions` shows all exhibitions on at a gallery.

`POST /tickets` will create a ticket. You must specify the exhibition_id, the name of the ticketholder, and entry_at in the format '23/5/2014 10:00'.

`DELETE /tickets/:id` will delete the specified ticket.
