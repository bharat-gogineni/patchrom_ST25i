.class Lcom/android/server/MountService$4$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$4;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$4;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/server/MountService$4$1;->this$1:Lcom/android/server/MountService$4;

    iput-object p2, p0, Lcom/android/server/MountService$4$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 716
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService$4$1;->this$1:Lcom/android/server/MountService$4;

    iget-object v2, v2, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$4$1;->val$path:Ljava/lang/String;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v1

    .local v1, rc:I
    if-eqz v1, :cond_0

    .line 717
    const-string v2, "MountService"

    const-string v3, "Insertion mount failed (%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    .end local v1           #rc:I
    :cond_0
    :goto_0
    return-void

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "MountService"

    const-string v3, "Failed to mount media on insertion"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
