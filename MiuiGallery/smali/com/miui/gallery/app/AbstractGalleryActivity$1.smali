.class Lcom/miui/gallery/app/AbstractGalleryActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AbstractGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AbstractGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/AbstractGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/miui/gallery/app/AbstractGalleryActivity$1;->this$0:Lcom/miui/gallery/app/AbstractGalleryActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/app/AbstractGalleryActivity$1;->this$0:Lcom/miui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/GalleryApp;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/app/GalleryApp;->notifyMediaMountState(Ljava/lang/String;)V

    .line 53
    return-void
.end method
