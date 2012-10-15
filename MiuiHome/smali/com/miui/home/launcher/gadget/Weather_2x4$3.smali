.class Lcom/miui/home/launcher/gadget/Weather_2x4$3;
.super Ljava/lang/Object;
.source "Weather_2x4.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/gadget/Weather_2x4;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/Weather_2x4;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/Weather_2x4;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4$3;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 298
    if-ne p2, v8, :cond_3

    .line 301
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Weather_2x4$3;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4;

    invoke-virtual {v5}, Lcom/miui/home/launcher/gadget/Weather_2x4;->getMtzFilePath()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, dst:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 305
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Weather_2x4$3;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4;

    #calls: Lcom/miui/home/launcher/gadget/Weather_2x4;->isInDownloading()Z
    invoke-static {v5}, Lcom/miui/home/launcher/gadget/Weather_2x4;->access$100(Lcom/miui/home/launcher/gadget/Weather_2x4;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 306
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Weather_2x4$3;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4;

    #getter for: Lcom/miui/home/launcher/gadget/Weather_2x4;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/miui/home/launcher/gadget/Weather_2x4;->access$200(Lcom/miui/home/launcher/gadget/Weather_2x4;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c0079

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 308
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 338
    .end local v1           #dst:Ljava/lang/String;
    .end local v3           #file:Ljava/io/File;
    :goto_0
    return-void

    .line 312
    .restart local v1       #dst:Ljava/lang/String;
    .restart local v3       #file:Ljava/io/File;
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/miui/home/launcher/gadget/Weather_2x4;->access$300()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .local v2, externalFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 314
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Weather_2x4$3;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4;

    #calls: Lcom/miui/home/launcher/gadget/Weather_2x4;->openDownloadDialog()V
    invoke-static {v5}, Lcom/miui/home/launcher/gadget/Weather_2x4;->access$400(Lcom/miui/home/launcher/gadget/Weather_2x4;)V

    .line 315
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 321
    .local v4, parent:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    .line 322
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 324
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/home/launcher/gadget/Utils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 325
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 326
    const/16 v0, 0x184

    .line 328
    .local v0, PERMISSIONS:I
    const/16 v5, 0x184

    invoke-static {v1, v5, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 334
    .end local v0           #PERMISSIONS:I
    .end local v1           #dst:Ljava/lang/String;
    .end local v2           #externalFile:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #parent:Ljava/io/File;
    :cond_3
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Weather_2x4$3;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4;

    #setter for: Lcom/miui/home/launcher/gadget/Weather_2x4;->mThemeType:I
    invoke-static {v5, p2}, Lcom/miui/home/launcher/gadget/Weather_2x4;->access$502(Lcom/miui/home/launcher/gadget/Weather_2x4;I)I

    .line 335
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Weather_2x4$3;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4;

    iget-object v6, p0, Lcom/miui/home/launcher/gadget/Weather_2x4$3;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4;

    #getter for: Lcom/miui/home/launcher/gadget/Weather_2x4;->mThemeType:I
    invoke-static {v6}, Lcom/miui/home/launcher/gadget/Weather_2x4;->access$500(Lcom/miui/home/launcher/gadget/Weather_2x4;)I

    move-result v6

    #calls: Lcom/miui/home/launcher/gadget/Weather_2x4;->updateType(I)V
    invoke-static {v5, v6}, Lcom/miui/home/launcher/gadget/Weather_2x4;->access$600(Lcom/miui/home/launcher/gadget/Weather_2x4;I)V

    .line 336
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Weather_2x4$3;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4;

    #calls: Lcom/miui/home/launcher/gadget/Weather_2x4;->setupView()V
    invoke-static {v5}, Lcom/miui/home/launcher/gadget/Weather_2x4;->access$700(Lcom/miui/home/launcher/gadget/Weather_2x4;)V

    .line 337
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
