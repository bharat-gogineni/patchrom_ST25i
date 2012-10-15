.class Lcom/miui/home/launcher/gadget/Weather_2x4_new$5;
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
    .line 468
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$5;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$5;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->isInEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    :goto_0
    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$5;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    #getter for: Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mIsWeatherInstalled:Z
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->access$200(Lcom/miui/home/launcher/gadget/Weather_2x4_new;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$5;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->gotoMarket()V

    goto :goto_0

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$5;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    const/4 v1, 0x0

    #calls: Lcom/miui/home/launcher/gadget/Weather_2x4_new;->switchCity(Z)V
    invoke-static {v0, v1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->access$000(Lcom/miui/home/launcher/gadget/Weather_2x4_new;Z)V

    goto :goto_0
.end method
