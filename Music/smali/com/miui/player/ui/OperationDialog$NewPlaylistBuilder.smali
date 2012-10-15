.class Lcom/miui/player/ui/OperationDialog$NewPlaylistBuilder;
.super Ljava/lang/Object;
.source "OperationDialog.java"

# interfaces
.implements Lcom/miui/player/ui/OperationDialog$DialogBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/OperationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NewPlaylistBuilder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/miui/player/ui/OperationDialog$NewPlaylistBuilder;->mContext:Landroid/content/Context;

    .line 195
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "name"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/miui/player/ui/OperationDialog$NewPlaylistBuilder;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/miui/player/provider/PlaylistHelper;->createPlaylist(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getConfirm(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "input"

    .prologue
    const v4, 0x7f0900cf

    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, ret:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 207
    iget-object v2, p0, Lcom/miui/player/ui/OperationDialog$NewPlaylistBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    :goto_0
    return-object v1

    .line 209
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 210
    iget-object v2, p0, Lcom/miui/player/ui/OperationDialog$NewPlaylistBuilder;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/miui/player/provider/PlaylistHelper;->queryPlaylistId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 212
    .local v0, id:I
    if-ltz v0, :cond_1

    .line 213
    iget-object v2, p0, Lcom/miui/player/ui/OperationDialog$NewPlaylistBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f0900d0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/miui/player/ui/OperationDialog$NewPlaylistBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/miui/player/ui/OperationDialog$NewPlaylistBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f0900ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionName()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 224
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v2, v3

    .line 227
    .local v2, cols:[Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/player/ui/OperationDialog$NewPlaylistBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 228
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v9, "name != \'\' AND list_type=0"

    .line 231
    .local v9, whereclause:Ljava/lang/String;
    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    const-string v3, "name != \'\' AND list_type=0"

    const/4 v4, 0x0

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 234
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 235
    .local v7, suggestedname:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/ui/OperationDialog$NewPlaylistBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f090067

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 238
    .local v8, template:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v8, v6, v1}, Lcom/miui/player/ui/OperationDialog;->getSuggestedName(Ljava/lang/String;Landroid/database/Cursor;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 240
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 244
    .end local v8           #template:Ljava/lang/String;
    :cond_0
    return-object v7

    .line 240
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public isConfirmable(Ljava/lang/String;)Z
    .locals 1
    .parameter "input"

    .prologue
    .line 253
    const/4 v0, 0x1

    return v0
.end method
