.class Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoPauseState"
.end annotation


# static fields
.field public static TYPE_AUDIO_FOCUS:I

.field public static TYPE_CALL_STATE:I

.field private static TYPE_MASK:I


# instance fields
.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2869
    const/4 v0, 0x1

    sput v0, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->TYPE_AUDIO_FOCUS:I

    .line 2870
    const/4 v0, 0x2

    sput v0, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->TYPE_CALL_STATE:I

    .line 2871
    const/4 v0, 0x3

    sput v0, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->TYPE_MASK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2873
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->mState:I

    .line 2876
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 2879
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->mState:I

    sget v1, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->TYPE_MASK:I

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->mState:I

    .line 2880
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 2891
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->mState:I

    .line 2892
    return-void
.end method

.method public isEffect()Z
    .locals 1

    .prologue
    .line 2895
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(I)Z
    .locals 3
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 2883
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->mState:I

    if-eqz v1, :cond_0

    .line 2884
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->mState:I

    sget v2, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->TYPE_MASK:I

    and-int/2addr v2, p1

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->mState:I

    .line 2885
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->mState:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2887
    :cond_0
    return v0
.end method
