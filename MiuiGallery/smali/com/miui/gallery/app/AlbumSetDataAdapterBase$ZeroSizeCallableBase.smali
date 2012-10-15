.class public Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ZeroSizeCallableBase;
.super Ljava/lang/Object;
.source "AlbumSetDataAdapterBase.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumSetDataAdapterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ZeroSizeCallableBase"
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
.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;I)V
    .locals 0
    .parameter
    .parameter "totalMediaObjectCount"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ZeroSizeCallableBase;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput p2, p1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mTotalMediaObjectCount:I

    .line 313
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
    .line 310
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ZeroSizeCallableBase;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 317
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ZeroSizeCallableBase;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    #setter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSize:I
    invoke-static {v0, v3}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$302(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;I)I

    .line 321
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ZeroSizeCallableBase;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ZeroSizeCallableBase;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSize:I
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$300(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ZeroSizeCallableBase;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    iget v2, v2, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mTotalMediaObjectCount:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->sendOnSizeChanged(II)V

    .line 323
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ZeroSizeCallableBase;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ZeroSizeCallableBase;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    iput v3, v1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mContentEnd:I

    iput v3, v0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mContentStart:I

    .line 324
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ZeroSizeCallableBase;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ZeroSizeCallableBase;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    #setter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveEnd:I
    invoke-static {v1, v3}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$402(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;I)I

    move-result v1

    #setter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveStart:I
    invoke-static {v0, v1}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$802(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;I)I

    .line 325
    const/4 v0, 0x0

    return-object v0
.end method
