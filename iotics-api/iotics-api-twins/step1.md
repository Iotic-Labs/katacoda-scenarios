# Introduction to Iotics API - Twins

Call Create Twin

`envsubst << EOF > /tmp/twin.json
{"twinId":{"value":"$TWIN0"}}
EOF`{{execute}}

`curl --http1.1 -X POST "$HOST/twins" -H "Iotics-ClientAppId: katacoda" -H "Authorization: Bearer $TOKEN" $CONTENTHEADER -d @/tmp/twin.json`{{execute}}

Describe Twin

`curl --http1.1 -X GET "$HOST/twins/$TWIN0" $CONTENTHEADER -H "Iotics-ClientAppId: katacoda" -H "Authorization: Bearer $TOKEN"`{{execute}}
