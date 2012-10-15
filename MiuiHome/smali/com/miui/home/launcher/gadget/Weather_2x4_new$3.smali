.class Lcom/miui/home/launcher/gadget/Weather_2x4_new$3;
.super Ljava/lang/Object;
.source "Weather_2x4_new.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/gadget/Weather_2x4_new;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/Weather_2x4_new;)V
    .locals 0
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$3;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 443
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$3;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->isInEdit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    :goto_0
    return-void

    .line 446
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .local v0, iTime:Landroid/content/Intent;
    const-string v1, "com.android.deskclock"

    const-string v2, "com.android.deskclock.AlarmClock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$3;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/home/launcher/LauncherApplication;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
