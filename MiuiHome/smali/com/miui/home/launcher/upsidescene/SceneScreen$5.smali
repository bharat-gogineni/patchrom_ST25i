.class Lcom/miui/home/launcher/upsidescene/SceneScreen$5;
.super Ljava/lang/Object;
.source "SceneScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/upsidescene/SceneScreen;->onShowAnimationStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$5;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 508
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$5;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    #getter for: Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;
    invoke-static {v3}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$000(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getChildWidth()I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$5;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    #getter for: Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneData:Lcom/miui/home/launcher/upsidescene/SceneData;
    invoke-static {v4}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$600(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/SceneData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/upsidescene/SceneData;->getScreenWidth()I

    move-result v4

    sub-int v1, v3, v4

    .line 509
    .local v1, scrollRange:I
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$5;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    #getter for: Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;
    invoke-static {v3}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$000(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float v0, v3, v4

    .line 510
    .local v0, rate:F
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$5;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    #getter for: Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;
    invoke-static {v3}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$000(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getCurrentScreen()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$5;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    #getter for: Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;
    invoke-static {v4}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$000(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenCount()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 512
    .local v2, xStep:F
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$5;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    #getter for: Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;
    invoke-static {v3}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$300(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    invoke-virtual {v3, v2, v5, v0, v5}, Lcom/miui/home/launcher/Launcher;->updateWallpaperOffsetAnimate(FFFF)V

    .line 513
    return-void
.end method
