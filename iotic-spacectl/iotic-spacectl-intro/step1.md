# Creating a model for my twins

## Model a twin

If you want to skip this step, we've included a ready modelled twin, just run the code in the below drop down and skip to the next step:

<details>
<summary>Skip this step</summary>
<br>
`cp example-twin.json twin.json`{{execute}}
</details>

To create a twin, we need to give the twin some data. This is best done with json.

To make things a little easier, you can use the command `modeltwin`, which will ask you questions in the terminal you can answer to output json.

So lets create the json definition of a twin. For our first example, lets create a twin of our house:

`./iotic-spacectl modeltwin`{{execute}}

The default output location for this is `twin.json`, but you can set a different location with `--output <file>`.

You can now answer the simple questions in the terminal to create the metadata for your twin.

Click on the terminal, and simply answer the questions to create the json.

### Comments

Twins can have one or more comments, in any language.

Lets just add a single comment for now:

`This is my house`

And then just press enter to accept the default language `en`.

Once you've finished adding comments just press enter to move to the next step.

### Labels

Twins can have one or more labels, in any language, to your twin. For the purpose of this tutorial we'll treat them the same as properties(explained below).

Lets add a single label for now:

`My house`

Again, use the default language of `en` and press enter to move on.

### Location

Twins can have a location. For example, here's the location for Buckingham Palace if you want to use that:

`51.5013631`{{execute}}
`-0.1593983`{{execute}}

### Visibility

Visibility determines if your twin can be found in search. You can either keep your twin PRIVATE or make it PUBLIC.

Just press enter to use the default: `PUBLIC`.

### Properties

Properties allow you to add additional information Twins, enabling more granular information and complex relationships to be built into your ecosystem. For example you could give your house twin descriptions such as address or number of bedrooms.

You can read more about properties [here](https://docs.iotics.com/docs/tutorial-4-adding-properties).

For now, let's keep it simple, just press enter here.

### Tags

Tags are useful for use as markers, such as categories. For the purpose of this tutorial we'll treat them the same as properties.

Lets just add a single category tag for now:

`cat_house`{{execute}}

Press enter to finish the tags section.

After running through the above, we should now have a json twin file ready to use.

## Recap

In this step we created a json file that can be used as model that'll we'll be able to use in the future to create our twins quickly and easily. 
