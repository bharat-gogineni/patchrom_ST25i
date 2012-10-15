.class Lcom/miui/home/launcher/InstallWidgetReceiver$1$1;
.super Ljava/lang/Object;
.source "InstallWidgetReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/InstallWidgetReceiver$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/InstallWidgetReceiver$1;

.field final synthetic val$appWidgetId:I

.field final synthetic val$widgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/InstallWidgetReceiver$1;Lcom/miui/home/launcher/LauncherAppWidgetInfo;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1$1;->this$1:Lcom/miui/home/launcher/InstallWidgetReceiver$1;

    iput-object p2, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1$1;->val$widgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iput p3, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1$1;->val$appWidgetId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 69
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1$1;->this$1:Lcom/miui/home/launcher/InstallWidgetReceiver$1;

    iget-object v4, v4, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1$1;->val$widgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-wide v5, v5, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    invoke-virtual {v4, v5, v6}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 70
    iget-object v3, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1$1;->this$1:Lcom/miui/home/launcher/InstallWidgetReceiver$1;

    iget-object v3, v3, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 83
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1$1;->this$1:Lcom/miui/home/launcher/InstallWidgetReceiver$1;

    iget-object v3, v3, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iget-object v4, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1$1;->val$widgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/Launcher;->bindAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    .line 74
    iget-object v3, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1$1;->this$1:Lcom/miui/home/launcher/InstallWidgetReceiver$1;

    iget-object v3, v3, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$intentData:Landroid/content/Intent;

    const-string v4, "miui.intent.extra.result_receiver_component_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 76
    .local v2, resultReceiver:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "miui.intent.action.BIND_WIDGET_COMPLETED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, result:Landroid/content/Intent;
    const/4 v3, 0x2

    new-array v0, v3, [J

    .line 78
    .local v0, pair:[J
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1$1;->this$1:Lcom/miui/home/launcher/InstallWidgetReceiver$1;

    iget-object v4, v4, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$intentData:Landroid/content/Intent;

    const-string v5, "android.intent.extra.UID"

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    aput-wide v4, v0, v3

    .line 79
    const/4 v3, 0x1

    iget v4, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1$1;->val$appWidgetId:I

    int-to-long v4, v4

    aput-wide v4, v0, v3

    .line 80
    const-string v3, "miui.intent.extra.bind_widget_result"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 81
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 82
    iget-object v3, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1$1;->this$1:Lcom/miui/home/launcher/InstallWidgetReceiver$1;

    iget-object v3, v3, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$runningContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
