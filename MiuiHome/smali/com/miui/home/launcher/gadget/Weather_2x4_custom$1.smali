.class Lcom/miui/home/launcher/gadget/Weather_2x4_custom$1;
.super Ljava/lang/Object;
.source "Weather_2x4_custom.java"

# interfaces
.implements Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/Weather_2x4_custom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_custom;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/Weather_2x4_custom;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom$1;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_custom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonDoubleClick(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonDown(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonLongClick(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonUp(Ljava/lang/String;)Z
    .locals 5
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 221
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom$1;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_custom;

    invoke-virtual {v4}, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->isInEdit()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    :goto_0
    return v2

    .line 224
    :cond_0
    const-string v4, "button1"

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 225
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, iTime:Landroid/content/Intent;
    const-string v3, "com.android.deskclock"

    const-string v4, "com.android.deskclock.AlarmClock"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom$1;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_custom;

    invoke-virtual {v3}, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/miui/home/launcher/LauncherApplication;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 231
    .end local v1           #iTime:Landroid/content/Intent;
    :cond_1
    const-string v4, "button2"

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 232
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, iData:Landroid/content/Intent;
    const-string v3, "com.android.calendar"

    const-string v4, "com.android.calendar.LaunchActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom$1;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_custom;

    invoke-virtual {v3}, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/miui/home/launcher/LauncherApplication;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 238
    .end local v0           #iData:Landroid/content/Intent;
    :cond_2
    const-string v4, "button3"

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 239
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom$1;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_custom;

    invoke-virtual {v4}, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->isWeatherAppInstalled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 240
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom$1;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_custom;

    invoke-virtual {v3}, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->gotoMarket()V

    goto :goto_0

    .line 242
    :cond_3
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom$1;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_custom;

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->updateCity(Z)V

    .line 243
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom$1;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_custom;

    #calls: Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->updateCity()V
    invoke-static {v3}, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->access$000(Lcom/miui/home/launcher/gadget/Weather_2x4_custom;)V

    goto :goto_0

    .line 248
    :cond_4
    const-string v4, "button4"

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 249
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom$1;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_custom;

    invoke-virtual {v3}, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->gotoWeather()V

    goto :goto_0

    :cond_5
    move v2, v3

    .line 252
    goto :goto_0
.end method
