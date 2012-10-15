.class public interface abstract Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;
.super Ljava/lang/Object;
.source "MultiChoiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/MultiChoiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MultiChoiceItemProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createActionMenu(Landroid/view/Menu;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/Set",
            "<TE;>;)V"
        }
    .end annotation
.end method

.method public abstract getSelectionMsg(I)Ljava/lang/CharSequence;
.end method

.method public abstract handleActionItem(Landroid/view/MenuItem;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MenuItem;",
            "Ljava/util/Set",
            "<TE;>;)V"
        }
    .end annotation
.end method

.method public abstract keyAt(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public abstract notifyDataSetChanged()V
.end method
