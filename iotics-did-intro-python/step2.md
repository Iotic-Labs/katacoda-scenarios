# Iotics User DID Publish

Now we've created an identity we need to publish/register it so others can see it. The issuer string is the `identity + key name` used to sign the request:

`issuer = user_doc.id + user_doc.public_keys[0].id`{{execute}}

Next we need to serialise the identity into a signed token:

`signed_token = Document.new_document_token(user_doc, 'not used', issuer, Identifier.private_hex_to_ECDSA(user_private))`{{execute}}

And finally, publish it:

`Resolver.register(signed_token)`{{execute}}
