.class Lcom/miui/gallery/app/AlbumPageBase$MyLoadingListener;
.super Ljava/lang/Object;
.source "AlbumPageBase.java"

# interfaces
.implements Lcom/miui/gallery/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumPageBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/AlbumPageBase;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/AlbumPageBase;)V
    .locals 0
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumPageBase$MyLoadingListener;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/AlbumPageBase;Lcom/miui/gallery/app/AlbumPageBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 595
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumPageBase$MyLoadingListener;-><init>(Lcom/miui/gallery/app/AlbumPageBase;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished()V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase$MyLoadingListener;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    #getter for: Lcom/miui/gallery/app/AlbumPageBase;->mIsActive:Z
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumPageBase;->access$1300(Lcom/miui/gallery/app/AlbumPageBase;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    :goto_0
    return-void

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase$MyLoadingListener;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    const/4 v1, 0x1

    #calls: Lcom/miui/gallery/app/AlbumPageBase;->clearLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/miui/gallery/app/AlbumPageBase;->access$1400(Lcom/miui/gallery/app/AlbumPageBase;I)V

    goto :goto_0
.end method

.method public onLoadingStarted()V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase$MyLoadingListener;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    const/4 v1, 0x1

    #calls: Lcom/miui/gallery/app/AlbumPageBase;->setLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/miui/gallery/app/AlbumPageBase;->access$1500(Lcom/miui/gallery/app/AlbumPageBase;I)V

    .line 599
    return-void
.end method
