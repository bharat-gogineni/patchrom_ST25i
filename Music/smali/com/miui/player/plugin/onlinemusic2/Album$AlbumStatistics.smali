.class public Lcom/miui/player/plugin/onlinemusic2/Album$AlbumStatistics;
.super Ljava/lang/Object;
.source "Album.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/plugin/onlinemusic2/Album;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumStatistics"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mFavoriteNum:I

.field public mHot:I

.field public mIsHot:Z

.field public mIsNew:Z

.field public mIsRecommend:Z

.field public mListenNum:I

.field public mNewHot:I

.field public mRecommendNum:I

.field public mTotalListenNum:I

.field public mZhuoyueBuyURL:Ljava/lang/String;

.field public mZhuoyueFlag:I

.field public mZhuoyuePrice:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
