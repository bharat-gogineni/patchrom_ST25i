.class Lcom/miui/gallery/app/HomePage$MyLoadingListener;
.super Ljava/lang/Object;
.source "HomePage.java"

# interfaces
.implements Lcom/miui/gallery/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/HomePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/HomePage;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/HomePage;)V
    .locals 0
    .parameter

    .prologue
    .line 997
    iput-object p1, p0, Lcom/miui/gallery/app/HomePage$MyLoadingListener;->this$0:Lcom/miui/gallery/app/HomePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/HomePage;Lcom/miui/gallery/app/HomePage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 997
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/HomePage$MyLoadingListener;-><init>(Lcom/miui/gallery/app/HomePage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1004
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$MyLoadingListener;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mIsActive:Z
    invoke-static {v0}, Lcom/miui/gallery/app/HomePage;->access$2500(Lcom/miui/gallery/app/HomePage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1008
    :goto_0
    return-void

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$MyLoadingListener;->this$0:Lcom/miui/gallery/app/HomePage;

    #calls: Lcom/miui/gallery/app/HomePage;->updateCameraViewVisibility()V
    invoke-static {v0}, Lcom/miui/gallery/app/HomePage;->access$2900(Lcom/miui/gallery/app/HomePage;)V

    .line 1006
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$MyLoadingListener;->this$0:Lcom/miui/gallery/app/HomePage;

    #setter for: Lcom/miui/gallery/app/HomePage;->mIsLoadFinished:Z
    invoke-static {v0, v1}, Lcom/miui/gallery/app/HomePage;->access$2702(Lcom/miui/gallery/app/HomePage;Z)Z

    .line 1007
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$MyLoadingListener;->this$0:Lcom/miui/gallery/app/HomePage;

    #calls: Lcom/miui/gallery/app/HomePage;->clearLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/miui/gallery/app/HomePage;->access$2600(Lcom/miui/gallery/app/HomePage;I)V

    goto :goto_0
.end method

.method public onLoadingStarted()V
    .locals 2

    .prologue
    .line 999
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$MyLoadingListener;->this$0:Lcom/miui/gallery/app/HomePage;

    const/4 v1, 0x0

    #setter for: Lcom/miui/gallery/app/HomePage;->mIsLoadFinished:Z
    invoke-static {v0, v1}, Lcom/miui/gallery/app/HomePage;->access$2702(Lcom/miui/gallery/app/HomePage;Z)Z

    .line 1000
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$MyLoadingListener;->this$0:Lcom/miui/gallery/app/HomePage;

    const/4 v1, 0x1

    #calls: Lcom/miui/gallery/app/HomePage;->setLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/miui/gallery/app/HomePage;->access$2800(Lcom/miui/gallery/app/HomePage;I)V

    .line 1001
    return-void
.end method
