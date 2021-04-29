# Create Digital Twin

Create the Digital Twin definition as a JSON payload:

A digital twin needs a unique ID and we use the _Decentralised Identity_ (DID) to uniquely identify them.

Therefore before you want to create a digital twin, you need to create the identity for it.

`envsubst << EOF > /tmp/twin.json
{"twinId":{"value":"$TWIN0"}}
EOF`{{execute}}

NOTE: All requests are using `Content-Type: application/json`.

`echo $CONTENTHEADER`{{execute}}

Post the payload to the `/twins` Iotics API endpoint to create the twin inside the _Host_.

`curl --http1.1 -X POST "$HOST/twins" -H "Iotics-ClientAppId: katacoda" -H "Authorization: Bearer $TOKEN" $CONTENTHEADER -d @/tmp/twin.json`{{execute}}

You can get the details of the crated Digital Twin like this:

`curl --http1.1 -X GET "$HOST/twins/$TWIN0" $CONTENTHEADER -H "Iotics-ClientAppId: katacoda" -H "Authorization: Bearer $TOKEN"`{{execute}}
