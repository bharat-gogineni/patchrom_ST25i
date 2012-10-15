.class public Lcom/miui/gallery/app/AlbumSetPageBase$MyLoadingListener;
.super Ljava/lang/Object;
.source "AlbumSetPageBase.java"

# interfaces
.implements Lcom/miui/gallery/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumSetPageBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetPageBase;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/AlbumSetPageBase;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetPageBase$MyLoadingListener;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingFinished()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$MyLoadingListener;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetPageBase;->mIsActive:Z
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumSetPageBase;->access$700(Lcom/miui/gallery/app/AlbumSetPageBase;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$MyLoadingListener;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    const/4 v1, 0x1

    #calls: Lcom/miui/gallery/app/AlbumSetPageBase;->clearLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/miui/gallery/app/AlbumSetPageBase;->access$800(Lcom/miui/gallery/app/AlbumSetPageBase;I)V

    goto :goto_0
.end method

.method public onLoadingStarted()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$MyLoadingListener;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    const/4 v1, 0x1

    #calls: Lcom/miui/gallery/app/AlbumSetPageBase;->setLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/miui/gallery/app/AlbumSetPageBase;->access$900(Lcom/miui/gallery/app/AlbumSetPageBase;I)V

    .line 399
    return-void
.end method
