# Iotics User DID Creation

Firstly, you need to make a random secret seed to generate your identity. 

> All your identities will come from this one seed so you must keep it secret and secure.

`user_seed = Identifier.new_seed(); print(user_seed)`{{execute}}

We'll protect the secret by stretching it into an intermediate:

`user_intermediate = Identifier.seed_to_master(user_seed)`{{execute}}

Now we can derive private keys given the intermediate. TODO: explain doc type and name

`user_private = Identifier.new_private_hex_from_path_str(user_intermediate, Identifier.DIDType.USER, '#katacoda')`{{execute}}

Now we can construct the DID identity:

`user_doc = Document.new_did_document(Identifier.DIDType.USER, Identifier.private_hex_to_ECDSA(user_private), '#katacoda'); print(user_doc.id)`{{execute}}

Step 1 complete, you've created your Identity, good job!
