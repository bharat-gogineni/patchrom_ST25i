.class Lcom/miui/player/ui/AlbumBrowserActivity$1;
.super Ljava/lang/Object;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/AlbumBrowserActivity;->onCreateContent(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/AlbumBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$1;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 121
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 111
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 112
    sget-object v0, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lmiui/cache/RequestManager;

    invoke-virtual {v0}, Lmiui/cache/RequestManager;->resume()V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    sget-object v0, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lmiui/cache/RequestManager;

    invoke-virtual {v0}, Lmiui/cache/RequestManager;->pause()V

    goto :goto_0
.end method
