.class Lcom/miui/gallery/app/HomeCameraDataAdapter$MySourceListener;
.super Ljava/lang/Object;
.source "HomeCameraDataAdapter.java"

# interfaces
.implements Lcom/miui/gallery/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/HomeCameraDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$MySourceListener;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;Lcom/miui/gallery/app/HomeCameraDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/HomeCameraDataAdapter$MySourceListener;-><init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$MySourceListener;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;
    invoke-static {v0}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$300(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$MySourceListener;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;
    invoke-static {v0}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$300(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->notifyDirty()V

    .line 204
    :cond_0
    return-void
.end method
