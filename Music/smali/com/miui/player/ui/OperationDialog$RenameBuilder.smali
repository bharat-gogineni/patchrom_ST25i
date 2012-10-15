.class abstract Lcom/miui/player/ui/OperationDialog$RenameBuilder;
.super Ljava/lang/Object;
.source "OperationDialog.java"

# interfaces
.implements Lcom/miui/player/ui/OperationDialog$DialogBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/OperationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "RenameBuilder"
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mExistNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mOrignalName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/util/Set;)V
    .locals 1
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
    .line 130
    .local p4, existNameSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/miui/player/ui/OperationDialog$RenameBuilder;->mContext:Landroid/content/Context;

    .line 132
    invoke-static {p1, p2, p3}, Lcom/miui/player/provider/PlaylistHelper;->queryPlaylistName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/OperationDialog$RenameBuilder;->mOrignalName:Ljava/lang/String;

    .line 133
    iput-object p4, p0, Lcom/miui/player/ui/OperationDialog$RenameBuilder;->mExistNameSet:Ljava/util/Set;

    .line 134
    return-void
.end method


# virtual methods
.method public getConfirm(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "input"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/player/ui/OperationDialog$RenameBuilder;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/player/ui/OperationDialog$RenameBuilder;->mOrignalName:Ljava/lang/String;

    return-object v0
.end method

.method public isConfirmable(Ljava/lang/String;)Z
    .locals 3
    .parameter "input"

    .prologue
    const/4 v1, 0x1

    .line 148
    iget-object v0, p0, Lcom/miui/player/ui/OperationDialog$RenameBuilder;->mOrignalName:Ljava/lang/String;

    .line 149
    .local v0, name:Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v1

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/miui/player/ui/OperationDialog$RenameBuilder;->mExistNameSet:Ljava/util/Set;

    if-eqz v2, :cond_0

    .line 153
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/miui/player/ui/OperationDialog$RenameBuilder;->mExistNameSet:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method
