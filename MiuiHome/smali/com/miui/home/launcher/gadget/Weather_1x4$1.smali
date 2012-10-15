.class Lcom/miui/home/launcher/gadget/Weather_1x4$1;
.super Ljava/lang/Object;
.source "Weather_1x4.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/gadget/Weather_1x4;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/Weather_1x4;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/Weather_1x4;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Weather_1x4$1;->this$0:Lcom/miui/home/launcher/gadget/Weather_1x4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_1x4$1;->this$0:Lcom/miui/home/launcher/gadget/Weather_1x4;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Weather_1x4;->isInEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_1x4$1;->this$0:Lcom/miui/home/launcher/gadget/Weather_1x4;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/gadget/Weather_1x4;->updateCity(Z)V

    .line 124
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_1x4$1;->this$0:Lcom/miui/home/launcher/gadget/Weather_1x4;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Weather_1x4;->paint()V

    goto :goto_0
.end method
