.class Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;
.super Ljava/lang/Object;
.source "OnlineAudioActivity.java"

# interfaces
.implements Lmiui/cache/RequestManager$Request;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/OnlineAudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AudioListRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiui/cache/RequestManager$Request",
        "<",
        "Ljava/lang/String;",
        "Lcom/miui/player/plugin/onlinemusic2/AudioList;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/player/ui/OnlineAudioActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mKey:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/OnlineAudioActivity;ILjava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "type"
    .parameter "key"

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    invoke-virtual {p1}, Lcom/miui/player/ui/OnlineAudioActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mContext:Landroid/content/Context;

    .line 294
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 295
    iput p2, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mType:I

    .line 296
    iput-object p3, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mKey:Ljava/lang/String;

    .line 297
    return-void
.end method


# virtual methods
.method public computAsync()Lcom/miui/player/plugin/onlinemusic2/AudioList;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/16 v7, 0x3e8

    const/4 v6, 0x1

    .line 301
    iget v3, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mType:I

    packed-switch v3, :pswitch_data_0

    .line 320
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad type: type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 303
    :pswitch_0
    iget-object v2, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mKey:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/miui/player/network/OnlineMusicProxy;->requestAudioListOfAlbum(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic2/AudioList;

    move-result-object v2

    .line 318
    :cond_0
    :goto_0
    return-object v2

    .line 305
    :pswitch_1
    iget-object v2, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mKey:Ljava/lang/String;

    invoke-static {v2, v3, v6, v7}, Lcom/miui/player/network/OnlineMusicProxy;->requestAudioListOfArtist(Landroid/content/Context;Ljava/lang/String;II)Lcom/miui/player/plugin/onlinemusic2/AudioList;

    move-result-object v2

    goto :goto_0

    .line 308
    :pswitch_2
    iget-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mContext:Landroid/content/Context;

    new-array v4, v6, [Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mKey:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4, v6, v7}, Lcom/miui/player/network/OnlineMusicProxy;->requestAudioListOfBill(Landroid/content/Context;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 311
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/AudioList;>;"
    invoke-static {v1}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/plugin/onlinemusic2/AudioList;

    goto :goto_0

    .line 313
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/AudioList;>;"
    :pswitch_3
    iget-object v2, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mKey:Ljava/lang/String;

    invoke-static {v2, v3, v6, v7}, Lcom/miui/player/network/OnlineMusicProxy;->requestAudioListOfChannel(Landroid/content/Context;Ljava/lang/String;II)Lcom/miui/player/plugin/onlinemusic2/AudioList;

    move-result-object v2

    goto :goto_0

    .line 316
    :pswitch_4
    iget-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mKey:Ljava/lang/String;

    invoke-static {v3, v4, v6, v7}, Lcom/miui/player/network/OnlineMusicProxy;->queryAudio(Landroid/content/Context;Ljava/lang/String;II)Lcom/miui/player/plugin/onlinemusic2/AudioSearchResult;

    move-result-object v0

    .line 318
    .local v0, asr:Lcom/miui/player/plugin/onlinemusic2/AudioSearchResult;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/miui/player/plugin/onlinemusic2/AudioSearchResult;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic computAsync()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->computAsync()Lcom/miui/player/plugin/onlinemusic2/AudioList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x1

    .line 326
    iget v0, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 342
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad type: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :pswitch_0
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/player/network/OnlineMusicProxy;->getUrlForAlbum(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    :goto_0
    return-object v0

    .line 330
    :pswitch_1
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mKey:Ljava/lang/String;

    invoke-static {v0, v1, v4, v5}, Lcom/miui/player/network/OnlineMusicProxy;->getUrlForArtist(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 333
    :pswitch_2
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mContext:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mKey:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1, v4, v5}, Lcom/miui/player/network/OnlineMusicProxy;->getUrlForBill(Landroid/content/Context;[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 336
    :pswitch_3
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mKey:Ljava/lang/String;

    invoke-static {v0, v1, v4, v5}, Lcom/miui/player/network/OnlineMusicProxy;->getUrlForChannel(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 339
    :pswitch_4
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mKey:Ljava/lang/String;

    invoke-static {v0, v1, v4, v5}, Lcom/miui/player/network/OnlineMusicProxy;->getUrlForSearch(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic getRemoveKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->getRemoveKey()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public getRemoveKey()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    return-object v0
.end method

.method public isRemovable()Z
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public needCache()Z
    .locals 2

    .prologue
    .line 358
    iget v0, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompleted(Lcom/miui/player/plugin/onlinemusic2/AudioList;Z)V
    .locals 2
    .parameter "value"
    .parameter "finalValue"

    .prologue
    .line 363
    iget-object v1, p0, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/OnlineAudioActivity;

    .line 364
    .local v0, a:Lcom/miui/player/ui/OnlineAudioActivity;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 365
    invoke-virtual {v0, p1}, Lcom/miui/player/ui/OnlineAudioActivity;->onRequestCompleted(Lcom/miui/player/plugin/onlinemusic2/AudioList;)V

    .line 367
    :cond_0
    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 286
    check-cast p1, Lcom/miui/player/plugin/onlinemusic2/AudioList;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/miui/player/ui/OnlineAudioActivity$AudioListRequest;->onCompleted(Lcom/miui/player/plugin/onlinemusic2/AudioList;Z)V

    return-void
.end method

.method public onRemoved()V
    .locals 0

    .prologue
    .line 372
    return-void
.end method
