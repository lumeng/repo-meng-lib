var TwitterPackage = require('twitter');

// some data ("keys" and "access tokens") from https://apps.twitter.com
var secret = {
    consumer_key: 'Sr9TGEcheXsGv5iuJVfCEvrEl',
    consumer_secret: 'HUMvhkVGKbQ7Oie1q603wHoK2ioRBFLSwbVW2TBFJAVv5KVdiS',
    access_token_key: '2571601004-nwXDvkCfQAkVApwFTJc8sR6Nzo5WvwfDwVgS0Id',
    access_token_secret: 'E2vc48n75LlcGawSWAdhvzT0xBy8h11XqNc4fIrxxn7KF'
}

var Twitter = new TwitterPackage(secret);

var query = "Wolfram Alpha";

Twitter.get('search/tweets', {q: query, count: 10, lang:"en"}, function(error, tweets, response) {

    var tweet_list = tweets['statuses'];

    var count = 0;

    for (var i = 0; i < tweet_list.length; i++) {
        if ('retweeted_status' in tweet_list[i]) {
            continue;
        }

        count++;

        var screen_name = tweet_list[i].user.screen_name;
        var message = "@" + screen_name + " It's better to mention the official @Wolfram_Alpha Twitter username than using " + query;
        var tweet_id = tweet_list[i].id_str;

        try {
            Twitter.post('statuses/update', {"status": message, "in_reply_to_status_id":tweet_id}, function(error, tweet, response){
                console.log("Tweet posted successfully!")
            });
        } catch(err) {
            console.log(err);
        }
    }
});

// END
