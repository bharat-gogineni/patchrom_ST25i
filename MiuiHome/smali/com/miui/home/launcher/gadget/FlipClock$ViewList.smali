.class Lcom/miui/home/launcher/gadget/FlipClock$ViewList;
.super Ljava/util/ArrayList;
.source "FlipClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/FlipClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/FlipClock;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/gadget/FlipClock;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/FlipClock$ViewList;->this$0:Lcom/miui/home/launcher/gadget/FlipClock;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/gadget/FlipClock;Lcom/miui/home/launcher/gadget/FlipClock$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/FlipClock$ViewList;-><init>(Lcom/miui/home/launcher/gadget/FlipClock;)V

    return-void
.end method
