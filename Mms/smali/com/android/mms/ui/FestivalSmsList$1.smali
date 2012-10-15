.class Lcom/android/mms/ui/FestivalSmsList$1;
.super Landroid/os/AsyncTask;
.source "FestivalSmsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FestivalSmsList;->startGettingMoreMessages()V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FestivalSmsList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FestivalSmsList;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/mms/ui/FestivalSmsList$1;->this$0:Lcom/android/mms/ui/FestivalSmsList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4
    .parameter "unused"

    .prologue
    const/4 v3, 0x0

    .line 138
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsList$1;->this$0:Lcom/android/mms/ui/FestivalSmsList;

    invoke-virtual {v0}, Lcom/android/mms/ui/FestivalSmsList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/mms/data/FestivalSmsProvider;->URI_GET_MORE_MESSAGES:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsList$1;->this$0:Lcom/android/mms/ui/FestivalSmsList;

    #getter for: Lcom/android/mms/ui/FestivalSmsList;->mCategoryName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/FestivalSmsList;->access$000(Lcom/android/mms/ui/FestivalSmsList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/FestivalSmsList$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "numMessageUpdated"

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsList$1;->this$0:Lcom/android/mms/ui/FestivalSmsList;

    const v1, 0x7f0a012f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 150
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsList$1;->this$0:Lcom/android/mms/ui/FestivalSmsList;

    #setter for: Lcom/android/mms/ui/FestivalSmsList;->mIsGettingMessages:Z
    invoke-static {v0, v2}, Lcom/android/mms/ui/FestivalSmsList;->access$202(Lcom/android/mms/ui/FestivalSmsList;Z)Z

    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsList$1;->this$0:Lcom/android/mms/ui/FestivalSmsList;

    #getter for: Lcom/android/mms/ui/FestivalSmsList;->mDownloadingView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/FestivalSmsList;->access$300(Lcom/android/mms/ui/FestivalSmsList;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    return-void

    .line 147
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsList$1;->this$0:Lcom/android/mms/ui/FestivalSmsList;

    #getter for: Lcom/android/mms/ui/FestivalSmsList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/FestivalSmsList;->access$100(Lcom/android/mms/ui/FestivalSmsList;)Lcom/android/mms/ui/FestivalSmsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/FestivalSmsListAdapter;->requery()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 136
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/FestivalSmsList$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
