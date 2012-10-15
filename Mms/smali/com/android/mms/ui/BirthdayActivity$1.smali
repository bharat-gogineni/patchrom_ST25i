.class Lcom/android/mms/ui/BirthdayActivity$1;
.super Ljava/lang/Object;
.source "BirthdayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BirthdayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/android/mms/ui/BirthdayActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BirthdayActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/mms/ui/BirthdayActivity$1;->this$0:Lcom/android/mms/ui/BirthdayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/BirthdayActivity$1;->mIndex:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/ui/BirthdayActivity$1;->this$0:Lcom/android/mms/ui/BirthdayActivity;

    #getter for: Lcom/android/mms/ui/BirthdayActivity;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mms/ui/BirthdayActivity;->access$100(Lcom/android/mms/ui/BirthdayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/ui/BirthdayActivity;->access$000()[I

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/BirthdayActivity$1;->mIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    iget-object v0, p0, Lcom/android/mms/ui/BirthdayActivity$1;->this$0:Lcom/android/mms/ui/BirthdayActivity;

    #getter for: Lcom/android/mms/ui/BirthdayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/BirthdayActivity;->access$300(Lcom/android/mms/ui/BirthdayActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/BirthdayActivity$1;->this$0:Lcom/android/mms/ui/BirthdayActivity;

    #getter for: Lcom/android/mms/ui/BirthdayActivity;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/mms/ui/BirthdayActivity;->access$200(Lcom/android/mms/ui/BirthdayActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    iget v0, p0, Lcom/android/mms/ui/BirthdayActivity$1;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/BirthdayActivity$1;->mIndex:I

    .line 47
    iget v0, p0, Lcom/android/mms/ui/BirthdayActivity$1;->mIndex:I

    invoke-static {}, Lcom/android/mms/ui/BirthdayActivity;->access$000()[I

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/BirthdayActivity$1;->mIndex:I

    .line 50
    :cond_0
    return-void
.end method
