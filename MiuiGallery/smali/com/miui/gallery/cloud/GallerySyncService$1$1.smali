.class Lcom/miui/gallery/cloud/GallerySyncService$1$1;
.super Ljava/lang/Thread;
.source "GallerySyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/GallerySyncService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/cloud/GallerySyncService$1;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/GallerySyncService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/gallery/cloud/GallerySyncService$1$1;->this$1:Lcom/miui/gallery/cloud/GallerySyncService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 45
    invoke-static {}, Lcom/miui/gallery/cloud/GallerySyncService;->access$000()Lcom/miui/gallery/cloud/GallerySyncAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/cloud/GallerySyncAdapter;->checkNetState(IZ)V

    .line 46
    return-void
.end method
