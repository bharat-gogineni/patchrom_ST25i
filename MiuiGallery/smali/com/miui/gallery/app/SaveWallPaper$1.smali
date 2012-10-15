.class Lcom/miui/gallery/app/SaveWallPaper$1;
.super Ljava/lang/Object;
.source "SaveWallPaper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/SaveWallPaper;-><init>(Landroid/app/Activity;Lcom/miui/gallery/app/SaveWallPaperListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/SaveWallPaper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/SaveWallPaper;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/miui/gallery/app/SaveWallPaper$1;->this$0:Lcom/miui/gallery/app/SaveWallPaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, saveType:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/app/SaveWallPaper$1;->this$0:Lcom/miui/gallery/app/SaveWallPaper;

    #calls: Lcom/miui/gallery/app/SaveWallPaper;->setSaveType(I)V
    invoke-static {v1, v0}, Lcom/miui/gallery/app/SaveWallPaper;->access$000(Lcom/miui/gallery/app/SaveWallPaper;I)V

    .line 101
    iget-object v1, p0, Lcom/miui/gallery/app/SaveWallPaper$1;->this$0:Lcom/miui/gallery/app/SaveWallPaper;

    #getter for: Lcom/miui/gallery/app/SaveWallPaper;->mSaveWallPaperListener:Lcom/miui/gallery/app/SaveWallPaperListener;
    invoke-static {v1}, Lcom/miui/gallery/app/SaveWallPaper;->access$100(Lcom/miui/gallery/app/SaveWallPaper;)Lcom/miui/gallery/app/SaveWallPaperListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/app/SaveWallPaperListener;->onClickTab()V

    .line 102
    return-void

    .line 88
    :sswitch_0
    const/4 v0, 0x1

    .line 89
    goto :goto_0

    .line 92
    :sswitch_1
    const/4 v0, 0x2

    .line 93
    goto :goto_0

    .line 96
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 86
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b009f -> :sswitch_0
        0x7f0b00a2 -> :sswitch_1
        0x7f0b00a5 -> :sswitch_2
    .end sparse-switch
.end method
