import pandas as pd

def article_views(views: pd.DataFrame) -> pd.DataFrame:
    df=views[views["author_id"]==views["viewer_id"]]
    df.drop_duplicates(subset=["author_id"],inplace=True)
    df.sort_values(by=["author_id"],inplace=True)
    return df[["author_id"]].rename(columns={"author_id":"id"})

# Method:2

import pandas as pd

def article_views(views: pd.DataFrame) -> pd.DataFrame:
    df=views[views["author_id"]==views["viewer_id"]]
    df=df["author_id"].unique()
    df=pd.DataFrame(df,columns=["id"])
    df.sort_values(by=["id"],inplace=True)
    return df