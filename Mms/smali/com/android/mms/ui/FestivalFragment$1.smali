.class Lcom/android/mms/ui/FestivalFragment$1;
.super Landroid/os/AsyncTask;
.source "FestivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FestivalFragment;->checkForUpdate(Z)V
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
.field final synthetic this$0:Lcom/android/mms/ui/FestivalFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FestivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/mms/ui/FestivalFragment$1;->this$0:Lcom/android/mms/ui/FestivalFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .parameter "unused"

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/FestivalFragment$1;->this$0:Lcom/android/mms/ui/FestivalFragment;

    #getter for: Lcom/android/mms/ui/FestivalFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/FestivalFragment;->access$000(Lcom/android/mms/ui/FestivalFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/FestivalSmsProvider;->URI_UPDATE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/FestivalFragment$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "numMessageUpdated"

    .prologue
    .line 90
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 91
    iget-object v3, p0, Lcom/android/mms/ui/FestivalFragment$1;->this$0:Lcom/android/mms/ui/FestivalFragment;

    #getter for: Lcom/android/mms/ui/FestivalFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/FestivalFragment;->access$000(Lcom/android/mms/ui/FestivalFragment;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a012f

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 96
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/FestivalFragment$1;->this$0:Lcom/android/mms/ui/FestivalFragment;

    #getter for: Lcom/android/mms/ui/FestivalFragment;->mDownloadingView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/mms/ui/FestivalFragment;->access$200(Lcom/android/mms/ui/FestivalFragment;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v3, p0, Lcom/android/mms/ui/FestivalFragment$1;->this$0:Lcom/android/mms/ui/FestivalFragment;

    #getter for: Lcom/android/mms/ui/FestivalFragment;->mPref:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/android/mms/ui/FestivalFragment;->access$300(Lcom/android/mms/ui/FestivalFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 100
    .local v1, time:J
    const-string v3, "update_timestamp"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    return-void

    .line 92
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #time:J
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/android/mms/ui/FestivalFragment$1;->this$0:Lcom/android/mms/ui/FestivalFragment;

    #getter for: Lcom/android/mms/ui/FestivalFragment;->mListAdapter:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/FestivalFragment;->access$100(Lcom/android/mms/ui/FestivalFragment;)Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->requery()V

    .line 94
    iget-object v3, p0, Lcom/android/mms/ui/FestivalFragment$1;->this$0:Lcom/android/mms/ui/FestivalFragment;

    #getter for: Lcom/android/mms/ui/FestivalFragment;->mListAdapter:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/FestivalFragment;->access$100(Lcom/android/mms/ui/FestivalFragment;)Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/FestivalFragment$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
