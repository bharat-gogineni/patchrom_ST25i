.class Lcom/miui/home/launcher/gadget/Weather_2x4_new$1;
.super Ljava/util/HashMap;
.source "Weather_2x4_new.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/Weather_2x4_new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/Weather_2x4_new;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$1;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 47
    const-string v0, "\u4e1c"

    const-string v1, "E"

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "\u5357"

    const-string v1, "S"

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v0, "\u897f"

    const-string v1, "W"

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "\u5317"

    const-string v1, "N"

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method
