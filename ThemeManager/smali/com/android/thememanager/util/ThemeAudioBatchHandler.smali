.class public Lcom/android/thememanager/util/ThemeAudioBatchHandler;
.super Lmiui/app/resourcebrowser/view/AudioBatchResourceHandler;
.source "ThemeAudioBatchHandler.java"


# instance fields
.field private mResourceType:J


# direct methods
.method public constructor <init>(Lmiui/app/resourcebrowser/ResourceListActivity;Lmiui/app/resourcebrowser/ResourceAdapter;J)V
    .locals 0
    .parameter "activity"
    .parameter "adapter"
    .parameter "resourceType"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lmiui/app/resourcebrowser/view/AudioBatchResourceHandler;-><init>(Lmiui/app/resourcebrowser/ResourceListActivity;Lmiui/app/resourcebrowser/ResourceAdapter;)V

    .line 14
    iput-wide p3, p0, Lcom/android/thememanager/util/ThemeAudioBatchHandler;->mResourceType:J

    .line 15
    return-void
.end method

.method public constructor <init>(Lmiui/app/resourcebrowser/ResourceListFragment;Lmiui/app/resourcebrowser/ResourceAdapter;J)V
    .locals 0
    .parameter "fragment"
    .parameter "adapter"
    .parameter "resourceType"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lmiui/app/resourcebrowser/view/AudioBatchResourceHandler;-><init>(Lmiui/app/resourcebrowser/ResourceListFragment;Lmiui/app/resourcebrowser/ResourceAdapter;)V

    .line 19
    iput-wide p3, p0, Lcom/android/thememanager/util/ThemeAudioBatchHandler;->mResourceType:J

    .line 20
    return-void
.end method


# virtual methods
.method protected handleApplyEvent(Lmiui/app/resourcebrowser/resource/Resource;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 24
    new-instance v0, Lcom/android/thememanager/util/ThemeResourceState;

    invoke-direct {v0}, Lcom/android/thememanager/util/ThemeResourceState;-><init>()V

    .line 25
    .local v0, state:Lcom/android/thememanager/util/ThemeResourceState;
    invoke-virtual {p1}, Lmiui/app/resourcebrowser/resource/Resource;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/thememanager/util/ThemeResourceState;->localPath:Ljava/lang/String;

    .line 26
    iget-wide v1, p0, Lcom/android/thememanager/util/ThemeAudioBatchHandler;->mResourceType:J

    iput-wide v1, v0, Lcom/android/thememanager/util/ThemeResourceState;->resourceType:J

    .line 27
    iget-object v1, v0, Lcom/android/thememanager/util/ThemeResourceState;->applyParameters:Lcom/android/thememanager/util/ThemeResourceState$ApplyParmeters;

    iget-wide v2, p0, Lcom/android/thememanager/util/ThemeAudioBatchHandler;->mResourceType:J

    iput-wide v2, v1, Lcom/android/thememanager/util/ThemeResourceState$ApplyParmeters;->applyComponentFlags:J

    .line 28
    iget-object v1, p0, Lcom/android/thememanager/util/ThemeAudioBatchHandler;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    iget-object v1, v1, Lmiui/app/resourcebrowser/ResourceAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/android/thememanager/util/ThemeApplyUtils;->doApplyResource(Landroid/app/Activity;Lcom/android/thememanager/util/ThemeResourceState;)V

    .line 30
    iget-object v1, p0, Lcom/android/thememanager/util/ThemeAudioBatchHandler;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    invoke-virtual {p1}, Lmiui/app/resourcebrowser/resource/Resource;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/resourcebrowser/ResourceAdapter;->updateCurrentUsingPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/android/thememanager/util/ThemeAudioBatchHandler;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    invoke-virtual {v1}, Lmiui/app/resourcebrowser/ResourceAdapter;->notifyDataSetChanged()V

    .line 33
    :cond_0
    return-void
.end method
