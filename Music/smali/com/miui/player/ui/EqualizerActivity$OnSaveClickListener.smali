.class Lcom/miui/player/ui/EqualizerActivity$OnSaveClickListener;
.super Ljava/lang/Object;
.source "EqualizerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/EqualizerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnSaveClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/EqualizerActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/EqualizerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/miui/player/ui/EqualizerActivity$OnSaveClickListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 474
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity$OnSaveClickListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-virtual {v2}, Lcom/miui/player/ui/EqualizerActivity;->getCurrentConfigData()[I

    move-result-object v0

    .line 475
    .local v0, custom:[I
    invoke-static {v0}, Lcom/miui/player/provider/PlayerProviderUtils;->codeEqualizerConfig([I)Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, data:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity$OnSaveClickListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity$OnSaveClickListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    const/4 v4, 0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-static {v2, v3, v4, v1, v5}, Lcom/miui/player/ui/OperationDialog;->makeEqualizerConfigCreator(Landroid/app/Activity;Lcom/miui/player/ui/DialogCallback;ILjava/lang/String;Landroid/content/Intent;)Lcom/miui/player/ui/OperationDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/player/ui/OperationDialog;->show()V

    .line 478
    return-void
.end method
