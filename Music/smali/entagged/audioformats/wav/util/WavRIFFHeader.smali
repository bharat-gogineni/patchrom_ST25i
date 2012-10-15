.class public Lentagged/audioformats/wav/util/WavRIFFHeader;
.super Ljava/lang/Object;
.source "WavRIFFHeader.java"


# instance fields
.field private isValid:Z


# direct methods
.method public constructor <init>([B)V
    .locals 4
    .parameter "b"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v2, p0, Lentagged/audioformats/wav/util/WavRIFFHeader;->isValid:Z

    .line 27
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 29
    .local v0, RIFF:Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x8

    invoke-direct {v1, p1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 31
    .local v1, WAVE:Ljava/lang/String;
    const-string v2, "RIFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WAVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    const/4 v2, 0x1

    iput-boolean v2, p0, Lentagged/audioformats/wav/util/WavRIFFHeader;->isValid:Z

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lentagged/audioformats/wav/util/WavRIFFHeader;->isValid:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    const-string v0, "RIFF-WAVE Header:\n"

    .line 43
    .local v0, out:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Is valid?: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lentagged/audioformats/wav/util/WavRIFFHeader;->isValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    return-object v0
.end method
