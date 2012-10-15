.class Lcom/miui/player/plugin/PlugInManager$CheckedStatus;
.super Ljava/lang/Object;
.source "PlugInManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/plugin/PlugInManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckedStatus"
.end annotation


# instance fields
.field public final mPlugInSpecific:Ljava/lang/String;

.field public final mStatus:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "status"
    .parameter "specific"

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput p1, p0, Lcom/miui/player/plugin/PlugInManager$CheckedStatus;->mStatus:I

    .line 294
    iput-object p2, p0, Lcom/miui/player/plugin/PlugInManager$CheckedStatus;->mPlugInSpecific:Ljava/lang/String;

    .line 295
    return-void
.end method
