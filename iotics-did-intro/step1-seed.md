A random string of characters that is used to generate set of keys for entities like _Users_ and _Agents_. **The seed is secret** because the seed can recreate the keys and therefore impersonate the entity who is associated to the private key.

If you lose the seed you lose your identity - in practice, the ability to control your resources (agents, digital twins).

The first step is to create a random secret seed for the generation of your identity.

All your identities will come from this one seed so you must keep it secret and secure.

`user_seed=$(create_seed)`{{execute}}

`echo $user_seed`{{execute}}

Now that you have your _Seed_ you can use it to create _User_ identities…
