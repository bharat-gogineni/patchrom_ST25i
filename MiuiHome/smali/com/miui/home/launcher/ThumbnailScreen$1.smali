.class Lcom/miui/home/launcher/ThumbnailScreen$1;
.super Ljava/lang/Object;
.source "ThumbnailScreen.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ThumbnailScreen;->startMovingAnimation(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ThumbnailScreen;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ThumbnailScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailScreen$1;->this$0:Lcom/miui/home/launcher/ThumbnailScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailScreen$1;->this$0:Lcom/miui/home/launcher/ThumbnailScreen;

    const/4 v1, 0x0

    #setter for: Lcom/miui/home/launcher/ThumbnailScreen;->mMovingAnimationStarted:Z
    invoke-static {v0, v1}, Lcom/miui/home/launcher/ThumbnailScreen;->access$002(Lcom/miui/home/launcher/ThumbnailScreen;Z)Z

    .line 200
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 202
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 196
    return-void
.end method
