# Search for existing Digital Twins

You can find other twins defined on the _Host_ using **search** endpoint.

For example, you can search by location by using a **search filter** like this:

`envsubst << EOF > /tmp/search.json
{"filter":{"location":{"location": {
               "lat": 6.027456183070403,
               "lon": 1.4658129805029452},
              "radiusKm": 5}
}}
EOF`{{execute}}

Post the payload to the `/searches/requests` endpoint of the Iotics API:

`curl --http1.1 -X POST "$HOST/searches/requests?scope=LOCAL" -H "Iotics-ClientAppId: katacoda" -H "Authorization: Bearer $TOKEN" $CONTENTHEADER -H "Iotics-RequestTimeout: $(date +%FT%T.000000 --date="+10 second") -d @/tmp/search.json`{{execute}}
