.class public Lcom/miui/player/plugin/onlinemusic2/Channel;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/plugin/onlinemusic2/Channel$ChannelDetail;,
        Lcom/miui/player/plugin/onlinemusic2/Channel$ChannelOutline;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

.field public mDetail:Lcom/miui/player/plugin/onlinemusic2/Channel$ChannelDetail;

.field public final mOutline:Lcom/miui/player/plugin/onlinemusic2/Channel$ChannelOutline;


# direct methods
.method public constructor <init>(Lcom/miui/player/plugin/onlinemusic2/Channel$ChannelOutline;)V
    .locals 0
    .parameter "outline"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/miui/player/plugin/onlinemusic2/Channel;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Channel$ChannelOutline;

    .line 37
    return-void
.end method
