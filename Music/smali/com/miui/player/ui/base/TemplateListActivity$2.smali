.class Lcom/miui/player/ui/base/TemplateListActivity$2;
.super Landroid/os/Handler;
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
    .line 268
    iput-object p1, p0, Lcom/miui/player/ui/base/TemplateListActivity$2;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity$2;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/base/TemplateListActivity;->launchLoader(Z)V

    .line 273
    return-void
.end method
