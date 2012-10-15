.class Lcom/miui/home/launcher/InstallWidgetReceiver$1;
.super Ljava/lang/Object;
.source "InstallWidgetReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/InstallWidgetReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/InstallWidgetReceiver;

.field final synthetic val$intentData:Landroid/content/Intent;

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$runningContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/InstallWidgetReceiver;Landroid/content/Context;Landroid/content/Intent;Lcom/miui/home/launcher/Launcher;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->this$0:Lcom/miui/home/launcher/InstallWidgetReceiver;

    iput-object p2, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$runningContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$intentData:Landroid/content/Intent;

    iput-object p4, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$runningContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v22

    .line 37
    .local v22, widgetManager:Landroid/appwidget/AppWidgetManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$intentData:Landroid/content/Intent;

    const-string v4, "miui.intent.extra.provider_component_name"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Landroid/content/ComponentName;

    .line 39
    .local v19, providerName:Landroid/content/ComponentName;
    if-nez v19, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const/16 v17, 0x0

    .line 43
    .local v17, pInfo:Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual/range {v22 .. v22}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v20

    .line 44
    .local v20, providers:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/appwidget/AppWidgetProviderInfo;

    .line 45
    .local v15, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v2, v15, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    move-object/from16 v17, v15

    .line 50
    .end local v15           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_3
    if-eqz v17, :cond_0

    .line 51
    new-instance v18, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 52
    .local v18, providerInfo:Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;
    invoke-static/range {v18 .. v18}, Lcom/miui/home/launcher/ResConfig;->calcWidgetSpans(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;

    move-result-object v13

    .line 54
    .local v13, host:Landroid/appwidget/AppWidgetHost;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v16

    .line 55
    .local v16, manager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v13}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v11

    .line 57
    .local v11, appWidgetId:I
    :try_start_0
    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    new-instance v3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-object/from16 v0, v18

    invoke-direct {v3, v11, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(ILcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 63
    .local v3, widgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$runningContext:Landroid/content/Context;

    const-wide/16 v4, -0x64

    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x1

    invoke-static/range {v2 .. v10}, Lcom/miui/home/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJIIZ)V

    .line 65
    iget-wide v4, v3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_4

    .line 66
    new-instance v21, Lcom/miui/home/launcher/InstallWidgetReceiver$1$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v11}, Lcom/miui/home/launcher/InstallWidgetReceiver$1$1;-><init>(Lcom/miui/home/launcher/InstallWidgetReceiver$1;Lcom/miui/home/launcher/LauncherAppWidgetInfo;I)V

    .line 85
    .local v21, tryToAddWidget:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/InstallWidgetReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 58
    .end local v3           #widgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    .end local v21           #tryToAddWidget:Ljava/lang/Runnable;
    :catch_0
    move-exception v12

    .line 59
    .local v12, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "InstallWidgetReceiver"

    const-string v4, "Error when bind app widget"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 87
    .end local v12           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #widgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    :cond_4
    invoke-virtual {v13, v11}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    goto/16 :goto_0
.end method
