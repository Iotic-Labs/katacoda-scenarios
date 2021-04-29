#!/bin/bash
echo "Adding DID functions:"

echo -e "- \e[33mcreate_seed\e[0m"
create_seed() {
    # this can be generated, using openssl tools
    # e.g. cat /dev/urandom | head -c 32 | sha256sum
    echo "8be3e14881a7aa6468e10a91433612c6b7b4fcfeb90f5795a2c32fb345803480"
}

echo -e "- \e[33mcreate_user_id\e[0m"
create_user_id() {
    did="did:iotics:iotRTpQGD74JUkZdv7BP8tKzrHeJZCwiHnnV"
    echo -e "\e[96mCreated User:\e[0m $did" >&2
    echo $did
}

echo -e "- \e[33mcreate_agent_id\e[0m"
create_agent_id() {
    did="did:iotics:iotRoq4eG7sukFV3M3jSYocENMkoatynfNeW"
    echo -e "\e[96mCreated Agent:\e[0m $did" >&2
    echo $did
}

echo -e "- \e[33mmake_agent_proof\e[0m"
make_agent_proof() {
    proof="MEUCIQCYO4hgtZ9vk6S4aMESPlb69FRoORmy8WS9fbTlwlseygIgSsgSpaJeq+h5chxNY67nfXcN109uMsRXTFCVSVA/TpI="
    echo -e "\e[96mCreated Agent Proof:\e[0m $proof for User $0" >&2
    echo $proof
}

echo -e "- \e[33muser_delegate_to_agent\e[0m"
user_delegate_to_agent() {
    echo -e "\e[32mUpdated User Identity\e[0m"
}

echo -e "- \e[33mmake_token\e[0m"
make_token() {
    echo -e "\e[32mCreated Authentication Token\e[0m" >&2
    echo "eyJhbGciOiJFUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJleGFtcGxlLmNvbSIsImV4cCI6MTYxOTYxNzc5OCwiaWF0IjoxNjE5NjE3NzU4LCJpc3MiOiJkaWQ6aW90aWNzOmlvdFJvcTRlRzdzdWtGVjNNM2pTWW9jRU5Na29hdHluZk5lVyNhZ2VudC0wIiwic3ViIjoiZGlkOmlvdGljczppb3RSVHBRR0Q3NEpVa1pkdjdCUDh0S3pySGVKWkN3aUhublYifQ.0gK449pt6mcuAurM6v-fEp2Sxv7r2D0l092IYkgdLXabJ27zJhzY92nyZ7lQzmJ-aADHZLGTpMyRqXqanWfQEw"
    cat /tmp/unicorn.txt
}

# ###############################################
# Scenario ready
# ###############################################
