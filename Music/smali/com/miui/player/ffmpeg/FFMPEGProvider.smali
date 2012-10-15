.class public Lcom/miui/player/ffmpeg/FFMPEGProvider;
.super Ljava/lang/Object;
.source "FFMPEGProvider.java"

# interfaces
.implements Lcom/miui/player/ffmpeg/PCMProvider;


# static fields
.field private static final NATIVE_LIBS:[Ljava/lang/String;

.field private static final sNativeInitSuccess:Z


# instance fields
.field private final mName:Ljava/lang/String;

.field private mNativeContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 18
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "ffmpeg_xm"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "ffplayer_jni"

    aput-object v8, v6, v7

    sput-object v6, Lcom/miui/player/ffmpeg/FFMPEGProvider;->NATIVE_LIBS:[Ljava/lang/String;

    .line 29
    const/4 v3, 0x0

    .line 31
    .local v3, initSuccess:Z
    :try_start_0
    sget-object v0, Lcom/miui/player/ffmpeg/FFMPEGProvider;->NATIVE_LIBS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 32
    .local v5, lib:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    .end local v5           #lib:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/miui/player/ffmpeg/FFMPEGProvider;->native_init()V

    .line 36
    const/4 v3, 0x1

    .line 37
    const-string v6, "com.miui.player.ffmpeg.FFMPEGPlayer"

    const-string v7, "All native libs load success!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :goto_1
    sput-boolean v3, Lcom/miui/player/ffmpeg/FFMPEGProvider;->sNativeInitSuccess:Z

    .line 43
    return-void

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, e:Ljava/lang/UnsatisfiedLinkError;
    const/4 v3, 0x0

    .line 40
    const-string v6, "com.miui.player.ffmpeg.FFMPEGPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Native lib load failed with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .parameter "file"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/player/ffmpeg/FFMPEGProvider;->native_setup(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Setup FFMPEGProvider failed!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGProvider;->mName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public static isNativeInitSuccess()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/miui/player/ffmpeg/FFMPEGProvider;->sNativeInitSuccess:Z

    return v0
.end method

.method private native native_finalize()V
.end method

.method private static native native_init()V
.end method

.method private native native_setup(Ljava/lang/String;)I
.end method


# virtual methods
.method public native close()V
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/miui/player/ffmpeg/FFMPEGProvider;->release()V

    .line 96
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 97
    return-void
.end method

.method public native getBaseFramePosition()I
.end method

.method public native getChannels()I
.end method

.method public native getDuration()I
.end method

.method public native getMinSampleBufferSize()I
.end method

.method public native getSampleRate()I
.end method

.method public native isClosed()Z
.end method

.method public native open()I
.end method

.method public read([B)I
    .locals 2
    .parameter "pcmData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/player/ffmpeg/FFMPEGProvider;->read([BII)I

    move-result v0

    return v0
.end method

.method public native read([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public release()V
    .locals 1

    .prologue
    .line 83
    :try_start_0
    invoke-direct {p0}, Lcom/miui/player/ffmpeg/FFMPEGProvider;->native_finalize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public native seek(I)I
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/ffmpeg/FFMPEGProvider;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
