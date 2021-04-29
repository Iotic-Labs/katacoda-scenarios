# katacoda-scenarios

Katacoda Scenarios for Iotics products.

Visit <https://docs.iotics.com> for more documentation on using Iotics and <https://www.iotics.com/> for the overview.

## Contributing

1. Fork <https://github.com/Iotic-Labs/katacoda-scenarios>
2. Sign up at [Katacoda](https://katacoda.com) using your GitHub ID
3. Link Katacoda and your GitHub repo using: <https://www.katacoda.com/profile/create-first-scenario/git>
4. Learn basics about creating scenarios: <https://www.katacoda.community/>
5. Add/Update Iotics scenarios, trigger the webhook in your GitHub repo and observe changes in <https://katacoda.com/your-user-id>

### Running scenario examples in Python shell

In order run the example code in the Python shell, as opposed to the default shell, there is `install-sdk.sh` _foreground script_ which runs `python -i /tmp/init.py`.

This runs the `init.py` (a scenario asset) which installs dependencies in Python and keeps the Python interactive shell open.

### Scenario Dependencies - Assets

We would prefer to provide a pre-built Docker image ("Katacoda environment") with all the dependencies in it.

But custom Katacoda environments are only available with Katacoda subscription.

* <https://www.katacoda.community/environments.html>
* <https://github.com/katacoda/scenario-examples/tree/main/environments>

Therefore the dependencies are configured via [assets](https://www.katacoda.community/customizing-environment.html#uploading-files).

Iotics is in the process to open-source the `iotics-lib-identity` Python package and publish it to [pypi](https://pypi.org/). But until that is done, there is a workaround in place. The package is embedded in the scenario as an asset and `install-sdk.sh` _foreground script_ waits for the assets to be uploaded and `init.py` then installs the package and other Python dependencies.

## Useful Links

* <https://katacoda.com>
* <https://www.katacoda.community>
* <https://github.com/katacoda/scenario-examples>
* <https://github.com/portworx/katacoda-scenarios>

## License

[MIT License](./LICENSE)

## Technology Used

* Katacoda
* Markdown
* Python
* Shell
* JSON
* DID
