.class Lcom/miui/gallery/app/StateManager$StateEntry;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateEntry"
.end annotation


# instance fields
.field public activityState:Lcom/miui/gallery/app/ActivityState;

.field public data:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/miui/gallery/app/ActivityState;)V
    .locals 0
    .parameter "data"
    .parameter "state"

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput-object p1, p0, Lcom/miui/gallery/app/StateManager$StateEntry;->data:Landroid/os/Bundle;

    .line 454
    iput-object p2, p0, Lcom/miui/gallery/app/StateManager$StateEntry;->activityState:Lcom/miui/gallery/app/ActivityState;

    .line 455
    return-void
.end method
