# Create a twin

To get started with Iotics, you can use spacectl.

Spacectl is a general purpose swiss army knife of operating with an iotic space. 

You can download spacectl from https://nexus.cor.corp.iotic/#browse/browse:generic:iotic-spacectl
Run it on linux, mac or windows.

TODO: Is the download public?

## Configure

First, we need to tell spacectl to create a config file for future operations. We do this by
simply pointing spacectl at the space we wish to use.
If you have a space setup already eg `yourname.iotics.space`, you can use that instead in the following
examples.

So lets begin by creating a config file based on the space `plateng.iotics.space`.

`./iotic-spacectl init --host plateng.iotics.space`{{execute}}

Behind the scenes, spacectl created a new user identity and stored some secrets in the configuration file.
The default output location is `~/.spacectl.yaml` but you can specify this with `--config <file>` for example
if you have multiple spaces you wish to manage separately.

Lets take a very quick look at the config file
`cat .spacectl.yaml`{{execute}}

The identity configuration here means that anything you create from here on in will be owned by YOU. So keep
the config file safe!

## Create a twin

To create a twin, we need to give the twin some data. This is best done with json.
To make things a little easier, you can use the command `modeltwin` to ask simple questions and output json.

If you'd rather just skip ahead, you can skip this step and use the pre-generated `example-twin.json` file.

So lets create the json definition of a twin.

`./iotic-spacectl modeltwin`{{execute}}

You can now answer simple questions in the terminal to create the metadata for your twin.
For our first example, lets suppose we create a twin of our house.

Click on the terinal, and simply answer the questions to create the json.

### Comments

Twins can have one or more comments, in any language.
Lets just add a single comment for now

`This is my house`

And you can just press enter to accept the default language `en`.
Once you're finished adding comments just press enter to move ahead.

### Labels

Twins can have one or more labels, in any language.

Lets add a single label for now

`My house`

Again, use the default language of `en` and press enter to move on.

### Location

Twins can have a location.
Here's the location for Buckingham Palace if you want to use that!

`51.5013631`{{execute}}
`-0.1593983`{{execute}}

### Visibility

You can either keep your twin PRIVATE or make it PUBLIC.
Just press enter to use the default `PUBLIC`.

### Properties

For now, to keep it simple, we won't add any properties.
TODO:?
So just press enter here.

### Tags

Tags are useful for things like 'category' or other markers.
Lets just add a single category.

`cat_house`{{execute}}

Press enter to finish the tags section.

After running through the above, we should now have a json twin file ready to use.
The default save location is `twin.json` but you can specify with `--output <file>`

## Create the twin

Lets take a look at our twin json file!
If you decided to skip the above, you can use the pre-generated json file `example-twin.json`

`cat twin.json`{{execute}}

Lets get spacectl to create it in our space!

`cat twin.json | ./iotic-spacectl createtwins | tee create_twins_output.log`{{execute}}

When your twin is created, it's given a unique ID. You can see this in the command output. In order to refer to
your twin later, it's a good idea to save this ID to a file. So lets grab it out of the output log.

`cat create_twins_output.log | grep CREATED | awk '{print $4} > twin_ids`{{execute}}

## Lookup twins

But how do we know the twin is actually in the space? We can use describetwin with the ID that we saved.

`cat twin_ids | ./iotic-spacectl describetwins`{{execute}}

But what if we don't know the IDs? We can do a search. In the twin json, we defined a tag - "cat_house". Lets use that.
There's lots of ways to search so don't worry about the exact query syntax for now.

`echo {"filter": {"text": "cat_house"}, "responseType": "FULL"} | ./iotic-spacectl searchtwins`{{execute}}

You can also search for twins using a location and a range in meters.
`echo -e "51.5013631\t-0.1593983\t5" | ./spacectl searchgeotwins`{{execute}}

## Recap

In this first step, we touched on data modeling, creating some metadata for a twin. We created a json file for the twin,
and created the twin in the space.
We also looked up the twin by ID, and conducted a search both by tag and by location.