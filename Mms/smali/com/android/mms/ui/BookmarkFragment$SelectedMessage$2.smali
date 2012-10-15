.class Lcom/android/mms/ui/BookmarkFragment$SelectedMessage$2;
.super Ljava/lang/Object;
.source "BookmarkFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->buildEditNewPhraseDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage$2;->this$1:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 395
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage$2;->this$1:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    #getter for: Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mEditNewPhraseView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->access$600(Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, phrase:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage$2;->this$1:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    #getter for: Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mIsPhrase:Z
    invoke-static {v1}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->access$100(Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage$2;->this$1:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    #getter for: Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mNewPhrase:Z
    invoke-static {v1}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->access$700(Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 398
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage$2;->this$1:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    const/4 v2, 0x0

    #setter for: Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mNewPhrase:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->access$702(Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;Z)Z

    .line 399
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage$2;->this$1:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    iget-object v1, v1, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->this$0:Lcom/android/mms/ui/BookmarkFragment;

    #getter for: Lcom/android/mms/ui/BookmarkFragment;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/BookmarkFragment;->access$300(Lcom/android/mms/ui/BookmarkFragment;)Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->getPhraseListAdapter()Lcom/android/mms/ui/PhraseListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/PhraseListAdapter;->addPhrase(Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 406
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage$2;->this$1:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    invoke-virtual {v1}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->delete()V

    goto :goto_0

    .line 409
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage$2;->this$1:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    iget-object v1, v1, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->this$0:Lcom/android/mms/ui/BookmarkFragment;

    #getter for: Lcom/android/mms/ui/BookmarkFragment;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/BookmarkFragment;->access$300(Lcom/android/mms/ui/BookmarkFragment;)Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->getPhraseListAdapter()Lcom/android/mms/ui/PhraseListAdapter;

    move-result-object v2

    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage$2;->this$1:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    #getter for: Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mPhraseForForward:Landroid/util/Pair;
    invoke-static {v1}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->access$200(Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, v0}, Lcom/android/mms/ui/PhraseListAdapter;->setPhrase(ILjava/lang/String;)V

    goto :goto_0
.end method
