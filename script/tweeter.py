
import tweepy
import json

# 개인이 발급받은 키값으로 변경후에 실행 

credentials = {
    "consumer_key": "M45preugRe1NT0",
    "consumer_secret": "WVSMlqNH0ehAbzCjkQkn0lV7h1lwrG",
    "access_key": "1547175151196065HyspMMaMMSirMR11hOwwK",
    "access_secret": "aT8J19yxSpGXNaKYyIsb64V2YaiKuTzRpaz"}


auth = tweepy.OAuthHandler(credentials["consumer_key"], credentials["consumer_secret"])
auth.set_access_token(credentials["access_key"], credentials["access_secret"])
api = tweepy.API(auth,wait_on_rate_limit=True)



from datetime import date
today = date.today()
since = today.strftime("%Y-%m-%d")

api = tweepy.API(auth,
                 retry_count=10,
                 timeout=300)

maxTweets = 100
search = tweepy.Cursor(api.search_tweets,
                       q=["빅데이터", "AI"],
                       count=maxTweets,
                       tweet_mode = "extended",
                       result_type="mixed",
                       lang= 'ko',
                       include_entities=True
                       )
val=  []
for tweet in search.items(100):
    val.append(tweet)

Tweets =[]
for i in range(len(val)):
    model={
    "text": val[i].full_text,
    "id_str": val[i].id_str,
    "lang": val[i].lang
    }

    Tweets.append(model)

resultat= {"results": Tweets}
print(resultat)
