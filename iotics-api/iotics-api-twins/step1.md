To start using the Iotics API, these parameters need to be set up:

## Host

The **Host** defines where is the Iotics API endpoint.

`echo $HOST`{{execute}}

## Token

The **Token** is the authentication token (JWT) used to authorise your request against the Iotics API endpoint.

Read more about authentication and Decentralised Identity at Iotics on [Intro to DID course](https://www.katacoda.com/iotics/courses/iotics-did).

`echo $TOKEN`{{execute}}

## Digital Twins

An IOTICS _Digital Twin_ is a virtual representation in IOTICS of a real entity. An entity can be a physical device, a person, a data source, a database, whatever is “real” for the domain.

An IOTICS _Digital Twin_ is made of three parts:

* Its IOTICS _Decentralised Identity_ (DID)
* Its model representation as a set of _metadata_ records (properties of the digital twin) and feeds and controls
* Its program or agent to bridge the real and virtual worlds

In practice this means that to create a digital twin in IOTICS you just:

* Create its identity
* Define a model representing the twin properties, feeds and controls

We have pre-created two digital twins in a host used by this scenario:

`echo $TWIN0`{{execute}}

`echo $TWIN1`{{execute}}

Because the Iotics API operations are idempotent, we will still use the same twins in the examples and show how these twins can be created.
