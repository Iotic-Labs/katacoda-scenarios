# Update Digital Twin Metadata

To update the Digital Twin you need to update its metadata:

For example, you can update its location and labels (and more…).

`envsubst << EOF > /tmp/metadata.json
{"location":{"location": {
               "lat": 6.027456183070403,
               "lon": 1.4658129805029452}},
 "labels":{"added":[{
                "lang": "en",
                "value": "Digital Twin Label Example"}]}
}
EOF`{{execute}}

Post the payload back to the endpoint of the digital twin:

`curl --http1.1 -X PATCH "$HOST/twins/$TWIN0" -H "Iotics-ClientAppId: katacoda" -H "Authorization: Bearer $TOKEN" $CONTENTHEADER -d @/tmp/metadata.json`{{execute}}

You can get the details of the updated Digital Twin like this:

`curl --http1.1 -X GET "$HOST/twins/$TWIN0" $CONTENTHEADER -H "Iotics-ClientAppId: katacoda" -H "Authorization: Bearer $TOKEN"`{{execute}}
