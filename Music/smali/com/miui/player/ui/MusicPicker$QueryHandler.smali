.class final Lcom/miui/player/ui/MusicPicker$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MusicPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MusicPicker;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/MusicPicker;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 367
    iput-object p1, p0, Lcom/miui/player/ui/MusicPicker$QueryHandler;->this$0:Lcom/miui/player/ui/MusicPicker;

    .line 368
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 369
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 373
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker$QueryHandler;->this$0:Lcom/miui/player/ui/MusicPicker;

    invoke-virtual {v0}, Lcom/miui/player/ui/MusicPicker;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker$QueryHandler;->this$0:Lcom/miui/player/ui/MusicPicker;

    iget-object v0, v0, Lcom/miui/player/ui/MusicPicker;->mAdapter:Lcom/miui/player/ui/MusicPicker$TrackListAdapter;

    invoke-virtual {v0, v2}, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 377
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker$QueryHandler;->this$0:Lcom/miui/player/ui/MusicPicker;

    iget-object v0, v0, Lcom/miui/player/ui/MusicPicker;->mAdapter:Lcom/miui/player/ui/MusicPicker$TrackListAdapter;

    invoke-virtual {v0, p3}, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 378
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker$QueryHandler;->this$0:Lcom/miui/player/ui/MusicPicker;

    invoke-virtual {v0, v2}, Lcom/miui/player/ui/MusicPicker;->setProgressBarIndeterminateVisibility(Z)V

    .line 382
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker$QueryHandler;->this$0:Lcom/miui/player/ui/MusicPicker;

    iget-object v0, v0, Lcom/miui/player/ui/MusicPicker;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker$QueryHandler;->this$0:Lcom/miui/player/ui/MusicPicker;

    invoke-virtual {v0}, Lcom/miui/player/ui/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/ui/MusicPicker$QueryHandler;->this$0:Lcom/miui/player/ui/MusicPicker;

    iget-object v1, v1, Lcom/miui/player/ui/MusicPicker;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 384
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker$QueryHandler;->this$0:Lcom/miui/player/ui/MusicPicker;

    iget-boolean v0, v0, Lcom/miui/player/ui/MusicPicker;->mListHasFocus:Z

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker$QueryHandler;->this$0:Lcom/miui/player/ui/MusicPicker;

    invoke-virtual {v0}, Lcom/miui/player/ui/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker$QueryHandler;->this$0:Lcom/miui/player/ui/MusicPicker;

    iput-boolean v2, v0, Lcom/miui/player/ui/MusicPicker;->mListHasFocus:Z

    .line 388
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker$QueryHandler;->this$0:Lcom/miui/player/ui/MusicPicker;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/player/ui/MusicPicker;->mListState:Landroid/os/Parcelable;

    .line 393
    :cond_1
    :goto_0
    return-void

    .line 391
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
