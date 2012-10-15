.class Lcom/miui/gallery/cloud/CloudAlbumSetPage$2;
.super Ljava/lang/Object;
.source "CloudAlbumSetPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/CloudAlbumSetPage;->initalCloud()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/CloudAlbumSetPage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/CloudAlbumSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage$2;->this$0:Lcom/miui/gallery/cloud/CloudAlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 107
    iget-object v2, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage$2;->this$0:Lcom/miui/gallery/cloud/CloudAlbumSetPage;

    #calls: Lcom/miui/gallery/cloud/CloudAlbumSetPage;->getActivity()Landroid/app/Activity;
    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->access$300(Lcom/miui/gallery/cloud/CloudAlbumSetPage;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lmiui/provider/GalleryCloudUtils;->findXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 108
    .local v1, xiaomiAccount:Landroid/accounts/Account;
    if-eqz v1, :cond_0

    .line 110
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    if-nez v2, :cond_1

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "authorities"

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "com.miui.gallery.cloud.provider"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const/high16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    iget-object v2, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage$2;->this$0:Lcom/miui/gallery/cloud/CloudAlbumSetPage;

    #calls: Lcom/miui/gallery/cloud/CloudAlbumSetPage;->getActivity()Landroid/app/Activity;
    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->access$400(Lcom/miui/gallery/cloud/CloudAlbumSetPage;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 123
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage$2;->this$0:Lcom/miui/gallery/cloud/CloudAlbumSetPage;

    #calls: Lcom/miui/gallery/cloud/CloudAlbumSetPage;->initalCloud()V
    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->access$200(Lcom/miui/gallery/cloud/CloudAlbumSetPage;)V

    .line 125
    :cond_0
    return-void

    .line 119
    :cond_1
    const-string v2, "com.miui.gallery.cloud.provider"

    invoke-static {v1, v2, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 121
    iget-object v2, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage$2;->this$0:Lcom/miui/gallery/cloud/CloudAlbumSetPage;

    #calls: Lcom/miui/gallery/cloud/CloudAlbumSetPage;->getActivity()Landroid/app/Activity;
    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->access$500(Lcom/miui/gallery/cloud/CloudAlbumSetPage;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lmiui/provider/GalleryCloudUtils;->requestSync(Landroid/content/Context;)V

    goto :goto_0
.end method
