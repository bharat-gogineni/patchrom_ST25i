.class public abstract Lcom/miui/player/ui/base/TemplateListActivity$TemplateLoaderCallback;
.super Ljava/lang/Object;
.source "TemplateListActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/base/TemplateListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "TemplateLoaderCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/base/TemplateListActivity;


# direct methods
.method protected constructor <init>(Lcom/miui/player/ui/base/TemplateListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/miui/player/ui/base/TemplateListActivity$TemplateLoaderCallback;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v3, 0x1

    .line 318
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity$TemplateLoaderCallback;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/base/TemplateListActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loader finished "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 319
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity$TemplateLoaderCallback;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/base/TemplateListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 322
    :cond_0
    if-nez p2, :cond_2

    .line 323
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity$TemplateLoaderCallback;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-static {v0}, Lcom/miui/player/ui/UIHelper;->displayDatabaseError(Landroid/app/Activity;)V

    .line 324
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity$TemplateLoaderCallback;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/base/TemplateListActivity;->closeContextMenu()V

    .line 325
    invoke-static {}, Lcom/miui/player/util/Utils;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity$TemplateLoaderCallback;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    iget-object v0, v0, Lcom/miui/player/ui/base/TemplateListActivity;->mRescanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 327
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity$TemplateLoaderCallback;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    iget-object v0, v0, Lcom/miui/player/ui/base/TemplateListActivity;->mRescanHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/player/ui/base/TemplateListActivity$TemplateLoaderCallback;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    iget-object v1, v1, Lcom/miui/player/ui/base/TemplateListActivity;->mRescanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 332
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity$TemplateLoaderCallback;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/player/ui/base/TemplateListActivity;->handleLoadFinished(ILandroid/database/Cursor;)V

    goto :goto_0

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity$TemplateLoaderCallback;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-static {v0}, Lcom/miui/player/ui/UIHelper;->hideDatabaseError(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/player/ui/base/TemplateListActivity$TemplateLoaderCallback;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v1, p0, Lcom/miui/player/ui/base/TemplateListActivity$TemplateLoaderCallback;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/base/TemplateListActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loader reset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    iget-object v1, p0, Lcom/miui/player/ui/base/TemplateListActivity$TemplateLoaderCallback;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/base/TemplateListActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/base/TemplateListActivity$TemplateLoaderCallback;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/base/TemplateListActivity;->getCursorAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    .line 342
    .local v0, ca:Landroid/widget/CursorAdapter;
    if-eqz v0, :cond_1

    .line 343
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/base/TemplateListActivity$TemplateLoaderCallback;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/base/TemplateListActivity;->handleLoaderReset(I)V

    goto :goto_0
.end method
