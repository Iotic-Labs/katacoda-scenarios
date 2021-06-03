# Create a twin in a space

## Configure

First, we need to tell spacectl to create a config file for future operations. We do this by simply pointing spacectl at the space we wish to use.

If you have a space setup already (for example: `yourname.iotics.space`), you can use that in the following examples instead.

Lets begin by creating a config file based on the space `plateng.iotics.space`.

`./iotic-spacectl init --host plateng.iotics.space`{{execute}}

Behind the scenes, spacectl created a new user identity and stored some secrets in the configuration file.

The default output location is `~/.spacectl.yaml` but you can specify this with `--config <file>` if you have multiple spaces you wish to manage separately.

Lets take a very quick look at the config file:
`cat .spacectl.yaml`{{execute}}

The identity configuration here means that anything you create from here on in will be owned by YOU. So keep the config file safe!

## Create the twin

Lets take a look at our twin json file!

If you decided to skip step 1, you can use the pre-generated json file `example-twin.json`

`cat twin.json`{{execute}}

Lets get spacectl to create it in our space:

`cat twin.json | ./iotic-spacectl createtwins | tee create_twins_output.log`{{execute}}

When your twin is created, it's given a unique ID. You can see this in the command output. In order to refer to your twin later, it's a good idea to save this ID to a file.

Lets grab it out of the output log:

`cat create_twins_output.log | grep CREATED | awk '{print $4}' > twin_ids`{{execute}}

## Lookup twins

How do we know the twin is actually in the space? We can use `describetwin` with the ID that we saved:

`cat twin_ids | ./iotic-spacectl describetwins`{{execute}}

But what if we don't know the IDs? We can do a search. In the twin json, we defined a tag - "cat_house", so lets use that.

There's lots of ways to search so don't worry about the exact query syntax for now:

`echo {"filter": {"text": "cat_house"}, "responseType": "FULL"} | ./iotic-spacectl searchtwins`{{execute}}

You can also search for twins using a location and a range in meters:

`echo -e "51.5013631\t-0.1593983\t5" | ./iotic-spacectl searchgeotwins`{{execute interrupt}}

## Recap

In this first step, we touched on data modeling, creating some metadata for a twin. We created a json file for the twin, and created the twin in the space. We also looked up the twin by ID, and conducted a search both by tag and by location.
