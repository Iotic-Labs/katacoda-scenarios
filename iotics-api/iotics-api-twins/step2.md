# Introduction to Iotics API - Twins

Update Twin Metadata

`envsubst << EOF > /tmp/metadata.json
{"location":{"location": {
               "lat": 6.027456183070403,
               "lon": 1.4658129805029452}},
 "labels":{"added":[{
                "lang": "en",
                "value": "Twin Label Example"}]}
}
EOF`{{execute}}

`curl --http1.1 -X PATCH "$HOST/twins/$TWIN0" -H "Iotics-ClientAppId: katacoda" -H "Authorization: Bearer $TOKEN" $CONTENTHEADER -d @/tmp/metadata.json`{{execute}}

Describe Twin

`curl --http1.1 -X GET "$HOST/twins/$TWIN0" $CONTENTHEADER -H "Iotics-ClientAppId: katacoda" -H "Authorization: Bearer $TOKEN"`{{execute}}
