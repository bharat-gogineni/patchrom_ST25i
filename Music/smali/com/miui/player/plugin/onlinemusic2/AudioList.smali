.class public Lcom/miui/player/plugin/onlinemusic2/AudioList;
.super Lcom/miui/player/plugin/onlinemusic2/MetaList;
.source "AudioList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/player/plugin/onlinemusic2/MetaList",
        "<",
        "Lcom/miui/player/plugin/onlinemusic2/Audio;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mLink:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, content:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio;>;"
    invoke-direct {p0, p1}, Lcom/miui/player/plugin/onlinemusic2/MetaList;-><init>(Ljava/util/List;)V

    .line 15
    return-void
.end method
