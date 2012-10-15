.class Lcom/miui/gallery/app/PhotoPage$3;
.super Lcom/miui/gallery/ui/SynchronizedHandler;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/PhotoPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/PhotoPage;Lcom/miui/gallery/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoPage$3;->this$0:Lcom/miui/gallery/app/PhotoPage;

    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/SynchronizedHandler;-><init>(Lcom/miui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 255
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 263
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 257
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$3;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #calls: Lcom/miui/gallery/app/PhotoPage;->hideBars()V
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoPage;->access$200(Lcom/miui/gallery/app/PhotoPage;)V

    .line 265
    :goto_0
    return-void

    .line 260
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$3;->this$0:Lcom/miui/gallery/app/PhotoPage;

    invoke-virtual {v0}, Lcom/miui/gallery/app/PhotoPage;->showBottomBar()V

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
