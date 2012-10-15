.class Lcom/android/thememanager/LocalThemeResourceListFragment$2;
.super Landroid/os/Handler;
.source "LocalThemeResourceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/LocalThemeResourceListFragment;->getRingtoneFiltingHeader()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;


# direct methods
.method constructor <init>(Lcom/android/thememanager/LocalThemeResourceListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$2;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 167
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 168
    .local v1, minDuration:I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 170
    .local v0, maxDuration:I
    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$2;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    #getter for: Lcom/android/thememanager/LocalThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;
    invoke-static {v2}, Lcom/android/thememanager/LocalThemeResourceListFragment;->access$500(Lcom/android/thememanager/LocalThemeResourceListFragment;)Lmiui/app/resourcebrowser/ResourceAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/thememanager/LocalThemeResourceAdapter;

    invoke-virtual {v2}, Lcom/android/thememanager/LocalThemeResourceAdapter;->clearVisitors()V

    .line 171
    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$2;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    #getter for: Lcom/android/thememanager/LocalThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;
    invoke-static {v2}, Lcom/android/thememanager/LocalThemeResourceListFragment;->access$600(Lcom/android/thememanager/LocalThemeResourceListFragment;)Lmiui/app/resourcebrowser/ResourceAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/resourcebrowser/ResourceAdapter;->clearResourceSet()V

    .line 172
    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$2;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    #getter for: Lcom/android/thememanager/LocalThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/thememanager/LocalThemeResourceListFragment;->access$700(Lcom/android/thememanager/LocalThemeResourceListFragment;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "miui.app.resourcebrowser.RINGTONE_MIN_DURATION_LIMIT"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$2;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    #getter for: Lcom/android/thememanager/LocalThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/thememanager/LocalThemeResourceListFragment;->access$800(Lcom/android/thememanager/LocalThemeResourceListFragment;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "miui.app.resourcebrowser.RINGTONE_MAX_DURATION_LIMIT"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$2;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    #getter for: Lcom/android/thememanager/LocalThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;
    invoke-static {v2}, Lcom/android/thememanager/LocalThemeResourceListFragment;->access$900(Lcom/android/thememanager/LocalThemeResourceListFragment;)Lmiui/app/resourcebrowser/ResourceAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/resourcebrowser/ResourceAdapter;->loadData()V

    .line 175
    return-void
.end method
