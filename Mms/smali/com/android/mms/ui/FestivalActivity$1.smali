.class Lcom/android/mms/ui/FestivalActivity$1;
.super Landroid/os/Handler;
.source "FestivalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/FestivalActivity;
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
    .line 59
    iput-object p1, p0, Lcom/android/mms/ui/FestivalActivity$1;->this$0:Lcom/android/mms/ui/FestivalActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/FestivalActivity$1;->this$0:Lcom/android/mms/ui/FestivalActivity;

    #calls: Lcom/android/mms/ui/FestivalActivity;->playAnimation1()V
    invoke-static {v0}, Lcom/android/mms/ui/FestivalActivity;->access$000(Lcom/android/mms/ui/FestivalActivity;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/FestivalActivity$1;->this$0:Lcom/android/mms/ui/FestivalActivity;

    #calls: Lcom/android/mms/ui/FestivalActivity;->playAnimation2()V
    invoke-static {v0}, Lcom/android/mms/ui/FestivalActivity;->access$100(Lcom/android/mms/ui/FestivalActivity;)V

    goto :goto_0

    .line 65
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 66
    iget-object v0, p0, Lcom/android/mms/ui/FestivalActivity$1;->this$0:Lcom/android/mms/ui/FestivalActivity;

    #calls: Lcom/android/mms/ui/FestivalActivity;->playAnimation3()V
    invoke-static {v0}, Lcom/android/mms/ui/FestivalActivity;->access$200(Lcom/android/mms/ui/FestivalActivity;)V

    goto :goto_0

    .line 67
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/FestivalActivity$1;->this$0:Lcom/android/mms/ui/FestivalActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/FestivalActivity;->finish()V

    goto :goto_0
.end method
