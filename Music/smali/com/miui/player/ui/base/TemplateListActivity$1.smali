.class Lcom/miui/player/ui/base/TemplateListActivity$1;
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
    .line 201
    iput-object p1, p0, Lcom/miui/player/ui/base/TemplateListActivity$1;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity$1;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/base/TemplateListActivity;->onKillProcess()V

    .line 206
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity$1;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/base/TemplateListActivity;->finish()V

    .line 207
    return-void
.end method
