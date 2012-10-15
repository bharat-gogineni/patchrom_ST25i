.class Lcom/miui/gallery/app/SlideshowPage$2;
.super Lcom/miui/gallery/ui/SynchronizedHandler;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/SlideshowPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/SlideshowPage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/SlideshowPage;Lcom/miui/gallery/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/miui/gallery/app/SlideshowPage$2;->this$0:Lcom/miui/gallery/app/SlideshowPage;

    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/SynchronizedHandler;-><init>(Lcom/miui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 112
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 119
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowPage$2;->this$0:Lcom/miui/gallery/app/SlideshowPage;

    #calls: Lcom/miui/gallery/app/SlideshowPage;->showPendingBitmap()V
    invoke-static {v0}, Lcom/miui/gallery/app/SlideshowPage;->access$100(Lcom/miui/gallery/app/SlideshowPage;)V

    .line 121
    :goto_0
    return-void

    .line 117
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowPage$2;->this$0:Lcom/miui/gallery/app/SlideshowPage;

    #calls: Lcom/miui/gallery/app/SlideshowPage;->loadNextBitmap()V
    invoke-static {v0}, Lcom/miui/gallery/app/SlideshowPage;->access$200(Lcom/miui/gallery/app/SlideshowPage;)V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
