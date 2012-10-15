.class Lcom/miui/gallery/data/LocalAlbumSqlSentenceGetter;
.super Lcom/miui/gallery/data/SqlSentenceGetter;
.source "LocalAlbum.java"


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .parameter "isImage"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/miui/gallery/data/SqlSentenceGetter;-><init>()V

    .line 44
    if-eqz p1, :cond_0

    .line 45
    const-string v0, "bucket_id = ? "

    iput-object v0, p0, Lcom/miui/gallery/data/LocalAlbumSqlSentenceGetter;->mWhereClauseAll:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/gallery/data/LocalAlbumSqlSentenceGetter;->mWhereClauseAll:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/LocalAlbumSqlSentenceGetter;->mWhereClauseToShow:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/miui/gallery/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/data/LocalAlbumSqlSentenceGetter;->mProjection:[Ljava/lang/String;

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string v0, "bucket_id = ? "

    iput-object v0, p0, Lcom/miui/gallery/data/LocalAlbumSqlSentenceGetter;->mWhereClauseAll:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/gallery/data/LocalAlbumSqlSentenceGetter;->mWhereClauseAll:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/LocalAlbumSqlSentenceGetter;->mWhereClauseToShow:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/miui/gallery/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/data/LocalAlbumSqlSentenceGetter;->mProjection:[Ljava/lang/String;

    goto :goto_0
.end method
