.class Lcom/miui/player/network/OnlineMusicReporter$UserInfoFactory;
.super Ljava/lang/Object;
.source "OnlineMusicReporter.java"

# interfaces
.implements Lcom/miui/player/network/OnlineMusicReporter$LogFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/network/OnlineMusicReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UserInfoFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/player/network/OnlineMusicReporter$LogFactory",
        "<",
        "Lcom/miui/player/network/OnlineMusicReporter$UserInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/miui/player/network/OnlineMusicReporter$UserInfo;Lcom/miui/player/network/OnlineMusicReporter$UserInfo;)Z
    .locals 2
    .parameter "first"
    .parameter "second"

    .prologue
    .line 259
    iget-object v0, p1, Lcom/miui/player/network/OnlineMusicReporter$UserInfo;->mDate:Ljava/lang/String;

    iget-object v1, p2, Lcom/miui/player/network/OnlineMusicReporter$UserInfo;->mDate:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget v0, p1, Lcom/miui/player/network/OnlineMusicReporter$UserInfo;->mTrackCount:I

    iget v1, p2, Lcom/miui/player/network/OnlineMusicReporter$UserInfo;->mTrackCount:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/miui/player/network/OnlineMusicReporter$UserInfo;->mTrackCount:I

    .line 261
    const/4 v0, 0x1

    .line 264
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 255
    check-cast p1, Lcom/miui/player/network/OnlineMusicReporter$UserInfo;

    .end local p1
    check-cast p2, Lcom/miui/player/network/OnlineMusicReporter$UserInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/player/network/OnlineMusicReporter$UserInfoFactory;->add(Lcom/miui/player/network/OnlineMusicReporter$UserInfo;Lcom/miui/player/network/OnlineMusicReporter$UserInfo;)Z

    move-result v0

    return v0
.end method

.method public create(Ljava/lang/String;)Lcom/miui/player/network/OnlineMusicReporter$UserInfo;
    .locals 5
    .parameter "src"

    .prologue
    .line 269
    const-string v3, ","

    invoke-static {p1, v3}, Lcom/xiaomi/common/util/Strings;->seperateValues(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 270
    .local v0, array:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 271
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 273
    .local v2, date:Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 274
    .local v1, count:I
    if-eqz v2, :cond_0

    if-ltz v1, :cond_0

    .line 275
    new-instance v3, Lcom/miui/player/network/OnlineMusicReporter$UserInfo;

    invoke-direct {v3, v2, v1}, Lcom/miui/player/network/OnlineMusicReporter$UserInfo;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v1           #count:I
    .end local v2           #date:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 277
    .restart local v2       #date:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 282
    .end local v2           #date:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic create(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lcom/miui/player/network/OnlineMusicReporter$UserInfoFactory;->create(Ljava/lang/String;)Lcom/miui/player/network/OnlineMusicReporter$UserInfo;

    move-result-object v0

    return-object v0
.end method
