# Iotics User and Agent Delegation

Now the User has delegated authentication to the Agent, the Agent can create an authentication token for the Iotics API:

`authentication_token = Authentication.new_authentication_token(
      agent_issuer,      # Issuer from the delegation
      user_doc.id,       # Subject is User we're authenticating as
      'not used',        # Audience is the id/address/url we're authenticating to
      123,               # Duration seconds
      Identifier.private_hex_to_ECDSA(user_private)
); print(authentication_token)`{{execute}}

And that's it, we've covered the basics of Agent delegation!
