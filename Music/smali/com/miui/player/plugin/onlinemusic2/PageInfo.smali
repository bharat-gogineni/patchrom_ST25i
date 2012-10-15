.class public Lcom/miui/player/plugin/onlinemusic2/PageInfo;
.super Ljava/lang/Object;
.source "PageInfo.java"


# instance fields
.field public final mNumPerPage:I

.field public final mTotal:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "total"
    .parameter "numPerPage"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/miui/player/plugin/onlinemusic2/PageInfo;->mTotal:I

    .line 9
    iput p2, p0, Lcom/miui/player/plugin/onlinemusic2/PageInfo;->mNumPerPage:I

    .line 10
    return-void
.end method
