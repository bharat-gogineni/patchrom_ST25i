.class public Lcom/miui/player/plugin/onlinemusic2/Audio$AudioOutline;
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
    name = "AudioOutline"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final mId:Ljava/lang/String;

.field public final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "title"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioOutline;->mId:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioOutline;->mTitle:Ljava/lang/String;

    .line 24
    return-void
.end method
