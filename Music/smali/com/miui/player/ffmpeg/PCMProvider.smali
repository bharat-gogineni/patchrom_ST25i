.class public interface abstract Lcom/miui/player/ffmpeg/PCMProvider;
.super Ljava/lang/Object;
.source "PCMProvider.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getBaseFramePosition()I
.end method

.method public abstract getChannels()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getMinSampleBufferSize()I
.end method

.method public abstract getSampleRate()I
.end method

.method public abstract isClosed()Z
.end method

.method public abstract open()I
.end method

.method public abstract read([B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract seek(I)I
.end method
