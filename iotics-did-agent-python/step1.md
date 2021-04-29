# Iotics User and Agent Delegation

For an Agent to work on behalf of a User or Twin a Delegation must be created.

There are two types of delegation.  Delegation of Control normally used between Agent and Twin.  This lets the Agent control the Twin to update its metadata, share data on its behalf, etc.  And Delegation of Authentication which is normally used between Agent and User, it provides no permission except proof the Agent is working on behalf of the User.

Delegation requires crytographic proof from the entity asking for delegation.  The content of the signature if the ID of the entity they are asking.

The Agent must ask the User (or Twin) for delegation with proof.

`proof = Document.new_proof(user_doc.id, Identifier.private_hex_to_ECDSA(agent_private))`{{execute}}
