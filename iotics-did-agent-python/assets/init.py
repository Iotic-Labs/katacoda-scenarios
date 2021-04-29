import os
import pprint

os.environ["RESOLVER"] = "https://did-kata.dev.iotics.com"

os.system("pip install -f /tmp iotic.lib.identity")

from iotic.lib.identity import *
from pprint import pprint

# We'll do all the setup from the intro so variables are available

user_seed = Identifier.new_seed(); print(user_seed)
user_intermediate = Identifier.seed_to_master(user_seed)

user_private = Identifier.new_private_hex_from_path_str(user_intermediate, Identifier.DIDType.USER, '#katacoda')
user_doc = Document.new_did_document(Identifier.DIDType.USER, Identifier.private_hex_to_ECDSA(user_private), '#katacoda'); print(user_doc.id)

user_issuer = user_doc.id + user_doc.public_keys[0].id
signed_token = Document.new_document_token(user_doc, 'not used', user_issuer, Identifier.private_hex_to_ECDSA(user_private))
Resolver.register(signed_token)

pprint(user_doc.__dict__())

agent_private = Identifier.new_private_hex_from_path_str(user_intermediate, Identifier.DIDType.AGENT, '#katacoda')
agent_doc = Document.new_did_document(Identifier.DIDType.AGENT, Identifier.private_hex_to_ECDSA(agent_private), '#katacoda'); print(agent_doc.id)

agent_issuer = agent_doc.id + agent_doc.public_keys[0].id
signed_token = Document.new_document_token(agent_doc, 'not used', agent_issuer, Identifier.private_hex_to_ECDSA(agent_private))
Resolver.register(signed_token)

pprint(agent_doc.__dict__())
