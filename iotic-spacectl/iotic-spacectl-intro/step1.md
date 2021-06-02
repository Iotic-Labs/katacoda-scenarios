# Create a twin

To get started with Iotics, you can use spacectl.

Spacectl is a general purpose swiss army knife of operating with an iotic space. 

You can download spacectl from https://nexus.cor.corp.iotic/#browse/browse:generic:iotic-spacectl
Run it on linux, mac or windows.

TODO: Is the download public?

## Model a twin

If you want to skip this step, we included a ready modeled twin, so you can execute `cp example-twin.json twin.json`{{execute}} and skip to step 2.

To create a twin, we need to give the twin some data. This is best done with json.
To make things a little easier, you can use the command `modeltwin` to ask simple questions and output json.

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
