.class public interface abstract Lcom/miui/player/plugin/onlinelyric/LyricProvider;
.super Ljava/lang/Object;
.source "LyricProvider.java"


# virtual methods
.method public abstract requestItem(Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/net/URISyntaxException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract requestList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/net/URISyntaxException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
