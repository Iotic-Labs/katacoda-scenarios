# Introduction to Iotics API - Twins

Search

`envsubst << EOF > /tmp/search.json
{"filter":{"location":{"location": {
               "lat": 6.027456183070403,
               "lon": 1.4658129805029452},
              "radiusKm": 5}
}}
EOF`{{execute}}

`curl --http1.1 -X POST "$HOST/searches/requests?scope=LOCAL" -H "Iotics-ClientAppId: katacoda" -H "Authorization: Bearer $TOKEN" $CONTENTHEADER -H "Iotics-RequestTimeout: $(date +%FT%T.000000 --date="+10 second") -d @/tmp/search.json`{{execute}}
