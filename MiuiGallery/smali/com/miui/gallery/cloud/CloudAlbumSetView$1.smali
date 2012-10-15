.class Lcom/miui/gallery/cloud/CloudAlbumSetView$1;
.super Ljava/lang/Object;
.source "CloudAlbumSetView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/CloudAlbumSetView;->updateNoCloudViewVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/CloudAlbumSetView;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/CloudAlbumSetView;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/miui/gallery/cloud/CloudAlbumSetView$1;->this$0:Lcom/miui/gallery/cloud/CloudAlbumSetView;

    iput-object p2, p0, Lcom/miui/gallery/cloud/CloudAlbumSetView$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudAlbumSetView$1;->val$activity:Landroid/app/Activity;

    const-class v2, Lcom/miui/gallery/settings/GalleryCloudSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    const-string v1, "authority"

    const-string v2, "com.miui.gallery.cloud.provider"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v1, "account"

    iget-object v2, p0, Lcom/miui/gallery/cloud/CloudAlbumSetView$1;->val$activity:Landroid/app/Activity;

    invoke-static {v2}, Lmiui/provider/GalleryCloudUtils;->findXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudAlbumSetView$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method
