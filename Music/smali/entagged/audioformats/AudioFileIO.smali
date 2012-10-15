.class public Lentagged/audioformats/AudioFileIO;
.super Ljava/lang/Object;
.source "AudioFileIO.java"


# static fields
.field private static defaultInstance:Lentagged/audioformats/AudioFileIO;


# instance fields
.field private final modificationHandler:Lentagged/audioformats/generic/ModificationHandler;

.field private readers:Ljava/util/Hashtable;

.field private writers:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/AudioFileIO;->readers:Ljava/util/Hashtable;

    .line 164
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    .line 171
    new-instance v0, Lentagged/audioformats/generic/ModificationHandler;

    invoke-direct {v0}, Lentagged/audioformats/generic/ModificationHandler;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/AudioFileIO;->modificationHandler:Lentagged/audioformats/generic/ModificationHandler;

    .line 172
    invoke-direct {p0}, Lentagged/audioformats/AudioFileIO;->prepareReadersAndWriters()V

    .line 173
    return-void
.end method

.method public static getDefaultAudioFileIO()Lentagged/audioformats/AudioFileIO;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lentagged/audioformats/AudioFileIO;->defaultInstance:Lentagged/audioformats/AudioFileIO;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lentagged/audioformats/AudioFileIO;

    invoke-direct {v0}, Lentagged/audioformats/AudioFileIO;-><init>()V

    sput-object v0, Lentagged/audioformats/AudioFileIO;->defaultInstance:Lentagged/audioformats/AudioFileIO;

    .line 120
    :cond_0
    sget-object v0, Lentagged/audioformats/AudioFileIO;->defaultInstance:Lentagged/audioformats/AudioFileIO;

    return-object v0
.end method

.method private prepareReadersAndWriters()V
    .locals 6

    .prologue
    .line 213
    iget-object v2, p0, Lentagged/audioformats/AudioFileIO;->readers:Ljava/util/Hashtable;

    const-string v3, "mp3"

    new-instance v4, Lentagged/audioformats/mp3/Mp3FileReader;

    invoke-direct {v4}, Lentagged/audioformats/mp3/Mp3FileReader;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v2, p0, Lentagged/audioformats/AudioFileIO;->readers:Ljava/util/Hashtable;

    const-string v3, "ogg"

    new-instance v4, Lentagged/audioformats/ogg/OggFileReader;

    invoke-direct {v4}, Lentagged/audioformats/ogg/OggFileReader;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v2, p0, Lentagged/audioformats/AudioFileIO;->readers:Ljava/util/Hashtable;

    const-string v3, "flac"

    new-instance v4, Lentagged/audioformats/flac/FlacFileReader;

    invoke-direct {v4}, Lentagged/audioformats/flac/FlacFileReader;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v2, p0, Lentagged/audioformats/AudioFileIO;->readers:Ljava/util/Hashtable;

    const-string v3, "wav"

    new-instance v4, Lentagged/audioformats/wav/WavFileReader;

    invoke-direct {v4}, Lentagged/audioformats/wav/WavFileReader;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v2, p0, Lentagged/audioformats/AudioFileIO;->readers:Ljava/util/Hashtable;

    const-string v3, "mpc"

    new-instance v4, Lentagged/audioformats/mpc/MpcFileReader;

    invoke-direct {v4}, Lentagged/audioformats/mpc/MpcFileReader;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v2, p0, Lentagged/audioformats/AudioFileIO;->readers:Ljava/util/Hashtable;

    const-string v3, "mp+"

    iget-object v4, p0, Lentagged/audioformats/AudioFileIO;->readers:Ljava/util/Hashtable;

    const-string v5, "mpc"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v2, p0, Lentagged/audioformats/AudioFileIO;->readers:Ljava/util/Hashtable;

    const-string v3, "ape"

    new-instance v4, Lentagged/audioformats/ape/MonkeyFileReader;

    invoke-direct {v4}, Lentagged/audioformats/ape/MonkeyFileReader;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v2, p0, Lentagged/audioformats/AudioFileIO;->readers:Ljava/util/Hashtable;

    const-string v3, "wma"

    new-instance v4, Lentagged/audioformats/asf/AsfFileReader;

    invoke-direct {v4}, Lentagged/audioformats/asf/AsfFileReader;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v2, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    const-string v3, "mp3"

    new-instance v4, Lentagged/audioformats/mp3/Mp3FileWriter;

    invoke-direct {v4}, Lentagged/audioformats/mp3/Mp3FileWriter;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v2, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    const-string v3, "ogg"

    new-instance v4, Lentagged/audioformats/ogg/OggFileWriter;

    invoke-direct {v4}, Lentagged/audioformats/ogg/OggFileWriter;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v2, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    const-string v3, "flac"

    new-instance v4, Lentagged/audioformats/flac/FlacFileWriter;

    invoke-direct {v4}, Lentagged/audioformats/flac/FlacFileWriter;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v2, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    const-string v3, "wav"

    new-instance v4, Lentagged/audioformats/wav/WavFileWriter;

    invoke-direct {v4}, Lentagged/audioformats/wav/WavFileWriter;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v2, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    const-string v3, "mpc"

    new-instance v4, Lentagged/audioformats/mpc/MpcFileWriter;

    invoke-direct {v4}, Lentagged/audioformats/mpc/MpcFileWriter;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v2, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    const-string v3, "mp+"

    iget-object v4, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    const-string v5, "mpc"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v2, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    const-string v3, "ape"

    new-instance v4, Lentagged/audioformats/ape/MonkeyFileWriter;

    invoke-direct {v4}, Lentagged/audioformats/ape/MonkeyFileWriter;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v2, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    const-string v3, "wma"

    new-instance v4, Lentagged/audioformats/asf/AsfFileWriter;

    invoke-direct {v4}, Lentagged/audioformats/asf/AsfFileWriter;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v2, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 234
    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/generic/AudioFileWriter;

    .line 236
    .local v0, curr:Lentagged/audioformats/generic/AudioFileWriter;
    iget-object v2, p0, Lentagged/audioformats/AudioFileIO;->modificationHandler:Lentagged/audioformats/generic/ModificationHandler;

    invoke-virtual {v0, v2}, Lentagged/audioformats/generic/AudioFileWriter;->setAudioFileModificationListener(Lentagged/audioformats/generic/AudioFileModificationListener;)V

    goto :goto_0

    .line 238
    .end local v0           #curr:Lentagged/audioformats/generic/AudioFileWriter;
    :cond_0
    return-void
