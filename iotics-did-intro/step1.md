# Iotics User DID Creation

The first step is to create a random secret seed for the generation of your identity.

All your identities will come from this one seed so you must keep it secret and secure.

Creating your seed is a s simple as running:

`user_seed=$(create_seed)`{{execute}}

`echo $user_seed`{{execute}}

Now that you have your seed you can use it to create user identities:

`user_id=$(create_user_id)`{{execute}}

`echo $user_id`{{execute}}

You've just created your first secure identity, great job!
