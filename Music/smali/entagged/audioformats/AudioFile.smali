.class public Lentagged/audioformats/AudioFile;
.super Ljava/io/File;
.source "AudioFile.java"


# instance fields
.field private id:I

.field private info:Lentagged/audioformats/EncodingInfo;

.field private tag:Lentagged/audioformats/Tag;


# direct methods
.method public constructor <init>(Ljava/io/File;Lentagged/audioformats/EncodingInfo;Lentagged/audioformats/Tag;)V
    .locals 1
    .parameter "f"
    .parameter "info"
    .parameter "tag"

    .prologue
    .line 66
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    iput-object p2, p0, Lentagged/audioformats/AudioFile;->info:Lentagged/audioformats/EncodingInfo;

    .line 68
    iput-object p3, p0, Lentagged/audioformats/AudioFile;->tag:Lentagged/audioformats/Tag;

    .line 69
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {p0}, Lentagged/audioformats/AudioFileIO;->write(Lentagged/audioformats/AudioFile;)V

    .line 79
    return-void
.end method

.method public getBitrate()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lentagged/audioformats/AudioFile;->info:Lentagged/audioformats/EncodingInfo;

    invoke-virtual {v0}, Lentagged/audioformats/EncodingInfo;->getBitrate()I

    move-result v0

    return v0
.end method

.method public getTag()Lentagged/audioformats/Tag;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lentagged/audioformats/AudioFile;->tag:Lentagged/audioformats/Tag;

    if-nez v0, :cond_0

    new-instance v0, Lentagged/audioformats/generic/GenericTag;

    invoke-direct {v0}, Lentagged/audioformats/generic/GenericTag;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lentagged/audioformats/AudioFile;->tag:Lentagged/audioformats/Tag;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioFile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lentagged/audioformats/AudioFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  --------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lentagged/audioformats/AudioFile;->info:Lentagged/audioformats/EncodingInfo;

    invoke-virtual {v1}, Lentagged/audioformats/EncodingInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lentagged/audioformats/AudioFile;->tag:Lentagged/audioformats/Tag;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n-------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lentagged/audioformats/AudioFile;->tag:Lentagged/audioformats/Tag;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
