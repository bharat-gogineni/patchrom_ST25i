.class Lcom/android/mms/ui/FestivalActivity$3;
.super Ljava/lang/Object;
.source "FestivalActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FestivalActivity;->playAnimation1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FestivalActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FestivalActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/mms/ui/FestivalActivity$3;->this$0:Lcom/android/mms/ui/FestivalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/mms/ui/FestivalActivity$3;->this$0:Lcom/android/mms/ui/FestivalActivity;

    #getter for: Lcom/android/mms/ui/FestivalActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/FestivalActivity;->access$300(Lcom/android/mms/ui/FestivalActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 160
    iget-object v0, p0, Lcom/android/mms/ui/FestivalActivity$3;->this$0:Lcom/android/mms/ui/FestivalActivity;

    #getter for: Lcom/android/mms/ui/FestivalActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/FestivalActivity;->access$300(Lcom/android/mms/ui/FestivalActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 161
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 155
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 151
    return-void
.end method
