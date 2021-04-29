Now you have an _Agent_ that is allowed to work on our behalf.

The _Agent_ now can create an **Authentication Token** ([JWT](https://en.wikipedia.org/wiki/JSON_Web_Token)):

`token=$(make_token $agent_id $user_id)`{{execute}}

`echo $token`{{execute}}

That's it, and now you have the authenticated token to use with the [Iotics API](https://docs.iotics.com/reference).
