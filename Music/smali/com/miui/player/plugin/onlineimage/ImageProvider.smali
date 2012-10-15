.class public interface abstract Lcom/miui/player/plugin/onlineimage/ImageProvider;
.super Ljava/lang/Object;
.source "ImageProvider.java"


# static fields
.field public static final INVALID_TYPE:I = -0x1

.field public static final ONLINE_MUSIC_PLUGIN_BASE_TYPE:I = 0x3e8


# virtual methods
.method public abstract getImageSearchInfo()Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;
.end method

.method public abstract getType()I
.end method

.method public abstract requestItem(Lcom/miui/player/plugin/onlineimage/ImageItemInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/net/URISyntaxException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract requestList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/plugin/onlineimage/ImageItemInfo;",
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
