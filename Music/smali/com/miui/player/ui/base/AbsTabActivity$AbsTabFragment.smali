.class public abstract Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;
.super Landroid/app/Fragment;
.source "AbsTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/base/AbsTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbsTabFragment"
.end annotation


# instance fields
.field private mActive:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;->mActive:Z

    return-void
.end method


# virtual methods
.method public getAllMenuIdList(Landroid/view/Menu;)Ljava/util/List;
    .locals 1
    .parameter "menu"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;->mActive:Z

    return v0
.end method

.method protected onActiveStateChanged(Z)V
    .locals 0
    .parameter "active"

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;->mActive:Z

    .line 276
    return-void
.end method

.method public prepareOptionMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 291
    return-void
.end method
