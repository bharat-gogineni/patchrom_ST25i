.class Lcom/android/mms/ui/AttachmentProcessor$5;
.super Landroid/os/AsyncTask;
.source "AttachmentProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AttachmentProcessor;->viewAttachment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/mms/ui/AttachmentProcessor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AttachmentProcessor;)V
    .locals 0
    .parameter

    .prologue
    .line 772
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentProcessor$5;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 772
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/AttachmentProcessor$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 782
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor$5;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    #getter for: Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;
    invoke-static {v0}, Lcom/android/mms/ui/AttachmentProcessor;->access$300(Lcom/android/mms/ui/AttachmentProcessor;)Lcom/android/mms/ui/MessageEditableActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    .line 783
    invoke-virtual {v0, v5}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v1

    .line 784
    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    .line 785
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 820
    :cond_0
    :goto_0
    return-object v2

    .line 789
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-nez v0, :cond_5

    .line 790
    invoke-virtual {v3, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 793
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    move-object v1, v0

    .line 799
    :goto_1
    if-eqz v1, :cond_0

    .line 803
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 804
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 807
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 808
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 812
    :goto_2
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 813
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor$5;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    #getter for: Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;
    invoke-static {v0}, Lcom/android/mms/ui/AttachmentProcessor;->access$300(Lcom/android/mms/ui/AttachmentProcessor;)Lcom/android/mms/ui/MessageEditableActivityBase;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 794
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 795
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 796
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 797
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 810
    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 816
    :cond_5
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/ui/AttachmentProcessor$5;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    #getter for: Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;
    invoke-static {v3}, Lcom/android/mms/ui/AttachmentProcessor;->access$300(Lcom/android/mms/ui/AttachmentProcessor;)Lcom/android/mms/ui/MessageEditableActivityBase;

    move-result-object v3

    const-class v4, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 817
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 818
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor$5;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    #getter for: Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;
    invoke-static {v1}, Lcom/android/mms/ui/AttachmentProcessor;->access$300(Lcom/android/mms/ui/AttachmentProcessor;)Lcom/android/mms/ui/MessageEditableActivityBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    move-object v1, v2

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 772
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/AttachmentProcessor$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor$5;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 826
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor$5;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    #getter for: Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;
    invoke-static {v0}, Lcom/android/mms/ui/AttachmentProcessor;->access$300(Lcom/android/mms/ui/AttachmentProcessor;)Lcom/android/mms/ui/MessageEditableActivityBase;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor$5;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    #getter for: Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;
    invoke-static {v2}, Lcom/android/mms/ui/AttachmentProcessor;->access$300(Lcom/android/mms/ui/AttachmentProcessor;)Lcom/android/mms/ui/MessageEditableActivityBase;

    move-result-object v2

    const v3, 0x7f0a01af

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor$5;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 778
    return-void
.end method
