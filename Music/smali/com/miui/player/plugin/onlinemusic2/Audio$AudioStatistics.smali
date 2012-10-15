.class public Lcom/miui/player/plugin/onlinemusic2/Audio$AudioStatistics;
.super Ljava/lang/Object;
.source "Audio.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/plugin/onlinemusic2/Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioStatistics"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mDownloadNum:I

.field public mFavoriteNum:I

.field public mHot:I

.field public mIsGenuine:Z

.field public mIsHot:Z

.field public mIsNew:Z

.field public mListenNum:I

.field public mLyricNum:I

.field public mRank:I

.field public mRankChange:I

.field public mRecommendNum:I

.field public mTotalListenNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
