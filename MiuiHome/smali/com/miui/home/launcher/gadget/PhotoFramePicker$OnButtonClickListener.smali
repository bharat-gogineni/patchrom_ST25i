.class Lcom/miui/home/launcher/gadget/PhotoFramePicker$OnButtonClickListener;
.super Ljava/lang/Object;
.source "PhotoFramePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/PhotoFramePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/PhotoFramePicker;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/gadget/PhotoFramePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker$OnButtonClickListener;->this$0:Lcom/miui/home/launcher/gadget/PhotoFramePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/gadget/PhotoFramePicker;Lcom/miui/home/launcher/gadget/PhotoFramePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/PhotoFramePicker$OnButtonClickListener;-><init>(Lcom/miui/home/launcher/gadget/PhotoFramePicker;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 295
    :goto_0
    return-void

    .line 283
    :sswitch_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker$OnButtonClickListener;->this$0:Lcom/miui/home/launcher/gadget/PhotoFramePicker;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->selectPhoto()V

    goto :goto_0

    .line 286
    :sswitch_1
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker$OnButtonClickListener;->this$0:Lcom/miui/home/launcher/gadget/PhotoFramePicker;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->selectFrame()V

    goto :goto_0

    .line 289
    :sswitch_2
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker$OnButtonClickListener;->this$0:Lcom/miui/home/launcher/gadget/PhotoFramePicker;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->commit()V

    goto :goto_0

    .line 292
    :sswitch_3
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker$OnButtonClickListener;->this$0:Lcom/miui/home/launcher/gadget/PhotoFramePicker;

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lmiui/widget/PhotoFrameView;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker$OnButtonClickListener;->this$0:Lcom/miui/home/launcher/gadget/PhotoFramePicker;

    iget-object v1, v1, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v1}, Lmiui/widget/PhotoFrameView;->getRotateDegrees()I

    move-result v1

    add-int/lit8 v1, v1, 0x5a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmiui/widget/PhotoFrameView;->setRotateDegrees(IZ)V

    goto :goto_0

    .line 281
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070016 -> :sswitch_2
        0x7f07006f -> :sswitch_3
        0x7f070071 -> :sswitch_0
        0x7f070072 -> :sswitch_1
    .end sparse-switch
.end method
