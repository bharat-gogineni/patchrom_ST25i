.class Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ZeroSizeCallable;
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
    name = "ZeroSizeCallable"
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
    .line 338
    iput-object p1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ZeroSizeCallable;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ZeroSizeCallable;-><init>(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)V

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
    .line 338
    invoke-virtual {p0}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ZeroSizeCallable;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 340
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ZeroSizeCallable;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;
    invoke-static {v0}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1100(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ZeroSizeCallable;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #setter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSize:I
    invoke-static {v0, v2}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$902(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;I)I

    .line 343
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ZeroSizeCallable;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #setter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mTotalMediaObjectCount:I
    invoke-static {v0, v2}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1002(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;I)I

    .line 347
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ZeroSizeCallable;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;
    invoke-static {v0}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1100(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;->onSizeChanged(II)V

    .line 349
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ZeroSizeCallable;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    iget-object v1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ZeroSizeCallable;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #setter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentEnd:I
    invoke-static {v1, v2}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$602(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;I)I

    move-result v1

    #setter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentStart:I
    invoke-static {v0, v1}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$502(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;I)I

    .line 350
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ZeroSizeCallable;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    iget-object v1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ZeroSizeCallable;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #setter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mActiveEnd:I
    invoke-static {v1, v2}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1202(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;I)I

    move-result v1

    #setter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mActiveStart:I
    invoke-static {v0, v1}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1602(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;I)I

    .line 352
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
