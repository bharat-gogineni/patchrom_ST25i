.class public interface abstract Lcom/miui/home/launcher/LauncherModel$Callbacks;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract bindAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
.end method

.method public abstract bindAppsAdded(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAppsRemoved(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/AllAppsList$RemoveInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindFolders(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V
.end method

.method public abstract bindItems(Ljava/util/ArrayList;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract bindUpsideScene(Lcom/miui/home/launcher/upsidescene/SceneData;)V
.end method

.method public abstract finishBindingMissingItems()V
.end method

.method public abstract finishBindingSavedItems()V
.end method

.method public abstract finishLoading()V
.end method

.method public abstract getCurrentWorkspaceScreen()I
.end method

.method public abstract reloadWidgetPreview()V
.end method

.method public abstract startBinding()V
.end method

.method public abstract startLoading()V
.end method
