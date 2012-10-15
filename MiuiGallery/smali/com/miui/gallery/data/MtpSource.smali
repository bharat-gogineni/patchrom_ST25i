.class Lcom/miui/gallery/data/MtpSource;
.super Lcom/miui/gallery/data/MediaSource;
.source "MtpSource.java"


# instance fields
.field mApplication:Lcom/miui/gallery/app/GalleryApp;

.field mMatcher:Lcom/miui/gallery/data/PathMatcher;

.field mMtpContext:Lcom/miui/gallery/data/MtpContext;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryApp;)V
    .locals 3
    .parameter "application"

    .prologue
    .line 33
    const-string v0, "mtp"

    invoke-direct {p0, v0}, Lcom/miui/gallery/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/miui/gallery/data/MtpSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 35
    new-instance v0, Lcom/miui/gallery/data/PathMatcher;

    invoke-direct {v0}, Lcom/miui/gallery/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/MtpSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    .line 36
    iget-object v0, p0, Lcom/miui/gallery/data/MtpSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/mtp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 37
    iget-object v0, p0, Lcom/miui/gallery/data/MtpSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/mtp/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 38
    iget-object v0, p0, Lcom/miui/gallery/data/MtpSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/mtp/item/*/*"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 39
    new-instance v0, Lcom/miui/gallery/data/MtpContext;

    iget-object v1, p0, Lcom/miui/gallery/data/MtpSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/data/MtpContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/data/MtpSource;->mMtpContext:Lcom/miui/gallery/data/MtpContext;

    .line 40
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;
    .locals 6
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/data/MtpSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/data/PathMatcher;->match(Lcom/miui/gallery/data/Path;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :pswitch_0
    new-instance v0, Lcom/miui/gallery/data/MtpDeviceSet;

    iget-object v1, p0, Lcom/miui/gallery/data/MtpSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    iget-object v2, p0, Lcom/miui/gallery/data/MtpSource;->mMtpContext:Lcom/miui/gallery/data/MtpContext;

    invoke-direct {v0, p1, v1, v2}, Lcom/miui/gallery/data/MtpDeviceSet;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/data/MtpContext;)V

    .line 55
    :goto_0
    return-object v0

    .line 49
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/data/MtpSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/PathMatcher;->getIntVar(I)I

    move-result v3

    .line 50
    .local v3, deviceId:I
    new-instance v0, Lcom/miui/gallery/data/MtpDevice;

    iget-object v1, p0, Lcom/miui/gallery/data/MtpSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    iget-object v2, p0, Lcom/miui/gallery/data/MtpSource;->mMtpContext:Lcom/miui/gallery/data/MtpContext;

    invoke-direct {v0, p1, v1, v3, v2}, Lcom/miui/gallery/data/MtpDevice;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;ILcom/miui/gallery/data/MtpContext;)V

    goto :goto_0

    .line 53
    .end local v3           #deviceId:I
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/data/MtpSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/PathMatcher;->getIntVar(I)I

    move-result v3

    .line 54
    .restart local v3       #deviceId:I
    iget-object v0, p0, Lcom/miui/gallery/data/MtpSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/PathMatcher;->getIntVar(I)I

    move-result v4

    .line 55
    .local v4, objectId:I
    new-instance v0, Lcom/miui/gallery/data/MtpImage;

    iget-object v2, p0, Lcom/miui/gallery/data/MtpSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    iget-object v5, p0, Lcom/miui/gallery/data/MtpSource;->mMtpContext:Lcom/miui/gallery/data/MtpContext;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/data/MtpImage;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;IILcom/miui/gallery/data/MtpContext;)V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/data/MtpSource;->mMtpContext:Lcom/miui/gallery/data/MtpContext;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MtpContext;->pause()V

    .line 65
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/data/MtpSource;->mMtpContext:Lcom/miui/gallery/data/MtpContext;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MtpContext;->resume()V

    .line 70
    return-void
.end method
