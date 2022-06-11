import 'package:twitter_clone/Services/NetworkHelper.dart';

const twitterUrl = 'https://api.twitter.com/2/users';

class TwitterModel {
  Future<dynamic> getUserName(String userName) async {
    NetworkHelper networkHelper =
        NetworkHelper('$twitterUrl/by/username/$userName');

    var userData = await networkHelper.getData();
    return userData;
  }

  Future<dynamic> getUserTweet(String userId) async {
    NetworkHelper networkHelper =
    NetworkHelper('$twitterUrl/$userId/tweets?max_results=100');

    var userTweet = await networkHelper.getData();
    return userTweet;
  }
}
