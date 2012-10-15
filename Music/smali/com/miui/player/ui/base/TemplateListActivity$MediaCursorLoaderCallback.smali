.class Lcom/miui/player/ui/base/TemplateListActivity$MediaCursorLoaderCallback;
.super Lcom/miui/player/ui/base/TemplateListActivity$TemplateLoaderCallback;
.source "TemplateListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/base/TemplateListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaCursorLoaderCallback"
.end annotation


# instance fields
.field private final mDelay:J

.field private final mMediaStoreLoaderInfo:Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;

.field final synthetic this$0:Lcom/miui/player/ui/base/TemplateListActivity;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/base/TemplateListActivity;Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;J)V
    .locals 0
    .parameter
    .parameter "info"
    .parameter "delay"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/miui/player/ui/base/TemplateListActivity$MediaCursorLoaderCallback;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-direct {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity$TemplateLoaderCallback;-><init>(Lcom/miui/player/ui/base/TemplateListActivity;)V

    .line 355
    iput-object p2, p0, Lcom/miui/player/ui/base/TemplateListActivity$MediaCursorLoaderCallback;->mMediaStoreLoaderInfo:Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;

    .line 356
    iput-wide p3, p0, Lcom/miui/player/ui/base/TemplateListActivity$MediaCursorLoaderCallback;->mDelay:J

    .line 357
    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 350
    invoke-virtual {p0, p1, p2}, Lcom/miui/player/ui/base/TemplateListActivity$MediaCursorLoaderCallback;->onCreateLoader(ILandroid/os/Bundle;)Lcom/miui/player/ui/base/MediaCursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lcom/miui/player/ui/base/MediaCursorLoader;
    .locals 5
    .parameter "id"
    .parameter "args"

    .prologue
    .line 361
    iget-object v2, p0, Lcom/miui/player/ui/base/TemplateListActivity$MediaCursorLoaderCallback;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v2}, Lcom/miui/player/ui/base/TemplateListActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loader create "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    const/4 v1, 0x0

    .line 363
    .local v1, loader:Lcom/miui/player/ui/base/MediaCursorLoader;
    packed-switch p1, :pswitch_data_0

    .line 371
    :goto_0
    return-object v1

    .line 365
    :pswitch_0
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity$MediaCursorLoaderCallback;->mMediaStoreLoaderInfo:Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;

    .line 366
    .local v0, info:Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;
    new-instance v1, Lcom/miui/player/ui/base/MediaCursorLoader;

    .end local v1           #loader:Lcom/miui/player/ui/base/MediaCursorLoader;
    iget-object v2, p0, Lcom/miui/player/ui/base/TemplateListActivity$MediaCursorLoaderCallback;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v2}, Lcom/miui/player/ui/base/TemplateListActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/miui/player/ui/base/MediaCursorLoader;-><init>(Landroid/content/Context;Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;)V

    .line 367
    .restart local v1       #loader:Lcom/miui/player/ui/base/MediaCursorLoader;
    iget-wide v2, p0, Lcom/miui/player/ui/base/TemplateListActivity$MediaCursorLoaderCallback;->mDelay:J

    invoke-virtual {v1, v2, v3}, Lcom/miui/player/ui/base/MediaCursorLoader;->setUpdateThrottle(J)V

    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
