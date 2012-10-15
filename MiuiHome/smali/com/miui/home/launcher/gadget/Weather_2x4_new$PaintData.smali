.class Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;
.super Ljava/lang/Object;
.source "Weather_2x4_new.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/Weather_2x4_new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaintData"
.end annotation


# instance fields
.field public bg:I

.field public city:Ljava/lang/CharSequence;

.field public date:Ljava/lang/CharSequence;

.field public description:Ljava/lang/CharSequence;

.field public temp:Ljava/lang/CharSequence;

.field public tempRange:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

.field public timeH:Ljava/lang/CharSequence;

.field public timeM:Ljava/lang/CharSequence;

.field public wind:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/gadget/Weather_2x4_new;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/gadget/Weather_2x4_new;Lcom/miui/home/launcher/gadget/Weather_2x4_new$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;-><init>(Lcom/miui/home/launcher/gadget/Weather_2x4_new;)V

    return-void
.end method
