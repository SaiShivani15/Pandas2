import pandas as pd

def invalid_tweets(tweets: pd.DataFrame) -> pd.DataFrame:
    isvalid=tweets["content"].str.len()>15
    df=tweets[isvalid]
    return df[["tweet_id"]]


#method 2:
import pandas as pd

def invalid_tweets(tweets: pd.DataFrame) -> pd.DataFrame:
    df=tweets[tweets["content"].str.len()>15]
    return df[["tweet_id"]]