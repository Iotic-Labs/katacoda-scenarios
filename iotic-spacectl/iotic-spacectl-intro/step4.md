# Publish data through my twin

Now that we have a feed setup to track our houses occupancy, we can publish data onto the feed, follow the feed, or check what the last stored value of it is.

First lets try publishing to the feed:

`cat twin_ids | awk '{print $1 "\toccupancy\t{\"occupancy\": 5}"}' | ./iotic-spacectl publish`{{execute}}

Here, we're creating a little bit of json `{"occupancy": 5}` and publishing on the feed `occupancy` of the twin.

Now, unless someone is explicitly following that feed at the time we publish, how do we know it worked?

Well, since we set `storeLastValue = true` in our feed definition, we can check the last value:

`cat twin_ids | awk '{print $1 "\toccupancy"}' | ./iotic-spacectl getlastfeedvalue`{{execute}}

In the output notice the line starting with `LASTFEEDVALUE` which shows you the last stored value for this feed.

## Check my data

But if we wanted to actually see the published data as it happens, we can follow the feed, and then publish to it.

First lets set something up following the feed:

`cat twin_ids | awk '{print $1 "\toccupancy"}' | ./iotic-spacectl follow`{{execute}}

Now lets publish an update, since we just invited people over and now our occupancy is 10!

First lets open a new terminal so we can leave the follow command running: `echo "New terminal"`{{execute T2}}

`cat twin_ids | awk '{print $1 "\toccupancy\t{\"occupancy\": 10}"}' | ./iotic-spacectl publish`{{execute T2}}

Lastly, switch back to the first terminal where we left our follow command running, and you will see the update was received.

## Recap

In this step we published to our feed, retrieved the last stored value of our feed, and lastly we have followed our feed whilst publishing to it.
