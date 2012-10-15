.class public Lcom/miui/player/plugin/onlinelyric/LyricContentFactory;
.super Ljava/lang/Object;
.source "LyricContentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/plugin/onlinelyric/LyricContentFactory$StringLyric;,
        Lcom/miui/player/plugin/onlinelyric/LyricContentFactory$ByteArrayLyric;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/miui/player/plugin/onlinelyric/LyricContent;
    .locals 1
    .parameter "str"

    .prologue
    .line 15
    if-eqz p0, :cond_0

    new-instance v0, Lcom/miui/player/plugin/onlinelyric/LyricContentFactory$StringLyric;

    invoke-direct {v0, p0}, Lcom/miui/player/plugin/onlinelyric/LyricContentFactory$StringLyric;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create([B)Lcom/miui/player/plugin/onlinelyric/LyricContent;
    .locals 1
    .parameter "byteArray"

    .prologue
    .line 11
    if-eqz p0, :cond_0

    new-instance v0, Lcom/miui/player/plugin/onlinelyric/LyricContentFactory$ByteArrayLyric;

    invoke-direct {v0, p0}, Lcom/miui/player/plugin/onlinelyric/LyricContentFactory$ByteArrayLyric;-><init>([B)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
