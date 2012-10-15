.class Lcom/android/thememanager/ThemeComponentApplyActivity$1;
.super Lcom/android/thememanager/util/ThemeOperationHandler;
.source "ThemeComponentApplyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/ThemeComponentApplyActivity;->getOperationHandler(Lmiui/app/resourcebrowser/view/ResourceOperationView;)Lcom/android/thememanager/util/ThemeOperationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/ThemeComponentApplyActivity;


# direct methods
.method constructor <init>(Lcom/android/thememanager/ThemeComponentApplyActivity;Landroid/app/Activity;Lmiui/app/resourcebrowser/view/ResourceOperationView;Lcom/android/thememanager/util/ThemeResourceState;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$1;->this$0:Lcom/android/thememanager/ThemeComponentApplyActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/thememanager/util/ThemeOperationHandler;-><init>(Landroid/app/Activity;Lmiui/app/resourcebrowser/view/ResourceOperationView;Lcom/android/thememanager/util/ThemeResourceState;)V

    return-void
.end method


# virtual methods
.method public handleApplyEvent()V
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity$1;->getResourceState()Lmiui/app/resourcebrowser/view/ResourceState;

    move-result-object v0

    check-cast v0, Lcom/android/thememanager/util/ThemeResourceState;

    .line 114
    .local v0, resource:Lcom/android/thememanager/util/ThemeResourceState;
    iget-object v1, v0, Lcom/android/thememanager/util/ThemeResourceState;->applyParameters:Lcom/android/thememanager/util/ThemeResourceState$ApplyParmeters;

    iget-object v2, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$1;->this$0:Lcom/android/thememanager/ThemeComponentApplyActivity;

    #calls: Lcom/android/thememanager/ThemeComponentApplyActivity;->getSelectComponentFlags()J
    invoke-static {v2}, Lcom/android/thememanager/ThemeComponentApplyActivity;->access$000(Lcom/android/thememanager/ThemeComponentApplyActivity;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/thememanager/util/ThemeResourceState$ApplyParmeters;->applyComponentFlags:J

    .line 115
    iget-object v1, v0, Lcom/android/thememanager/util/ThemeResourceState;->applyParameters:Lcom/android/thememanager/util/ThemeResourceState$ApplyParmeters;

    iget-object v2, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$1;->this$0:Lcom/android/thememanager/ThemeComponentApplyActivity;

    #calls: Lcom/android/thememanager/ThemeComponentApplyActivity;->needRemoveAllOldTheme()Z
    invoke-static {v2}, Lcom/android/thememanager/ThemeComponentApplyActivity;->access$100(Lcom/android/thememanager/ThemeComponentApplyActivity;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/thememanager/util/ThemeResourceState$ApplyParmeters;->needRemoveAllOldComponents:Z

    .line 116
    invoke-super {p0}, Lcom/android/thememanager/util/ThemeOperationHandler;->handleApplyEvent()V

    .line 117
    return-void
.end method

.method public handleDeleteEvent()V
    .locals 5

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/thememanager/util/ThemeOperationHandler;->handleDeleteEvent()V

    .line 129
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity$1;->getResourceState()Lmiui/app/resourcebrowser/view/ResourceState;

    move-result-object v1

    .line 130
    .local v1, resource:Lmiui/app/resourcebrowser/view/ResourceState;
    iget-object v2, v1, Lmiui/app/resourcebrowser/view/ResourceState;->localPath:Ljava/lang/String;

    const/16 v3, 0x2f

    const/16 v4, 0x5f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, endcodedPath:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lmiui/app/resourcebrowser/ResourceConstants;->PREVIEW_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lmiui/util/CommandLineUtils;->rm(Ljava/lang/String;Ljava/lang/String;)Z

    .line 132
    iget-boolean v2, v1, Lmiui/app/resourcebrowser/view/ResourceState;->inLocalPage:Z

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$1;->this$0:Lcom/android/thememanager/ThemeComponentApplyActivity;

    invoke-virtual {v2}, Lcom/android/thememanager/ThemeComponentApplyActivity;->finish()V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$1;->this$0:Lcom/android/thememanager/ThemeComponentApplyActivity;

    const/4 v3, 0x0

    #calls: Lcom/android/thememanager/ThemeComponentApplyActivity;->setComponentGridViewClickable(Z)V
    invoke-static {v2, v3}, Lcom/android/thememanager/ThemeComponentApplyActivity;->access$200(Lcom/android/thememanager/ThemeComponentApplyActivity;Z)V

    goto :goto_0
.end method

.method public handleMagicEvent()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$1;->this$0:Lcom/android/thememanager/ThemeComponentApplyActivity;

    invoke-virtual {v0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->finish()V

    .line 142
    return-void
.end method

.method public handleResourceDownloadSuccessedEvent(Ljava/lang/String;)V
    .locals 2
    .parameter "downloadFilePath"

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/android/thememanager/util/ThemeOperationHandler;->handleResourceDownloadSuccessedEvent(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$1;->this$0:Lcom/android/thememanager/ThemeComponentApplyActivity;

    const/4 v1, 0x1

    #calls: Lcom/android/thememanager/ThemeComponentApplyActivity;->setComponentGridViewClickable(Z)V
    invoke-static {v0, v1}, Lcom/android/thememanager/ThemeComponentApplyActivity;->access$200(Lcom/android/thememanager/ThemeComponentApplyActivity;Z)V

    .line 123
    return-void
.end method
