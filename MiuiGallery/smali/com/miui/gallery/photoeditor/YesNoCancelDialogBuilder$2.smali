.class Lcom/miui/gallery/photoeditor/YesNoCancelDialogBuilder$2;
.super Ljava/lang/Object;
.source "YesNoCancelDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/YesNoCancelDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/YesNoCancelDialogBuilder;

.field final synthetic val$no:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/YesNoCancelDialogBuilder;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/YesNoCancelDialogBuilder$2;->this$0:Lcom/miui/gallery/photoeditor/YesNoCancelDialogBuilder;

    iput-object p2, p0, Lcom/miui/gallery/photoeditor/YesNoCancelDialogBuilder$2;->val$no:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/YesNoCancelDialogBuilder$2;->val$no:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 29
    return-void
.end method
