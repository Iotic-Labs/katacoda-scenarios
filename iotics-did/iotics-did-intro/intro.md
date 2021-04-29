# Intro to DID

_Decentralized Identity_ (DID) is a new technology designed to gives you, the individual, **direct control over your identity**.

The W3C describe it as:

> a globally unique identifier that does not require a centralized registration authority because it is registered with distributed ledger technology or other form of decentralized network.

DIDs are an emerging effort for establishing a **standard for self-sovereign digital identities** from the W3C Credentials Community Group. They provide entities with a means to self-manage cryptographic key material and other metadata about their identity. This data can be used to authenticate an entity to third parties or to request authorisation for access to a given resource.

You can read more about DIDs [here](https://www.w3.org/TR/did-core/).

## Comparison

Existing identity systems are based on _centralized parties_ like **domains** or **certificate authorities** that chose whether to accept or reject an identity as they control them. However, when using _decentralized identity_ you prove who you are with a _cryptographic signature_.

The IOTICS technology builds upon decentralized ID (W3C).

## Intro to Iotics DID

This scenario covers the way IOTICS handles Identity using _Decentralized Identity_ (DID).

By the end of this scenario you will understand the basics of IOTICS Identity management.

The following key terms and their usage will be explained in the next steps:

* Seed
* User
* Agent

The *Digital Twins* will be explained in another scenario.

![Seed-User-Agent-DigitalTwin](./assets/seed-user-agent-twin.png)

Anyone who sees an _Agent_'s identity can't see the _User_'s identity or _Digital Twins_ which they can control.

Only the _User_ knows which _Agents_ were created using the _User_'s _Seed_.
