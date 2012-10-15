.class public final Lcom/android/mms/ui/MessageListView;
.super Lcom/android/mms/util/EditableListView;
.source "MessageListView.java"


# instance fields
.field private mAllowTranscriptionOnResize:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/mms/util/EditableListView;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mAllowTranscriptionOnResize:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/EditableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mAllowTranscriptionOnResize:Z

    .line 35
    return-void
.end method


# virtual methods
.method public moveToEnd()V
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 72
    .local v0, count:I
    if-lez v0, :cond_0

    .line 73
    add-int/lit8 v1, v0, -0x1

    const v2, -0x186a0

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessageListView;->setSelectionFromTop(II)V

    .line 75
    :cond_0
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 39
    packed-switch p1, :pswitch_data_0

    .line 55
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/mms/util/EditableListView;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_0
    return v3

    .line 41
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    .line 42
    .local v2, view:Lcom/android/mms/ui/MessageListItem;
    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    .line 46
    .local v1, item:Lcom/android/mms/ui/MessageItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 49
    .local v0, clip:Landroid/text/ClipboardManager;
    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const/4 v3, 0x1

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/mms/util/EditableListView;->onSizeChanged(IIII)V

    .line 65
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mAllowTranscriptionOnResize:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->moveToEnd()V

    .line 68
    :cond_0
    return-void
.end method

.method public setAllowTranscriptOnResize(Z)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListView;->mAllowTranscriptionOnResize:Z

    .line 60
    return-void
.end method
