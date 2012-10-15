.class Lcom/miui/player/ui/OperationDialog$EqualizerBuilder;
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
    name = "EqualizerBuilder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "data"

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Lcom/miui/player/ui/OperationDialog$EqualizerBuilder;->mContext:Landroid/content/Context;

    .line 262
    iput-object p2, p0, Lcom/miui/player/ui/OperationDialog$EqualizerBuilder;->mData:Ljava/lang/String;

    .line 263
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "name"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/miui/player/ui/OperationDialog$EqualizerBuilder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/ui/OperationDialog$EqualizerBuilder;->mData:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/miui/player/provider/PlayerProviderUtils;->createEqualizerConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getConfirm(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "input"

    .prologue
    const v3, 0x7f0900cf

    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, ret:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/miui/player/ui/OperationDialog$EqualizerBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/OperationDialog$EqualizerBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/player/provider/PlayerProviderUtils;->idForEqualizer(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/miui/player/ui/OperationDialog$EqualizerBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f0900d0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/OperationDialog$EqualizerBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/miui/player/ui/OperationDialog$EqualizerBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionName()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 287
    iget-object v1, p0, Lcom/miui/player/ui/OperationDialog$EqualizerBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 288
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "name"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 293
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 294
    .local v7, suggestedname:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 295
    iget-object v1, p0, Lcom/miui/player/ui/OperationDialog$EqualizerBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f0900a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 296
    .local v8, template:Ljava/lang/String;
    invoke-static {v8, v6, v9}, Lcom/miui/player/ui/OperationDialog;->getSuggestedName(Ljava/lang/String;Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    .line 297
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 300
    .end local v8           #template:Ljava/lang/String;
    :cond_0
    return-object v7
.end method

.method public isConfirmable(Ljava/lang/String;)Z
    .locals 1
    .parameter "input"

    .prologue
    .line 309
    const/4 v0, 0x1

    return v0
.end method
