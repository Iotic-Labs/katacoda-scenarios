![Seed-User-Agent-DigitalTwin](./assets/seed-user-agentX-twin.png)

To run your applications and authenticate with the Iotics API you need an _Agent_.

* An _Agent_ works on behalf of the _User_.
* Applications run with an _Agent_'s identity.

We use a delegation model whereby _Agents_ are delegated to act on behalf of _Users_. The delegation permission is granted by the _User_ itself and the delegation record is written in the _Agent_ DID.

Each _Agent_ must have its own keys and DIDs and be authorised to act on behalf of the _User_.

> _User_ accounts are used by real users, _Agents_ (sometimes referred to as _Service Accounts_) are used by services and applications.

To create an _Agent_ run:

`agent_id=$(create_agent_id)`{{execute}}

`echo $agent_id`{{execute}}

The _Agent_ must ask for permission to work on the _User_'s behalf. This is done by creating a _Proof_ with a **cryptographic signature** of the _User_'s ID with the _Agent_'s *private key*:

`proof=$(make_agent_proof $user_id)`{{execute}}

To **grant permission** the _User_ must update their _Decentralized Identity Document_ (DID) with a **Delegation of Authentication** including the _Proof_:

`user_delegate_to_agent $proof`{{execute}}

You've now created an _Agent_ and assigned it permission to work on your behalf, so we can now move to the final step.
