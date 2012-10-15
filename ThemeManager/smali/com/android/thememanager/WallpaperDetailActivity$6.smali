.class Lcom/android/thememanager/WallpaperDetailActivity$6;
.super Ljava/lang/Object;
.source "WallpaperDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/WallpaperDetailActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/WallpaperDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/thememanager/WallpaperDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/thememanager/WallpaperDetailActivity$6;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 201
    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    .line 202
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/thememanager/WallpaperDetailActivity$6;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    const v5, 0x60c0019

    invoke-virtual {v4, v5}, Lcom/android/thememanager/WallpaperDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 203
    iget-object v3, p0, Lcom/android/thememanager/WallpaperDetailActivity$6;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    iget-object v4, p0, Lcom/android/thememanager/WallpaperDetailActivity$6;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mResourceType:J
    invoke-static {v4}, Lcom/android/thememanager/WallpaperDetailActivity;->access$200(Lcom/android/thememanager/WallpaperDetailActivity;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/thememanager/WallpaperDetailActivity$6;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/thememanager/WallpaperDetailActivity;->access$300(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/thememanager/WallpaperDetailActivity;->doApplyWallpaper(JLjava/lang/String;)V
    invoke-static {v3, v4, v5, v6}, Lcom/android/thememanager/WallpaperDetailActivity;->access$400(Lcom/android/thememanager/WallpaperDetailActivity;JLjava/lang/String;)V

    .line 228
    :goto_0
    return-void

    .line 205
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/thememanager/WallpaperDetailActivity$6;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/thememanager/WallpaperDetailActivity;->access$500(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/thememanager/WallpaperDetailActivity;->getOnlineImageCachePath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Lcom/android/thememanager/WallpaperDetailActivity;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, cacheFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 208
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v4, p0, Lcom/android/thememanager/WallpaperDetailActivity$6;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/thememanager/WallpaperDetailActivity;->access$700(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/app/resourcebrowser/util/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/thememanager/WallpaperDetailActivity$6;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/thememanager/WallpaperDetailActivity;->access$800(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    .line 216
    .local v1, result:Z
    if-eqz v1, :cond_1

    .line 217
    iget-object v3, p0, Lcom/android/thememanager/WallpaperDetailActivity$6;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/thememanager/WallpaperDetailActivity;->access$900(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/android/thememanager/WallpaperDetailActivity$6;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mResourceSet:Lmiui/app/resourcebrowser/resource/ResourceSet;
    invoke-static {v3}, Lcom/android/thememanager/WallpaperDetailActivity;->access$1100(Lcom/android/thememanager/WallpaperDetailActivity;)Lmiui/app/resourcebrowser/resource/ResourceSet;

    move-result-object v3

    iget-object v5, p0, Lcom/android/thememanager/WallpaperDetailActivity$6;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mResourceGroup:I
    invoke-static {v5}, Lcom/android/thememanager/WallpaperDetailActivity;->access$1000(Lcom/android/thememanager/WallpaperDetailActivity;)I

    move-result v5

    invoke-virtual {v3, v5}, Lmiui/app/resourcebrowser/resource/ResourceSet;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/widget/DataGroup;

    invoke-static {v4, v3, v6}, Lmiui/app/resourcebrowser/util/ResourceHelper;->setResourceStatus(Ljava/lang/String;Lmiui/widget/DataGroup;I)V

    .line 219
    :cond_1
    iget-object v3, p0, Lcom/android/thememanager/WallpaperDetailActivity$6;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    invoke-virtual {v3}, Lcom/android/thememanager/WallpaperDetailActivity;->setResourceStatus()V

    .line 220
    iget-object v4, p0, Lcom/android/thememanager/WallpaperDetailActivity$6;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    if-eqz v1, :cond_2

    const v3, 0x7f0a004b

    :goto_2
    invoke-static {v4, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const v3, 0x60c0023

    goto :goto_2

    .line 224
    .end local v1           #result:Z
    :cond_3
    const v3, 0x60c0018

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 225
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 209
    :catch_0
    move-exception v3

    goto :goto_1
.end method
