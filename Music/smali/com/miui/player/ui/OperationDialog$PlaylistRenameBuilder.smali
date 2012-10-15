.class Lcom/miui/player/ui/OperationDialog$PlaylistRenameBuilder;
.super Lcom/miui/player/ui/OperationDialog$RenameBuilder;
.source "OperationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/OperationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaylistRenameBuilder"
.end annotation


# instance fields
.field private final mRenameId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/util/Set;)V
    .locals 0
    .parameter "context"
    .parameter "renameId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p4, existNameSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/player/ui/OperationDialog$RenameBuilder;-><init>(Landroid/content/Context;JLjava/util/Set;)V

    .line 166
    iput-wide p2, p0, Lcom/miui/player/ui/OperationDialog$PlaylistRenameBuilder;->mRenameId:J

    .line 167
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)Landroid/net/Uri;
    .locals 9
    .parameter "name"

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 176
    iget-object v3, p0, Lcom/miui/player/ui/OperationDialog$PlaylistRenameBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 177
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 178
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object v3, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    new-array v5, v5, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/miui/player/ui/OperationDialog$PlaylistRenameBuilder;->mRenameId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 184
    const v0, 0x7f090052

    .line 185
    .local v0, messageId:I
    iget-object v3, p0, Lcom/miui/player/ui/OperationDialog$PlaylistRenameBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 186
    const/4 v3, 0x0

    return-object v3
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 4

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miui/player/ui/OperationDialog$PlaylistRenameBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/player/ui/OperationDialog$PlaylistRenameBuilder;->mOrignalName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/miui/player/ui/UIHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
