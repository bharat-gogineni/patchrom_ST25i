.class Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;
.super Ljava/lang/Object;
.source "PlaylistRecoverer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/util/PlaylistRecoverer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilterConditions"
.end annotation


# instance fields
.field public mLastFilterDuration:Z

.field public mLastFilterDurationProgress:I

.field public mLastFilterSize:Z

.field public mLastFilterSizeProgress:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLastFilterDuration(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 121
    const-string v0, "filter_by_duration"

    invoke-static {p0, v0}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static getLastFilterDurationProgress(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 129
    const-string v0, "filter_by_duration_progress"

    invoke-static {p0, v0}, Lcom/miui/player/util/PreferenceCache;->getPrefAsInteger(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static getLastFilterSize(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 117
    const-string v0, "filter_by_size"

    invoke-static {p0, v0}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static getLastFilterSizeProgress(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 125
    const-string v0, "filter_by_size_progress"

    invoke-static {p0, v0}, Lcom/miui/player/util/PreferenceCache;->getPrefAsInteger(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public isChanged(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 110
    iget v0, p0, Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;->mLastFilterSizeProgress:I

    invoke-static {p1}, Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;->getLastFilterSizeProgress(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;->mLastFilterSize:Z

    invoke-static {p1}, Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;->getLastFilterSize(Landroid/content/Context;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;->mLastFilterDurationProgress:I

    invoke-static {p1}, Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;->getLastFilterDurationProgress(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;->mLastFilterDuration:Z

    invoke-static {p1}, Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;->getLastFilterDuration(Landroid/content/Context;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 103
    invoke-static {p1}, Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;->getLastFilterSizeProgress(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;->mLastFilterSizeProgress:I

    .line 104
    invoke-static {p1}, Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;->getLastFilterSize(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;->mLastFilterSize:Z

    .line 105
    invoke-static {p1}, Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;->getLastFilterDurationProgress(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;->mLastFilterDurationProgress:I

    .line 106
    invoke-static {p1}, Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;->getLastFilterDuration(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/player/util/PlaylistRecoverer$FilterConditions;->mLastFilterDuration:Z

    .line 107
    return-void
.end method
