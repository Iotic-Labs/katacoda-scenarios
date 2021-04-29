# Iotics User and Agent Delegation

The User can now update their Identity Document to add a Delegation

`delegation = Document.new_delegation('#myagent', agent_issuer, proof)`{{execute}}

`user_doc.add_authentication_delegation(delegation)`{{execute}}

Show the delegation

`pprint(user_doc.__dict__())`{{execute}}

The delegation does not exist until the update is published

`signed_token = Document.new_document_token(user_doc, 'not used', user_issuer, Identifier.private_hex_to_ECDSA(user_private))
Resolver.register(signed_token)`{{execute}}
