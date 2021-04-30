# Search for existing Digital Twins

You can find other twins defined on the _Host_ using **search** endpoint.

For example, you can search by location by using a **search filter** like this:

`envsubst << EOF > /tmp/search.json
{
    "filter": {
        "location": {
            "location": {
                "lat": 6.027456183070403,
                "lon": 1.4658129805029452
            },
            "radiusKm": 5
        }
    }
}
EOF`{{execute}}

Apart from the standard headers, the search request also requires a timeout (`Iotics-RequestTimeout`).

> This needs to be an absolute time in the future. We are working on an improvement to make this a relative time instead to deal better with potential time differences on different systems.

Post the payload to the `/searches/requests` endpoint of the Iotics API:

`curl -X POST -d @/tmp/search.json "$HOST/searches?scope=LOCAL" \
    -H "Iotics-RequestTimeout: $(date +%FT%T.000000 --date=\"+30 second\") \
    -H "Iotics-ClientAppId: katacoda" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer $TOKEN" \
    -s --http1.1 \
| jq`{{execute}}
