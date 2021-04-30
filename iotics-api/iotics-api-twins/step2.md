# Create Digital Twin

Create the Digital Twin definition as a JSON payload:

A digital twin needs a unique ID and we use the _Decentralised Identity_ (DID) to uniquely identify them.

Therefore before you want to create a digital twin, you need to create the identity for it.

`envsubst << EOF > /tmp/twin.json
{
    "twinId": {
        "value":"$TWIN0"
    }
}
EOF`{{execute}}

NOTE: All requests are using `Content-Type: application/json`.

Post the payload to the `/twins` Iotics API endpoint to create the twin inside the _Host_.

`curl -s -X POST -d @/tmp/twin.json "$HOST/twins" \
    -H "Iotics-ClientAppId: katacoda" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer $TOKEN" \
    --http1.1 \
| jq`{{execute}}

You can get the details of the created Digital Twin like this:

`curl --http1.1 -X GET "$HOST/twins/$TWIN0" -H "Content-Type: application/json" -H "Accept: application/json" -H "Iotics-ClientAppId: katacoda" -H "Authorization: Bearer $TOKEN" | jq`{{execute}}
