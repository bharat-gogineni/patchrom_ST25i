.class public Lcom/miui/player/meta/MetaManager;
.super Ljava/lang/Object;
.source "MetaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/meta/MetaManager$MetaInfo;
    }
.end annotation


# static fields
.field private static final META_PATH_FORMAT:Ljava/lang/String;

.field private static final META_TYPE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/player/meta/MetaManager$MetaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIUI_MP3_DOWNLOAD_PATH:Ljava/lang/String;

.field private static sUnknownAlbumName:Ljava/lang/CharSequence;

.field private static sUnknownArtistName:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 35
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lcom/miui/player/meta/MetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "music"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lyric"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, META_RELATE_PATH_LYRIC:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "music"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "album"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, META_RELATE_PATH_ALBUM:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "music"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mp3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, META_RELATE_PATH_MP3:Ljava/lang/String;
    sget-object v3, Lcom/miui/player/meta/MetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    const-string v4, "lyric"

    new-instance v5, Lcom/miui/player/meta/MetaManager$MetaInfo;

    const-string v6, "lrc"

    invoke-direct {v5, v1, v6}, Lcom/miui/player/meta/MetaManager$MetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v3, Lcom/miui/player/meta/MetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    const-string v4, "album"

    new-instance v5, Lcom/miui/player/meta/MetaManager$MetaInfo;

    const-string v6, "jpg"

    invoke-direct {v5, v0, v6}, Lcom/miui/player/meta/MetaManager$MetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v3, Lcom/miui/player/meta/MetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    const-string v4, "mp3"

    new-instance v5, Lcom/miui/player/meta/MetaManager$MetaInfo;

    const-string v6, "mp3"

    invoke-direct {v5, v2, v6}, Lcom/miui/player/meta/MetaManager$MetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v3, Lcom/miui/player/meta/MetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    const-string v4, "mp3"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/player/meta/MetaManager$MetaInfo;

    iget-object v3, v3, Lcom/miui/player/meta/MetaManager$MetaInfo;->mAbsoluteDir:Ljava/lang/String;

    sput-object v3, Lcom/miui/player/meta/MetaManager;->MIUI_MP3_DOWNLOAD_PATH:Ljava/lang/String;

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%s_%s.%s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/miui/player/meta/MetaManager;->META_PATH_FORMAT:Ljava/lang/String;

    .line 266
    sput-object v7, Lcom/miui/player/meta/MetaManager;->sUnknownAlbumName:Ljava/lang/CharSequence;

    .line 267
    sput-object v7, Lcom/miui/player/meta/MetaManager;->sUnknownArtistName:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private static addNoMediaFile(Ljava/lang/String;)V
    .locals 2
    .parameter "dir"

    .prologue
    .line 70
    new-instance v0, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static deleteMetaFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "album"
    .parameter "artist"

    .prologue
    .line 200
    const-string v2, "lyric"

    invoke-static {p0, p2, v2}, Lcom/miui/player/meta/MetaManager;->getMetaFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 201
    .local v1, lyric:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 205
    :cond_0
    const-string v2, "album"

    invoke-static {p1, p2, v2}, Lcom/miui/player/meta/MetaManager;->getMetaFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 206
    .local v0, albumFile:Ljava/io/File;
    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 210
    :cond_1
    return-void
.end method

