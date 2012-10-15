.class Lcom/miui/player/ui/base/TemplateListActivity$ServiceStatusListener;
.super Landroid/content/BroadcastReceiver;
.source "TemplateListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/base/TemplateListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/base/TemplateListActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/base/TemplateListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/miui/player/ui/base/TemplateListActivity$ServiceStatusListener;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity$ServiceStatusListener;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v0, p2}, Lcom/miui/player/ui/base/TemplateListActivity;->handleServiceNotification(Landroid/content/Intent;)V

    .line 239
    return-void
.end method

.method public register([Ljava/lang/String;)V
    .locals 6
    .parameter "actions"

    .prologue
    .line 222
    if-eqz p1, :cond_1

    array-length v5, p1

    if-lez v5, :cond_1

    .line 223
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 224
    .local v2, filter:Landroid/content/IntentFilter;
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 225
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/miui/player/ui/base/TemplateListActivity$ServiceStatusListener;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v5, p0, v2}, Lcom/miui/player/ui/base/TemplateListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity$ServiceStatusListener;->this$0:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-static {v0, p0}, Lcom/miui/player/ui/UIHelper;->unregistBroadcastReceiverSafe(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 234
    return-void
.end method
