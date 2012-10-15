.class public Lcom/miui/player/plugin/onlinemusic2/Channel$ChannelDetail;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/plugin/onlinemusic2/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelDetail"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mArtistId:Ljava/lang/String;

.field public mAudioCount:I

.field public mURLAvatar:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
