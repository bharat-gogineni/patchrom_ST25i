.class public Lcom/miui/gallery/photoeditor/YesNoCancelDialogBuilder;
.super Landroid/app/AlertDialog$Builder;
.source "YesNoCancelDialogBuilder.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;I)V
    .locals 3
    .parameter "context"
    .parameter "yes"
    .parameter "no"
    .parameter "messageId"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 17
    const v0, 0x7f0d0006

    new-instance v1, Lcom/miui/gallery/photoeditor/YesNoCancelDialogBuilder$3;

    invoke-direct {v1, p0, p2}, Lcom/miui/gallery/photoeditor/YesNoCancelDialogBuilder$3;-><init>(Lcom/miui/gallery/photoeditor/YesNoCancelDialogBuilder;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/photoeditor/YesNoCancelDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0007

    new-instance v2, Lcom/miui/gallery/photoeditor/YesNoCancelDialogBuilder$2;

    invoke-direct {v2, p0, p3}, Lcom/miui/gallery/photoeditor/YesNoCancelDialogBuilder$2;-><init>(Lcom/miui/gallery/photoeditor/YesNoCancelDialogBuilder;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0049

    new-instance v2, Lcom/miui/gallery/photoeditor/YesNoCancelDialogBuilder$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/photoeditor/YesNoCancelDialogBuilder$1;-><init>(Lcom/miui/gallery/photoeditor/YesNoCancelDialogBuilder;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 38
    return-void
.end method
