.class Lcom/android/mms/ui/SearchFragment$1;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/mms/ui/SearchFragment$1;->this$0:Lcom/android/mms/ui/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 4
    .parameter "updated"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$1;->this$0:Lcom/android/mms/ui/SearchFragment;

    iget-object v0, v0, Lcom/android/mms/ui/SearchFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/SearchFragment$1;->this$0:Lcom/android/mms/ui/SearchFragment;

    iget-object v1, v1, Lcom/android/mms/ui/SearchFragment;->mRequestRequery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$1;->this$0:Lcom/android/mms/ui/SearchFragment;

    iget-object v0, v0, Lcom/android/mms/ui/SearchFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/SearchFragment$1;->this$0:Lcom/android/mms/ui/SearchFragment;

    iget-object v1, v1, Lcom/android/mms/ui/SearchFragment;->mRequestRequery:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    return-void
.end method
