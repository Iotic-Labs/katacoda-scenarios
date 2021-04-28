# Iotics Agent DID Creation

To authenticate with the Iotics API you need an Agent. Agents will always work on a User's behalf.

To create an agent, just run:

`agent_id=$(create_agent_id)`{{execute}}

`echo $agent_id`{{execute}}

The Agent must ask for permission to work on the User's behalf. This is done with a cryptographic signature of the User's ID with the Agent's private key:

`proof=$(make_agent_proof $user_id)`{{execute}}

To grant permission the User must update their Identity Document with a Delegation of Authentication including the Proof:

`user_delegate_to_agent $proof`{{execute}}

You've not created an agent and assigned it permission to work on your behalf, so we can now move to the final step.
