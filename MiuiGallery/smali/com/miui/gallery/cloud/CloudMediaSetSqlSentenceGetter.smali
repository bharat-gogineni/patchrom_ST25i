.class Lcom/miui/gallery/cloud/CloudMediaSetSqlSentenceGetter;
.super Lcom/miui/gallery/data/SqlSentenceGetter;
.source "CloudMediaSet.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/miui/gallery/data/SqlSentenceGetter;-><init>()V

    .line 27
    const-string v0, "%s = ? AND %s != ? AND %s = ? AND %s = ?"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "groupId"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "serverType"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "localFlag"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "serverStatus"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaSetSqlSentenceGetter;->mWhereClauseAll:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudMediaSetSqlSentenceGetter;->mWhereClauseAll:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaSetSqlSentenceGetter;->mWhereClauseToShow:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/miui/gallery/cloud/CloudMediaItem;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaSetSqlSentenceGetter;->mProjection:[Ljava/lang/String;

    .line 41
    return-void
.end method
