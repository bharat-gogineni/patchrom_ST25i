.class Lcom/miui/home/launcher/gadget/Weather_2x4_new$4;
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
    .line 453
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$4;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$4;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->isInEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$4;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->gotoWeather()V

    goto :goto_0
.end method
