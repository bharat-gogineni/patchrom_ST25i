.class Lcom/miui/player/ui/controller/ToolBarController$1;
.super Ljava/lang/Object;
.source "ToolBarController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/controller/ToolBarController;->toggleEqualizer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/controller/ToolBarController;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/controller/ToolBarController;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/miui/player/ui/controller/ToolBarController$1;->this$0:Lcom/miui/player/ui/controller/ToolBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 178
    const-string v2, "com.android.settings/.BatterySettings"

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 179
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 180
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 182
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 183
    iget-object v2, p0, Lcom/miui/player/ui/controller/ToolBarController$1;->this$0:Lcom/miui/player/ui/controller/ToolBarController;

    iget-object v2, v2, Lcom/miui/player/ui/controller/ToolBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 185
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
