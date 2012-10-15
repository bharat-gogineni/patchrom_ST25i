.class public Lcom/miui/gallery/cloud/NeedSaveToCloudReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NeedSaveToCloudReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    .line 18
    const-string v4, "NeedSaveToCloudReceiver"

    const-string v5, "onReceive broadcast"

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, broadcastAction:Ljava/lang/String;
    const-string v4, "com.miui.gallery.save_to_cloud_action"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 21
    const-string v4, "extra_file_path"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, filePath:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 23
    const-string v4, "NeedSaveToCloudReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filePath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " error, can\'t save to cloud."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .end local v1           #filePath:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 26
    .restart local v1       #filePath:Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/miui/gallery/cloud/CloudUtils;->getCloudGroupIdByFilePath(Ljava/lang/String;)I

    move-result v2

    .line 27
    .local v2, groupId:I
    invoke-static {v1}, Lcom/miui/gallery/cloud/CloudUtils;->getServerTypeByFilePath(Ljava/lang/String;)I

    move-result v3

    .line 28
    .local v3, serverType:I
    if-eq v2, v6, :cond_2

    if-ne v3, v6, :cond_3

    .line 30
    :cond_2
    const-string v4, "NeedSaveToCloudReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filePath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " groupId or serverType error, can\'t save to cloud."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 34
    :cond_3
    invoke-static {p1, v1, v2, v3}, Lmiui/provider/GalleryCloudUtils;->saveToCloudDB(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0
.end method
