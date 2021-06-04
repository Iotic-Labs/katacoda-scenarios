# Create a feed for publishing data

As we saw in step 1, twins can have metadata associated with them - comments, labels, tags etc.

Twins can also have feeds for real time data.

As people come and go from our house, the number of occupants changes, so lets model this as a feed on our twin.

We've already created a twin of our house, we just need to add a feed.

## Model the feed

If you want to skip this step, we've included a ready modelled feed, just run the code in the below drop down and skip to 'create the feed on our house twin':

<details>
<summary>Skip this step</summary>
<br>
`cp example-feed.json feed.json`{{execute}}
</details>

To model the feed you first run:

`./iotic-spacectl modelfeed`{{execute}}

Then simply answer the questions in the terminal to create some metadata about our feed:

* `Comments`: "Number of occupants in our house"
* `Labels`: "occupancy"
* `StoreLastValue`: "true" - this allows people looking at our twin to automatically get the last value of our occupancy feed,
even if they weren't listening to the feed when we last published to it. The last value of the feed is stored.
* `Tags`: "occupancy"
* `Values`:
* `Label`: "occupancy"
* `Unit`: "http://example.org/something/occupancy"
* `Comment`: "number of people in the house"
* `DataType`: int

This will have written to a file `feed.json`(your previously specified location).

## Create the feed on our house twin

To create the feed, we need to identify which twin we want, and give the feed a name. It expects these, along with the json, to be given in [stdin](https://en.wikipedia.org/wiki/Standard_streams#Standard_input_(stdin)).

`cat twin_ids | awk '{system("echo -n \"" $1 "\toccupancy\t\";cat feed.json")}' > create_feed_data`{{execute}}

You can just use an editor if you'd prefer, or your favourite scripting language for the above step.

Now lets create the feed:

`cat create_feed_data | ./iotic-spacectl createfeeds`{{execute}}

## Check the feed is really there

We can check the feed is there by doing a `describetwin`:

`cat twin_ids | ./iotic-spacectl describetwins`{{execute}}

To get full details about the feed, we can then do a `describefeed`, including the name of the feed:

`cat twin_ids | awk '{print $1 "\toccupancy"}' | ./iotic-spacectl describefeeds`{{execute}}

## Recap

In this step we created a model we can use for our feeds, then used the model to create a feed and finally, we checked the feed was there.
