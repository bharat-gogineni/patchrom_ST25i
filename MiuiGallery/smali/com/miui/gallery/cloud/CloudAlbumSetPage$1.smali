.class Lcom/miui/gallery/cloud/CloudAlbumSetPage$1;
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
    .line 86
    iput-object p1, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage$1;->this$0:Lcom/miui/gallery/cloud/CloudAlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage$1;->this$0:Lcom/miui/gallery/cloud/CloudAlbumSetPage;

    #calls: Lcom/miui/gallery/cloud/CloudAlbumSetPage;->getActivity()Landroid/app/Activity;
    invoke-static {v1}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->access$000(Lcom/miui/gallery/cloud/CloudAlbumSetPage;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 92
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v1, "com.xiaomi"

    iget-object v3, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage$1;->this$0:Lcom/miui/gallery/cloud/CloudAlbumSetPage;

    #calls: Lcom/miui/gallery/cloud/CloudAlbumSetPage;->getActivity()Landroid/app/Activity;
    invoke-static {v3}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->access$100(Lcom/miui/gallery/cloud/CloudAlbumSetPage;)Landroid/app/Activity;

    move-result-object v5

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v8

    .line 95
    .local v8, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage$1;->this$0:Lcom/miui/gallery/cloud/CloudAlbumSetPage;

    #calls: Lcom/miui/gallery/cloud/CloudAlbumSetPage;->initalCloud()V
    invoke-static {v1}, Lcom/miui/gallery/cloud/CloudAlbumSetPage;->access$200(Lcom/miui/gallery/cloud/CloudAlbumSetPage;)V

    .line 96
    return-void
.end method
