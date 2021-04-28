# Intro to DID

Decentralized Identity (DID) is a new technology designed to gives you, the individual, direct control over your identity. The W3C describe it as:

> a globally unique identifier that does not require a centralized registration authority because it is registered with distributed ledger technology or other form of decentralized network.”

DIDs are an emerging effort for establishing a standard for self-sovereign digital identities from the W3C Credentials Community Group. They provide entities with a means to self-manage cryptographic  key material and other metadata about their identity. This data can be used to authenticate an entity to third parties or to request authorisation for access to a given resource.

You can read more about DIDs [here](https://www.w3.org/TR/did-core/).

Existing identity systems are based on centralized parties like domains or certificate authorities that chose whether to accept or reject themselves as they control your identity. However, when using Decentralized Identity you prove who you are with a cryptographic signature.

The IOTICS technology builds upon decentralized ID (W3C).

## Intro to Iotics DID

This scenario covers the way IOTICS handles Identity using Decentralized Identity (DID).

By  the end of this scenario you will understand the basics of IOTICS Identity management and have an agent which you can use to securely run your applications on Iotics.

### Agent

![User-Agent-Twin](./assets/user-agent-twin.png)

An Agent works on behalf of the user.

Applications run with an _Agent_'s identity.

Therefore anyone who sees an Agent's identity can't see the _User_'s identity or _Twins_ which they can control.

Only the _User_ knows which _Agents_ were created using the User's _seed_.
