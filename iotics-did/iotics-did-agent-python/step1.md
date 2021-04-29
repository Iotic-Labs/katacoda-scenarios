# Iotics User and Agent Delegation

For an Agent to work on behalf of a User or Twin a Delegation must be created.

There are two types of delegation:

## Delegation of Control

Normally used between Agent and Twin, letting the Agent control the Twin to update its metadata, share data on its behalf, etc.  

## Delegation of Authentication 

Normally used between Agent and User, providing no permission except proof that the Agent is working on behalf of the User.

Both types of delegation require crytographic proof from the entity asking for delegation. The content of the signature of the ID of the entity they are asking.

The Agent must ask the User (or Twin) for delegation with proof:

`proof = Document.new_proof(user_doc.id.encode(), Identifier.private_hex_to_ECDSA(agent_private))`{{execute}}
