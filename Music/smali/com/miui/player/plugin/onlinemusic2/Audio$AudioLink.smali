.class public Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;
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
    name = "AudioLink"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final mBitrate:I

.field public mDurationInSec:J

.field public mExtension:Ljava/lang/String;

.field public mFileId:Ljava/lang/String;

.field public mSizeInByte:J

.field public final mURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "url"
    .parameter "bitrate"

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;->mURL:Ljava/lang/String;

    .line 122
    iput p2, p0, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;->mBitrate:I

    .line 123
    return-void
.end method
