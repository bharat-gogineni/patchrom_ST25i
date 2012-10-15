.class Lcom/android/mms/ui/BookmarkFragment$SelectedMessage$1;
.super Ljava/lang/Object;
.source "BookmarkFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->delete()V
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
    .line 337
    iput-object p1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage$1;->this$1:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage$1;->this$1:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    #getter for: Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mIsPhrase:Z
    invoke-static {v0}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->access$100(Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage$1;->this$1:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    iget-object v0, v0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->this$0:Lcom/android/mms/ui/BookmarkFragment;

    #getter for: Lcom/android/mms/ui/BookmarkFragment;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/BookmarkFragment;->access$300(Lcom/android/mms/ui/BookmarkFragment;)Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->getPhraseListAdapter()Lcom/android/mms/ui/PhraseListAdapter;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage$1;->this$1:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    #getter for: Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mPhraseForForward:Landroid/util/Pair;
    invoke-static {v0}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->access$200(Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/PhraseListAdapter;->deletePhrase(I)V

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage$1;->this$1:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    iget-object v0, v0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->this$0:Lcom/android/mms/ui/BookmarkFragment;

    #getter for: Lcom/android/mms/ui/BookmarkFragment;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/BookmarkFragment;->access$300(Lcom/android/mms/ui/BookmarkFragment;)Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->getBookmarkListAdapter()Lcom/android/mms/ui/BookmarkListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage$1;->this$1:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    #getter for: Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mBookmarkForForward:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->access$400(Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BookmarkListAdapter;->deleteBookmark(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0
.end method
