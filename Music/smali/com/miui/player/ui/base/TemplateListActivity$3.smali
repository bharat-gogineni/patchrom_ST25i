.class Lcom/miui/player/ui/base/TemplateListActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "TemplateListActivity.java"


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
    .line 277
    iput-object p1, p0, Lcom/miui/player/ui/base/TemplateListActivity$3;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 281
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity$3;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    iget-object v0, v0, Lcom/miui/player/ui/base/TemplateListActivity;->mRescanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 282
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity$3;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    iget-object v0, v0, Lcom/miui/player/ui/base/TemplateListActivity;->mRescanHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/player/ui/base/TemplateListActivity$3;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    iget-object v1, v1, Lcom/miui/player/ui/base/TemplateListActivity;->mRescanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 283
    return-void
.end method
