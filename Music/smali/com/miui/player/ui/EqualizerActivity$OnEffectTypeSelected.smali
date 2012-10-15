.class Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeSelected;
.super Ljava/lang/Object;
.source "EqualizerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/EqualizerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnEffectTypeSelected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/EqualizerActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/EqualizerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeSelected;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 440
    iget-object v1, p0, Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeSelected;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    iget-object v1, v1, Lcom/miui/player/ui/EqualizerActivity;->mIdArr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeSelected;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    iget-object v1, v1, Lcom/miui/player/ui/EqualizerActivity;->mIdArr:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 442
    .local v0, newId:I
    iget-object v1, p0, Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeSelected;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-virtual {v1, v0}, Lcom/miui/player/ui/EqualizerActivity;->saveEqualizerConfigId(I)V

    .line 443
    iget-object v1, p0, Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeSelected;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-virtual {v1, v0, v2}, Lcom/miui/player/ui/EqualizerActivity;->refreshEqualizer(IZ)V

    .line 444
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeSelected;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/miui/player/ui/EqualizerActivity;->notifyServiceEqualizer(Z)V

    .line 446
    .end local v0           #newId:I
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 447
    return-void

    .line 444
    .restart local v0       #newId:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