.end method

.method public static read(Ljava/io/File;)Lentagged/audioformats/AudioFile;
    .locals 1
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {}, Lentagged/audioformats/AudioFileIO;->getDefaultAudioFileIO()Lentagged/audioformats/AudioFileIO;

    move-result-object v0

    invoke-virtual {v0, p0}, Lentagged/audioformats/AudioFileIO;->readFile(Ljava/io/File;)Lentagged/audioformats/AudioFile;

    move-result-object v0

    return-object v0
.end method

.method public static write(Lentagged/audioformats/AudioFile;)V
    .locals 1
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Lentagged/audioformats/AudioFileIO;->getDefaultAudioFileIO()Lentagged/audioformats/AudioFileIO;

    move-result-object v0

    invoke-virtual {v0, p0}, Lentagged/audioformats/AudioFileIO;->writeFile(Lentagged/audioformats/AudioFile;)V

    .line 152
    return-void
.end method


# virtual methods
.method public readFile(Ljava/io/File;)Lentagged/audioformats/AudioFile;
    .locals 5
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-static {p1}, Lentagged/audioformats/generic/Utils;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, ext:Ljava/lang/String;
    iget-object v2, p0, Lentagged/audioformats/AudioFileIO;->readers:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 255
    .local v0, afr:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 256
    new-instance v2, Lentagged/audioformats/exceptions/CannotReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Reader associated to this extension: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_0
    check-cast v0, Lentagged/audioformats/generic/AudioFileReader;

    .end local v0           #afr:Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lentagged/audioformats/generic/AudioFileReader;->read(Ljava/io/File;)Lentagged/audioformats/AudioFile;

    move-result-object v2

    return-object v2
.end method

.method public writeFile(Lentagged/audioformats/AudioFile;)V
    .locals 5
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-static {p1}, Lentagged/audioformats/generic/Utils;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, ext:Ljava/lang/String;
    iget-object v2, p0, Lentagged/audioformats/AudioFileIO;->writers:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 288
    .local v0, afw:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 289
    new-instance v2, Lentagged/audioformats/exceptions/CannotWriteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Writer associated to this extension: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 292
    :cond_0
    check-cast v0, Lentagged/audioformats/generic/AudioFileWriter;

    .end local v0           #afw:Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lentagged/audioformats/generic/AudioFileWriter;->write(Lentagged/audioformats/AudioFile;)V

    .line 293
    return-void
.end method
