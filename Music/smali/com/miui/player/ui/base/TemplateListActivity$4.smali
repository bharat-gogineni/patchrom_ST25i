.class Lcom/miui/player/ui/base/TemplateListActivity$4;
.super Ljava/lang/Object;
.source "TemplateListActivity.java"

# interfaces
.implements Lcom/miui/player/util/LoopChecker$CheckAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/base/TemplateListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/base/TemplateListActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/base/TemplateListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/miui/player/ui/base/TemplateListActivity$4;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 453
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    :goto_0
    return v6

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity$4;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/base/TemplateListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    .line 460
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    move v8, v6

    .line 461
    .local v8, prepared:Z
    :goto_1
    if-eqz v7, :cond_1

    .line 462
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 465
    :cond_1
    if-nez v8, :cond_3

    move v6, v9

    .line 466
    goto :goto_0

    .end local v8           #prepared:Z
    :cond_2
    move v8, v9

    .line 460
    goto :goto_1

    .line 469
    .restart local v8       #prepared:Z
    :cond_3
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity$4;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/base/TemplateListActivity;->recoverPlayList()V

    goto :goto_0
.end method
