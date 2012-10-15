.class Lcom/miui/home/launcher/upsidescene/SpriteView$2;
.super Ljava/lang/Object;
.source "SpriteView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/upsidescene/SpriteView;->rebuildContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/SpriteView;

.field final synthetic val$buttonSprite:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/upsidescene/SpriteView;Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView$2;->this$0:Lcom/miui/home/launcher/upsidescene/SpriteView;

    iput-object p2, p0, Lcom/miui/home/launcher/upsidescene/SpriteView$2;->val$buttonSprite:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView$2;->this$0:Lcom/miui/home/launcher/upsidescene/SpriteView;

    #getter for: Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->access$200(Lcom/miui/home/launcher/upsidescene/SpriteView;)Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView$2;->val$buttonSprite:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->isBroadcast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView$2;->this$0:Lcom/miui/home/launcher/upsidescene/SpriteView;

    #getter for: Lcom/miui/home/launcher/upsidescene/SpriteView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->access$300(Lcom/miui/home/launcher/upsidescene/SpriteView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView$2;->val$buttonSprite:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView$2;->this$0:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView$2;->val$buttonSprite:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherApplication;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
