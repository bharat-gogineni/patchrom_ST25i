.class Lcom/miui/gallery/app/HomeCameraDataAdapter$SizeCallable;
.super Ljava/lang/Object;
.source "HomeCameraDataAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/HomeCameraDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SizeCallable"
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
.field private final mSize:I

.field private final mTotalMediaObjectCount:I

.field final synthetic this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;II)V
    .locals 0
    .parameter
    .parameter "size"
    .parameter "totalMediaObjectCount"

    .prologue
    .line 339
    iput-object p1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$SizeCallable;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput p2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$SizeCallable;->mSize:I

    .line 341
    iput p3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$SizeCallable;->mTotalMediaObjectCount:I

    .line 343
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
    .line 335
    invoke-virtual {p0}, Lcom/miui/gallery/app/HomeCameraDataAdapter$SizeCallable;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$SizeCallable;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    iget v1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$SizeCallable;->mSize:I

    iget v2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$SizeCallable;->mTotalMediaObjectCount:I

    #calls: Lcom/miui/gallery/app/HomeCameraDataAdapter;->triggerOnSizeChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1200(Lcom/miui/gallery/app/HomeCameraDataAdapter;II)V

    .line 347
    const/4 v0, 0x0

    return-object v0
.end method
