.class public Lcom/miui/player/plugin/onlinemusic2/Channel$ChannelOutline;
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
    name = "ChannelOutline"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final mId:Ljava/lang/String;

.field public final mTitle:Ljava/lang/String;

.field public mURLThumb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "title"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/miui/player/plugin/onlinemusic2/Channel$ChannelOutline;->mId:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/miui/player/plugin/onlinemusic2/Channel$ChannelOutline;->mTitle:Ljava/lang/String;

    .line 20
    return-void
.end method
