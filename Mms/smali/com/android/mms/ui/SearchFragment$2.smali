.class Lcom/android/mms/ui/SearchFragment$2;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 176
    iput-object p1, p0, Lcom/android/mms/ui/SearchFragment$2;->this$0:Lcom/android/mms/ui/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$2;->this$0:Lcom/android/mms/ui/SearchFragment;

    #getter for: Lcom/android/mms/ui/SearchFragment;->mAdapter:Lcom/android/mms/ui/SearchFragment$SearchAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/SearchFragment;->access$000(Lcom/android/mms/ui/SearchFragment;)Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->hasRunningTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$2;->this$0:Lcom/android/mms/ui/SearchFragment;

    #getter for: Lcom/android/mms/ui/SearchFragment;->mAdapter:Lcom/android/mms/ui/SearchFragment$SearchAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/SearchFragment;->access$000(Lcom/android/mms/ui/SearchFragment;)Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->query()V

    .line 182
    :cond_0
    return-void
.end method
