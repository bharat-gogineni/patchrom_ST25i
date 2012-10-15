.class Lcom/miui/home/launcher/Workspace$3;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Workspace;->removeItems(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Workspace;

.field final synthetic val$layout:Lcom/miui/home/launcher/CellLayout;

.field final synthetic val$packages:Ljava/util/ArrayList;

.field final synthetic val$widgets:Landroid/appwidget/AppWidgetManager;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/CellLayout;Ljava/util/ArrayList;Landroid/appwidget/AppWidgetManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 987
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$3;->this$0:Lcom/miui/home/launcher/Workspace;

    iput-object p2, p0, Lcom/miui/home/launcher/Workspace$3;->val$layout:Lcom/miui/home/launcher/CellLayout;

    iput-object p3, p0, Lcom/miui/home/launcher/Workspace$3;->val$packages:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/miui/home/launcher/Workspace$3;->val$widgets:Landroid/appwidget/AppWidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 989
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 991
    .local v2, childrenToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v11, p0, Lcom/miui/home/launcher/Workspace$3;->val$layout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v11}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 992
    .local v1, childCount:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    if-ge v5, v1, :cond_6

    .line 993
    iget-object v11, p0, Lcom/miui/home/launcher/Workspace$3;->val$layout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v11, v5}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 994
    .local v10, view:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .line 995
    .local v9, tag:Ljava/lang/Object;
    instance-of v11, v9, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v11, :cond_2

    move-object v4, v9

    .line 996
    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    .line 997
    .local v4, info:Lcom/miui/home/launcher/ShortcutInfo;
    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 998
    .local v6, name:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 999
    iget-object v11, p0, Lcom/miui/home/launcher/Workspace$3;->val$packages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;

    .line 1000
    .local v8, ri:Lcom/miui/home/launcher/AllAppsList$RemoveInfo;
    iget-object v11, v8, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1001
    iget v11, v4, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-eqz v11, :cond_1

    .line 1003
    iget-object v11, p0, Lcom/miui/home/launcher/Workspace$3;->this$0:Lcom/miui/home/launcher/Workspace;

    #getter for: Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;
    invoke-static {v11}, Lcom/miui/home/launcher/Workspace;->access$100(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/Launcher;

    move-result-object v11

    invoke-static {v11, v4}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 1005
    :cond_1
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1009
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #info:Lcom/miui/home/launcher/ShortcutInfo;
    .end local v6           #name:Ljava/lang/String;
    .end local v8           #ri:Lcom/miui/home/launcher/AllAppsList$RemoveInfo;
    :cond_2
    instance-of v11, v9, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v11, :cond_4

    move-object v4, v9

    .line 1010
    check-cast v4, Lcom/miui/home/launcher/FolderInfo;

    .line 1011
    .local v4, info:Lcom/miui/home/launcher/FolderInfo;
    iget-object v11, p0, Lcom/miui/home/launcher/Workspace$3;->val$packages:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/miui/home/launcher/Workspace$3;->this$0:Lcom/miui/home/launcher/Workspace;

    #getter for: Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;
    invoke-static {v12}, Lcom/miui/home/launcher/Workspace;->access$100(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/Launcher;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lcom/miui/home/launcher/FolderInfo;->removeItems(Ljava/util/ArrayList;Lcom/miui/home/launcher/Launcher;)V

    .line 1012
    invoke-virtual {v4}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 992
    .end local v4           #info:Lcom/miui/home/launcher/FolderInfo;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1013
    :cond_4
    instance-of v11, v9, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v11, :cond_3

    move-object v4, v9

    .line 1014
    check-cast v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 1015
    .local v4, info:Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    iget-object v11, p0, Lcom/miui/home/launcher/Workspace$3;->val$widgets:Landroid/appwidget/AppWidgetManager;

    iget v12, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v11, v12}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v7

    .line 1017
    .local v7, provider:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v7, :cond_3

    .line 1018
    iget-object v11, p0, Lcom/miui/home/launcher/Workspace$3;->val$packages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;

    .line 1019
    .restart local v8       #ri:Lcom/miui/home/launcher/AllAppsList$RemoveInfo;
    iget-boolean v11, v8, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;->replacing:Z

    if-nez v11, :cond_5

    iget-object v11, v8, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    iget-object v12, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1021
    iget-object v11, p0, Lcom/miui/home/launcher/Workspace$3;->this$0:Lcom/miui/home/launcher/Workspace;

    #getter for: Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;
    invoke-static {v11}, Lcom/miui/home/launcher/Workspace;->access$100(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/Launcher;

    move-result-object v11

    invoke-static {v11, v4}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 1022
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1029
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #info:Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    .end local v7           #provider:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v8           #ri:Lcom/miui/home/launcher/AllAppsList$RemoveInfo;
    .end local v9           #tag:Ljava/lang/Object;
    .end local v10           #view:Landroid/view/View;
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1030
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_8

    .line 1031
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1032
    .local v0, child:Landroid/view/View;
    iget-object v11, p0, Lcom/miui/home/launcher/Workspace$3;->val$layout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v11, v0}, Lcom/miui/home/launcher/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 1033
    instance-of v11, v0, Lcom/miui/home/launcher/DropTarget;

    if-eqz v11, :cond_7

    .line 1034
    iget-object v11, p0, Lcom/miui/home/launcher/Workspace$3;->this$0:Lcom/miui/home/launcher/Workspace;

    #getter for: Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;
    invoke-static {v11}, Lcom/miui/home/launcher/Workspace;->access$200(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/DragController;

    move-result-object v11

    check-cast v0, Lcom/miui/home/launcher/DropTarget;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v11, v0}, Lcom/miui/home/launcher/DragController;->removeDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 1030
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1038
    :cond_8
    if-lez v1, :cond_9

    .line 1039
    iget-object v11, p0, Lcom/miui/home/launcher/Workspace$3;->val$layout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v11}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    .line 1040
    iget-object v11, p0, Lcom/miui/home/launcher/Workspace$3;->val$layout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v11}, Lcom/miui/home/launcher/CellLayout;->invalidate()V

    .line 1042
    :cond_9
    return-void
.end method
