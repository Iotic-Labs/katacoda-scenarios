# Lookup ID on the DID resolver

Let's fetch our published identity:

`discovered_doc = Resolver.discover(user_doc.id)`{{execute}}

And pretty print the contents:

`pprint(discovered_doc.__dict__())`{{execute}}

And that's it, the basics of getting started with IOTICS DID in Python!
