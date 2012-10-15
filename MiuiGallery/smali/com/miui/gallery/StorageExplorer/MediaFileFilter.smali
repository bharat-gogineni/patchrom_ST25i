.class public Lcom/miui/gallery/StorageExplorer/MediaFileFilter;
.super Ljava/lang/Object;
.source "MediaFileFilter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private mFilterFlags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v0, 0x26

    iput v0, p0, Lcom/miui/gallery/StorageExplorer/MediaFileFilter;->mFilterFlags:I

    return-void
.end method

.method public static getFileAttributes(Ljava/io/File;)I
    .locals 7
    .parameter "file"

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/io/File;->isHidden()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const/4 v2, 0x2

    .line 49
    .local v2, result:I
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 50
    or-int/lit8 v2, v2, 0x1

    .line 52
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/data/AlbumCache;->getAlbum(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    .line 53
    .local v0, dbAlbum:Lcom/miui/gallery/data/DBAlbum;
    new-instance v3, Ljava/io/File;

    const-string v4, ".nomedia"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBAlbum;->getIsHidden()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 55
    :cond_1
    or-int/lit8 v2, v2, 0x2

    .line 76
    .end local v0           #dbAlbum:Lcom/miui/gallery/data/DBAlbum;
    :cond_2
    :goto_1
    return v2

    .line 46
    .end local v2           #result:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 60
    .restart local v2       #result:I
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, mimeType:Ljava/lang/String;
    const-string v3, "image"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 62
    or-int/lit8 v2, v2, 0x8

    .line 71
    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getFilterMinSize()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2

    .line 72
    or-int/lit8 v2, v2, 0x20

    goto :goto_1

    .line 64
    :cond_5
    const-string v3, "video"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 65
    or-int/lit8 v2, v2, 0x10

    goto :goto_2

    .line 68
    :cond_6
    or-int/lit8 v2, v2, 0x4

    goto :goto_2
.end method


# virtual methods
.method public accept(I)Z
    .locals 1
    .parameter "attributes"

    .prologue
    .line 42
    iget v0, p0, Lcom/miui/gallery/StorageExplorer/MediaFileFilter;->mFilterFlags:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4
    .parameter "dir"
    .parameter "filename"

    .prologue
    .line 36
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Lcom/miui/gallery/StorageExplorer/MediaFileFilter;->getFileAttributes(Ljava/io/File;)I

    move-result v0

    .line 38
    .local v0, attributes:I
    invoke-virtual {p0, v0}, Lcom/miui/gallery/StorageExplorer/MediaFileFilter;->accept(I)Z

    move-result v2

    return v2
.end method

.method public getFilterFlags()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/miui/gallery/StorageExplorer/MediaFileFilter;->mFilterFlags:I

    return v0
.end method

.method public setFilterFlags(I)V
    .locals 1
    .parameter "filterFlags"

    .prologue
    .line 27
    and-int/lit8 v0, p1, 0x3f

    iput v0, p0, Lcom/miui/gallery/StorageExplorer/MediaFileFilter;->mFilterFlags:I

    .line 28
    return-void
.end method
