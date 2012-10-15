.class public abstract Lcom/miui/player/ui/menu/BaseMenuManager;
.super Ljava/lang/Object;
.source "BaseMenuManager.java"

# interfaces
.implements Lcom/miui/player/ui/menu/common/MenuManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/miui/player/ui/menu/common/MenuManager",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private final mContext:Landroid/content/Context;

.field private mSelected:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mSelectionMsgId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "msgId"

    .prologue
    .line 22
    .local p0, this:Lcom/miui/player/ui/menu/BaseMenuManager;,"Lcom/miui/player/ui/menu/BaseMenuManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/miui/player/ui/menu/BaseMenuManager;->mContext:Landroid/content/Context;

    .line 24
    iput p2, p0, Lcom/miui/player/ui/menu/BaseMenuManager;->mSelectionMsgId:I

    .line 25
    return-void
.end method


# virtual methods
.method protected abstract getContextInfo()Lcom/miui/player/ui/menu/common/MenuContextInfo;
.end method

.method protected abstract getKeyFromItem(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method protected getLastSelected()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, this:Lcom/miui/player/ui/menu/BaseMenuManager;,"Lcom/miui/player/ui/menu/BaseMenuManager<TT;>;"
    iget-object v0, p0, Lcom/miui/player/ui/menu/BaseMenuManager;->mSelected:Ljava/util/Set;

    return-object v0
.end method

.method public final getSelectionMsg(I)Ljava/lang/CharSequence;
    .locals 5
    .parameter "size"

    .prologue
    .line 46
    .local p0, this:Lcom/miui/player/ui/menu/BaseMenuManager;,"Lcom/miui/player/ui/menu/BaseMenuManager<TT;>;"
    iget-object v0, p0, Lcom/miui/player/ui/menu/BaseMenuManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/miui/player/ui/menu/BaseMenuManager;->mSelectionMsgId:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleActionItem(Landroid/view/MenuItem;Ljava/util/Set;)V
    .locals 0
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MenuItem;",
            "Ljava/util/Set",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Lcom/miui/player/ui/menu/BaseMenuManager;,"Lcom/miui/player/ui/menu/BaseMenuManager<TT;>;"
    .local p2, selected:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    iput-object p2, p0, Lcom/miui/player/ui/menu/BaseMenuManager;->mSelected:Ljava/util/Set;

    .line 42
    return-void
.end method

.method public final keyAt(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lcom/miui/player/ui/menu/BaseMenuManager;,"Lcom/miui/player/ui/menu/BaseMenuManager<TT;>;"
    iget-object v1, p0, Lcom/miui/player/ui/menu/BaseMenuManager;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/miui/player/ui/menu/BaseMenuManager;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 61
    .local v0, obj:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/menu/BaseMenuManager;->getKeyFromItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 66
    .end local v0           #obj:Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 52
    .local p0, this:Lcom/miui/player/ui/menu/BaseMenuManager;,"Lcom/miui/player/ui/menu/BaseMenuManager<TT;>;"
    iget-object v0, p0, Lcom/miui/player/ui/menu/BaseMenuManager;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/miui/player/ui/menu/BaseMenuManager;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 55
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 72
    .local p0, this:Lcom/miui/player/ui/menu/BaseMenuManager;,"Lcom/miui/player/ui/menu/BaseMenuManager<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onDialogResult(IZLandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "confirm"
    .parameter "intent"

    .prologue
    .line 88
    .local p0, this:Lcom/miui/player/ui/menu/BaseMenuManager;,"Lcom/miui/player/ui/menu/BaseMenuManager<TT;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 82
    .local p0, this:Lcom/miui/player/ui/menu/BaseMenuManager;,"Lcom/miui/player/ui/menu/BaseMenuManager<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 77
    .local p0, this:Lcom/miui/player/ui/menu/BaseMenuManager;,"Lcom/miui/player/ui/menu/BaseMenuManager<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 29
    .local p0, this:Lcom/miui/player/ui/menu/BaseMenuManager;,"Lcom/miui/player/ui/menu/BaseMenuManager<TT;>;"
    iput-object p1, p0, Lcom/miui/player/ui/menu/BaseMenuManager;->mAdapter:Landroid/widget/BaseAdapter;

    .line 30
    return-void
.end method
