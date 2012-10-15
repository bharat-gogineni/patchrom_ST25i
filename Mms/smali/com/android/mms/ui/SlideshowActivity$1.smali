.class Lcom/android/mms/ui/SlideshowActivity$1;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;

.field final synthetic val$model:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowActivity$1;->val$model:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isRotating()Z
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 423
    iget-object v7, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {}, Lcom/android/mms/dom/smil/SmilPlayer;->getPlayer()Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v8

    #setter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v7, v8}, Lcom/android/mms/ui/SlideshowActivity;->access$002(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)Lcom/android/mms/dom/smil/SmilPlayer;

    .line 424
    iget-object v7, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSlideCount:I
    invoke-static {v7}, Lcom/android/mms/ui/SlideshowActivity;->access$100(Lcom/android/mms/ui/SlideshowActivity;)I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 428
    iget-object v7, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #calls: Lcom/android/mms/ui/SlideshowActivity;->initMediaController()V
    invoke-static {v7}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 429
    iget-object v7, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;
    invoke-static {v7}, Lcom/android/mms/ui/SlideshowActivity;->access$400(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v8}, Lcom/android/mms/ui/SlideshowActivity;->access$300(Lcom/android/mms/ui/SlideshowActivity;)Landroid/widget/MediaController;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/SlideView;->setMediaController(Landroid/widget/MediaController;)V

    .line 433
    :cond_0
    iget-object v7, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v8, p0, Lcom/android/mms/ui/SlideshowActivity$1;->val$model:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v8}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v8

    #setter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v7, v8}, Lcom/android/mms/ui/SlideshowActivity;->access$502(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;

    .line 434
    iget-object v7, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v7}, Lcom/android/mms/ui/SlideshowActivity;->access$500(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v7

    #calls: Lcom/android/mms/ui/SlideshowActivity;->isMMSConformance(Lorg/w3c/dom/smil/SMILDocument;)Z
    invoke-static {v7}, Lcom/android/mms/ui/SlideshowActivity;->access$600(Lorg/w3c/dom/smil/SMILDocument;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, imageLeft:I
    const/4 v2, 0x0

    .line 437
    .local v2, imageTop:I
    const/4 v4, 0x0

    .line 438
    .local v4, textLeft:I
    const/4 v6, 0x0

    .line 439
    .local v6, textTop:I
    iget-object v7, p0, Lcom/android/mms/ui/SlideshowActivity$1;->val$model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    .line 440
    .local v3, layout:Lcom/android/mms/model/LayoutModel;
    if-eqz v3, :cond_2

    .line 441
    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v1

    .line 442
    .local v1, imageRegion:Lcom/android/mms/model/RegionModel;
    if-eqz v1, :cond_1

    .line 443
    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v0

    .line 444
    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v2

    .line 446
    :cond_1
    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 447
    .local v5, textRegion:Lcom/android/mms/model/RegionModel;
    if-eqz v5, :cond_2

    .line 448
    invoke-virtual {v5}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v4

    .line 449
    invoke-virtual {v5}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v6

    .line 452
    .end local v1           #imageRegion:Lcom/android/mms/model/RegionModel;
    .end local v5           #textRegion:Lcom/android/mms/model/RegionModel;
    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;
    invoke-static {v7}, Lcom/android/mms/ui/SlideshowActivity;->access$400(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideView;

    move-result-object v7

    invoke-virtual {v7, v4, v6, v0, v2}, Lcom/android/mms/ui/SlideView;->enableMMSConformanceMode(IIII)V

    .line 463
    .end local v0           #imageLeft:I
    .end local v2           #imageTop:I
    .end local v3           #layout:Lcom/android/mms/model/LayoutModel;
    .end local v4           #textLeft:I
    .end local v6           #textTop:I
    :cond_3
    iget-object v7, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v7}, Lcom/android/mms/ui/SlideshowActivity;->access$500(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/events/EventTarget;

    const-string v8, "SimlDocumentEnd"

    iget-object v9, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 467
    iget-object v7, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v7}, Lcom/android/mms/ui/SlideshowActivity;->access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v8}, Lcom/android/mms/ui/SlideshowActivity;->access$500(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/mms/dom/smil/SmilPlayer;->init(Lorg/w3c/dom/smil/ElementTime;)V

    .line 468
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity$1;->isRotating()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 469
    iget-object v7, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v7}, Lcom/android/mms/ui/SlideshowActivity;->access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/dom/smil/SmilPlayer;->reload()V

    .line 473
    :goto_0
    return-void

    .line 471
    :cond_4
    iget-object v7, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v7}, Lcom/android/mms/ui/SlideshowActivity;->access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/dom/smil/SmilPlayer;->play()V

    goto :goto_0
.end method
