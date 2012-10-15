.class final Lcom/android/mms/ui/MessageUtils$3;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$append:Z

.field final synthetic val$cb:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$imageUri:Landroid/net/Uri;

.field final synthetic val$showProgress:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$3;->val$imageUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/ui/MessageUtils$3;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/mms/ui/MessageUtils$3;->val$showProgress:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/mms/ui/MessageUtils$3;->val$cb:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    iput-boolean p6, p0, Lcom/android/mms/ui/MessageUtils$3;->val$append:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 839
    :try_start_0
    new-instance v1, Lcom/android/mms/ui/UriImage;

    iget-object v5, p0, Lcom/android/mms/ui/MessageUtils$3;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/ui/MessageUtils$3;->val$imageUri:Landroid/net/Uri;

    invoke-direct {v1, v5, v6}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 840
    .local v1, image:Lcom/android/mms/ui/UriImage;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v4

    .line 841
    .local v4, widthLimit:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v0

    .line 845
    .local v0, heightLimit:I
    invoke-virtual {v1}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 846
    move v3, v4

    .line 847
    .local v3, temp:I
    move v4, v0

    .line 848
    move v0, v3

    .line 851
    .end local v3           #temp:I
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v5

    add-int/lit16 v5, v5, -0x1388

    invoke-virtual {v1, v4, v0, v5}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 857
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    iget-object v5, p0, Lcom/android/mms/ui/MessageUtils$3;->val$handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/mms/ui/MessageUtils$3;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 860
    iget-object v5, p0, Lcom/android/mms/ui/MessageUtils$3;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/android/mms/ui/MessageUtils$3$1;

    invoke-direct {v6, p0, v2}, Lcom/android/mms/ui/MessageUtils$3$1;-><init>(Lcom/android/mms/ui/MessageUtils$3;Lcom/google/android/mms/pdu/PduPart;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 866
    return-void

    .line 857
    .end local v0           #heightLimit:I
    .end local v1           #image:Lcom/android/mms/ui/UriImage;
    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v4           #widthLimit:I
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/android/mms/ui/MessageUtils$3;->val$handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/mms/ui/MessageUtils$3;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw v5
.end method
