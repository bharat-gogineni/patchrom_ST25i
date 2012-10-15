.class Lcom/miui/home/launcher/gadget/Weather_2x4$6;
.super Ljava/lang/Thread;
.source "Weather_2x4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/gadget/Weather_2x4;->download()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/Weather_2x4;

.field final synthetic val$manager:Landroid/app/DownloadManager;

.field final synthetic val$request:Landroid/app/DownloadManager$Request;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/Weather_2x4;Ljava/lang/String;Landroid/app/DownloadManager;Landroid/app/DownloadManager$Request;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4$6;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4;

    iput-object p3, p0, Lcom/miui/home/launcher/gadget/Weather_2x4$6;->val$manager:Landroid/app/DownloadManager;

    iput-object p4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4$6;->val$request:Landroid/app/DownloadManager$Request;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4$6;->val$manager:Landroid/app/DownloadManager;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4$6;->val$request:Landroid/app/DownloadManager$Request;

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/gadget/Weather_2x4;->access$902(J)J

    .line 440
    return-void
.end method
