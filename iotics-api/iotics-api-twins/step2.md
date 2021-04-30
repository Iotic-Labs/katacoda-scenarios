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

Every request to the _Iotics API_ will have at minimum these headers:

* `Iotics-ClientAppId` to identify applications
* `Content-Type`
* `Authorization` with the auth token (JWT)

NOTE: All requests are using `Content-Type: application/json`.

Post the payload with the headers to the `/twins` Iotics API endpoint to create the twin inside the _Host_.

`curl -X POST -d @/tmp/twin.json "$HOST/twins" \
    -H "Iotics-ClientAppId: katacoda" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer $TOKEN" \
    -s --http1.1 \
| jq`{{execute}}

The response is in JSON format so we pass it to `jq` for a pretty print.

You can get the details of the created Digital Twin like this:

`curl -X GET "$HOST/twins/$TWIN0" \
    -H "Iotics-ClientAppId: katacoda" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer $TOKEN" \
    -s --http1.1 \
| jq`{{execute}}

<hr>

What is _envsubst_, _curl_, _jq_?

* [envsubst](https://linux.die.net/man/1/envsubst) - command-line tool to substitute environment variables in shell format strings
* [curl](https://linux.die.net/man/1/curl) - command-line tool to transfer data from or to a server
* [jq](https://stedolan.github.io/jq/) - lightweight command-line JSON processor
