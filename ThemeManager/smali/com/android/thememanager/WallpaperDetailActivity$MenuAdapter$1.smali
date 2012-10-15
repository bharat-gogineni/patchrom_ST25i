.class Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter$1;
.super Ljava/lang/Object;
.source "WallpaperDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;


# direct methods
.method constructor <init>(Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 732
    iput-object p1, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter$1;->this$1:Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 735
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter$1;->this$1:Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;

    iget-object v1, v1, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/thememanager/WallpaperDetailActivity;->access$3500(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 736
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter$1;->this$1:Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;

    iget-object v0, v0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/thememanager/WallpaperDetailActivity;->access$3600(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter$1;->this$1:Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;

    iget-object v0, v0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mResourceSet:Lmiui/app/resourcebrowser/resource/ResourceSet;
    invoke-static {v0}, Lcom/android/thememanager/WallpaperDetailActivity;->access$3800(Lcom/android/thememanager/WallpaperDetailActivity;)Lmiui/app/resourcebrowser/resource/ResourceSet;

    move-result-object v0

    iget-object v2, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter$1;->this$1:Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;

    iget-object v2, v2, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mResourceGroup:I
    invoke-static {v2}, Lcom/android/thememanager/WallpaperDetailActivity;->access$3700(Lcom/android/thememanager/WallpaperDetailActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Lmiui/app/resourcebrowser/resource/ResourceSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/widget/DataGroup;

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lmiui/app/resourcebrowser/util/ResourceHelper;->setResourceStatus(Ljava/lang/String;Lmiui/widget/DataGroup;I)V

    .line 737
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter$1;->this$1:Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;

    iget-object v0, v0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mIsOnlineResourceSet:Z
    invoke-static {v0}, Lcom/android/thememanager/WallpaperDetailActivity;->access$3900(Lcom/android/thememanager/WallpaperDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter$1;->this$1:Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;

    iget-object v0, v0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    invoke-virtual {v0}, Lcom/android/thememanager/WallpaperDetailActivity;->setResourceStatus()V

    .line 742
    :goto_0
    return-void

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter$1;->this$1:Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;

    iget-object v0, v0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    invoke-virtual {v0}, Lcom/android/thememanager/WallpaperDetailActivity;->finish()V

    goto :goto_0
.end method
