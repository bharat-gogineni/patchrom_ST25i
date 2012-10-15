.class Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateVisibleRangeCallable;
.super Ljava/lang/Object;
.source "HomeRecentAlbumDataAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateVisibleRangeCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateVisibleRangeCallable;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateVisibleRangeCallable;-><init>(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateVisibleRangeCallable;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 330
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateVisibleRangeCallable;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;
    invoke-static {v0}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$300(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;

    move-result-object v0

    if-nez v0, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-object v1

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateVisibleRangeCallable;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;
    invoke-static {v0}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1100(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateVisibleRangeCallable;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;
    invoke-static {v0}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1100(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;->onUpdateVisibleRange()V

    goto :goto_0
.end method
