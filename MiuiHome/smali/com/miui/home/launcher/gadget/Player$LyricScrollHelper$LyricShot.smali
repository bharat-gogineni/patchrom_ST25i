.class Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricShot;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LyricShot"
.end annotation


# instance fields
.field public lineIndex:I

.field public percent:D

.field final synthetic this$1:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;ID)V
    .locals 0
    .parameter
    .parameter "index"
    .parameter "p"

    .prologue
    .line 718
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricShot;->this$1:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    iput p2, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricShot;->lineIndex:I

    .line 720
    iput-wide p3, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$LyricShot;->percent:D

    .line 721
    return-void
.end method
