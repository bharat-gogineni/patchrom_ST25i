.class Lcom/miui/gallery/settings/GallerySettings$1$1;
.super Ljava/lang/Object;
.source "GallerySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/settings/GallerySettings$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/settings/GallerySettings$1;


# direct methods
.method constructor <init>(Lcom/miui/gallery/settings/GallerySettings$1;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/miui/gallery/settings/GallerySettings$1$1;->this$1:Lcom/miui/gallery/settings/GallerySettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/miui/gallery/settings/GallerySettings$1$1;->this$1:Lcom/miui/gallery/settings/GallerySettings$1;

    iget-object v0, v0, Lcom/miui/gallery/settings/GallerySettings$1;->this$0:Lcom/miui/gallery/settings/GallerySettings;

    invoke-virtual {v0}, Lcom/miui/gallery/settings/GallerySettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/CacheManager;->cleanCache(Landroid/content/Context;)V

    .line 118
    return-void
.end method