.method private static formatFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 130
    if-nez p0, :cond_0

    .line 131
    const-string v0, ""

    .line 134
    :goto_0
    return-object v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 134
    const-string v0, "+"

    invoke-static {p0, v0}, Lcom/xiaomi/common/file/FileNameUtils;->regulateFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAlbumFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .parameter "title"
    .parameter "artist"
    .parameter "songPath"

    .prologue
    .line 221
    const-string v5, "album"

    invoke-static {p0, p1, v5}, Lcom/miui/player/meta/MetaManager;->getMetaFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 222
    .local v0, albumFile:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 237
    .end local v0           #albumFile:Ljava/io/File;
    :goto_0
    return-object v0

    .line 225
    .restart local v0       #albumFile:Ljava/io/File;
    :cond_0
    if-eqz p2, :cond_1

    .line 226
    sget-object v5, Lcom/miui/player/meta/MetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    const-string v6, "album"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/meta/MetaManager$MetaInfo;

    .line 227
    .local v2, info:Lcom/miui/player/meta/MetaManager$MetaInfo;
    iget-object v5, v2, Lcom/miui/player/meta/MetaManager$MetaInfo;->mExtendName:Ljava/lang/String;

    invoke-static {p2, v5}, Lcom/miui/player/meta/MetaManager;->replaceExtName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, localAlbumPath:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 229
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v3, localAlbumFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 231
    const-string v5, "album"

    invoke-static {p0, p1, v5}, Lcom/miui/player/meta/MetaManager;->getMetaFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, destFileName:Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/xiaomi/common/file/FileOperations;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 233
    new-instance v0, Ljava/io/File;

    .end local v0           #albumFile:Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    .end local v1           #destFileName:Ljava/lang/String;
    .end local v2           #info:Lcom/miui/player/meta/MetaManager$MetaInfo;
    .end local v3           #localAlbumFile:Ljava/io/File;
    .end local v4           #localAlbumPath:Ljava/lang/String;
    .restart local v0       #albumFile:Ljava/io/File;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAllSortedDownloadedMP3Names()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    const-string v1, "mp3"

    invoke-static {v1}, Lcom/miui/player/meta/MetaManager;->getMetaDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, musicDir:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 310
    const/4 v1, 0x0

    .line 313
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/xiaomi/common/file/FileOperations;->getSortedFileNameArr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getAppointFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "dirPath"
    .parameter "name"

    .prologue
    .line 144
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "src"

    .prologue
    .line 270
    invoke-static {p1}, Lcom/miui/player/meta/MetaManager;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    sget-object v0, Lcom/miui/player/meta/MetaManager;->sUnknownAlbumName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 272
    sget-object p1, Lcom/miui/player/meta/MetaManager;->sUnknownAlbumName:Ljava/lang/CharSequence;

    .line 278
    :cond_0
    :goto_0
    return-object p1

    .line 274
    :cond_1
    const v0, 0x7f09005d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/miui/player/meta/MetaManager;->sUnknownAlbumName:Ljava/lang/CharSequence;

    .line 275
    sget-object p1, Lcom/miui/player/meta/MetaManager;->sUnknownAlbumName:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public static getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "src"

    .prologue
    .line 282
    invoke-static {p1}, Lcom/miui/player/meta/MetaManager;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    sget-object v0, Lcom/miui/player/meta/MetaManager;->sUnknownArtistName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 284
    sget-object p1, Lcom/miui/player/meta/MetaManager;->sUnknownArtistName:Ljava/lang/CharSequence;

    .line 291
    :cond_0
    :goto_0
    return-object p1

    .line 286
    :cond_1
    const v0, 0x7f09005c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/miui/player/meta/MetaManager;->sUnknownArtistName:Ljava/lang/CharSequence;

    .line 287
    sget-object p1, Lcom/miui/player/meta/MetaManager;->sUnknownArtistName:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public static getLyricFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .parameter "title"
    .parameter "artist"
    .parameter "songPath"

    .prologue
    .line 251
    if-eqz p2, :cond_0

    .line 252
    sget-object v3, Lcom/miui/player/meta/MetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    const-string v4, "lyric"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/meta/MetaManager$MetaInfo;

    .line 253
    .local v1, info:Lcom/miui/player/meta/MetaManager$MetaInfo;
    iget-object v3, v1, Lcom/miui/player/meta/MetaManager$MetaInfo;->mExtendName:Ljava/lang/String;

    invoke-static {p2, v3}, Lcom/miui/player/meta/MetaManager;->replaceExtName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, localLyricPath:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 255
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, autoLyricFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    .end local v0           #autoLyricFile:Ljava/io/File;
    .end local v1           #info:Lcom/miui/player/meta/MetaManager$MetaInfo;
    .end local v2           #localLyricPath:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const-string v3, "lyric"

    invoke-static {p0, p1, v3}, Lcom/miui/player/meta/MetaManager;->getMetaFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMetaDir(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "metaType"

    .prologue
    .line 189
    sget-object v1, Lcom/miui/player/meta/MetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/meta/MetaManager$MetaInfo;

    iget-object v0, v1, Lcom/miui/player/meta/MetaManager$MetaInfo;->mAbsoluteDir:Ljava/lang/String;

    .line 190
    .local v0, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getMetaFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "name"
    .parameter "metaType"

    .prologue
    .line 155
    invoke-static {p1}, Lcom/miui/player/meta/MetaManager;->getMetaDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 156
    .local v0, dir:Ljava/io/File;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMetaFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "first"
    .parameter "second"
    .parameter "metaType"

    .prologue
    .line 178
    invoke-static {p0, p1, p2}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMetaFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "first"
    .parameter "second"
    .parameter "metaType"

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v1

    .line 101
    :cond_1
    sget-object v2, Lcom/miui/player/meta/MetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/meta/MetaManager$MetaInfo;

    .line 102
    .local v0, info:Lcom/miui/player/meta/MetaManager$MetaInfo;
    if-eqz v0, :cond_0

    .line 105
    const-string v1, "%s_%s.%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/miui/player/meta/MetaManager;->formatFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/miui/player/meta/MetaManager;->formatFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, v0, Lcom/miui/player/meta/MetaManager$MetaInfo;->mExtendName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getMetaFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .parameter "metaType"

    .prologue
    .line 166
    invoke-static {p1}, Lcom/miui/player/meta/MetaManager;->getMetaDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 167
    .local v0, dir:Ljava/io/File;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMetaFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "first"
    .parameter "second"
    .parameter "metaType"

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-object v1

    .line 120
    :cond_1
    sget-object v2, Lcom/miui/player/meta/MetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/meta/MetaManager$MetaInfo;

    .line 121
    .local v0, info:Lcom/miui/player/meta/MetaManager$MetaInfo;
    if-eqz v0, :cond_0

    .line 125
    sget-object v1, Lcom/miui/player/meta/MetaManager;->META_PATH_FORMAT:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/miui/player/meta/MetaManager$MetaInfo;->mAbsoluteDir:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/miui/player/meta/MetaManager;->formatFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Lcom/miui/player/meta/MetaManager;->formatFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, v0, Lcom/miui/player/meta/MetaManager$MetaInfo;->mExtendName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getRawName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "src"

    .prologue
    .line 295
    invoke-static {p0}, Lcom/miui/player/meta/MetaManager;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    .end local p0
    :cond_0
    return-object p0
.end method

.method public static isUnknowName(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "src"

    .prologue
    .line 299
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "<unknown>"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeDirIfNotExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "metaType"

    .prologue
    .line 49
    sget-object v4, Lcom/miui/player/meta/MetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/meta/MetaManager$MetaInfo;

    .line 50
    .local v2, info:Lcom/miui/player/meta/MetaManager$MetaInfo;
    if-nez v2, :cond_1

    .line 51
    const/4 v3, 0x0

    .line 66
    :cond_0
    :goto_0
    return v3

    .line 53
    :cond_1
    const/4 v3, 0x0

    .line 54
    .local v3, ret:Z
    iget-object v0, v2, Lcom/miui/player/meta/MetaManager$MetaInfo;->mAbsoluteDir:Ljava/lang/String;

    .line 55
    .local v0, dir:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 57
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 62
    :goto_1
    const-string v4, "lyric"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "album"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    :cond_2
    invoke-static {v0}, Lcom/miui/player/meta/MetaManager;->addNoMediaFile(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    goto :goto_1
.end method

.method private static replaceExtName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "src"
    .parameter "extName"

    .prologue
    .line 241
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 242
    .local v0, lastDot:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 243
    :cond_0
    const/4 v1, 0x0

    .line 246
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
