.class Lcom/android/mms/ui/BirthdayActivity$2;
.super Ljava/lang/Object;
.source "BirthdayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BirthdayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BirthdayActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BirthdayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/mms/ui/BirthdayActivity$2;->this$0:Lcom/android/mms/ui/BirthdayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/mms/ui/BirthdayActivity$2;->this$0:Lcom/android/mms/ui/BirthdayActivity;

    #getter for: Lcom/android/mms/ui/BirthdayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/BirthdayActivity;->access$300(Lcom/android/mms/ui/BirthdayActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/BirthdayActivity$2;->this$0:Lcom/android/mms/ui/BirthdayActivity;

    #getter for: Lcom/android/mms/ui/BirthdayActivity;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/mms/ui/BirthdayActivity;->access$200(Lcom/android/mms/ui/BirthdayActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/BirthdayActivity$2;->this$0:Lcom/android/mms/ui/BirthdayActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BirthdayActivity;->finish()V

    .line 65
    return-void
.end method
