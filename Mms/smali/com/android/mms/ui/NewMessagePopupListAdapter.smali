.class public Lcom/android/mms/ui/NewMessagePopupListAdapter;
.super Landroid/widget/BaseAdapter;
.source "NewMessagePopupListAdapter.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mMessageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/mms/ui/NewMessagePopupListAdapter;->mActivity:Landroid/app/Activity;

    .line 26
    return-void
.end method

.method private formatTimeStampString(J)Ljava/lang/String;
    .locals 5
    .parameter "when"

    .prologue
    .line 70
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 71
    .local v2, then:Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 72
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 73
    .local v1, now:Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 76
    const v0, 0x80a80

    .line 81
    .local v0, format_flags:I
    iget v3, v2, Landroid/text/format/Time;->year:I

    iget v4, v1, Landroid/text/format/Time;->year:I

    if-eq v3, v4, :cond_0

    .line 82
    or-int/lit8 v0, v0, 0x14

    .line 91
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/NewMessagePopupListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v3, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 83
    :cond_0
    iget v3, v2, Landroid/text/format/Time;->yearDay:I

    iget v4, v1, Landroid/text/format/Time;->yearDay:I

    if-eq v3, v4, :cond_1

    .line 85
    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 88
    :cond_1
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupListAdapter;->mMessageList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupListAdapter;->mMessageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 47
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 52
    iget-object v6, p0, Lcom/android/mms/ui/NewMessagePopupListAdapter;->mMessageList:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    move-object v4, v5

    .line 66
    :goto_0
    return-object v4

    .line 55
    :cond_0
    move-object v4, p2

    .line 56
    .local v4, view:Landroid/view/View;
    if-nez v4, :cond_1

    .line 57
    iget-object v6, p0, Lcom/android/mms/ui/NewMessagePopupListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040036

    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .end local v4           #view:Landroid/view/View;
    check-cast v4, Landroid/widget/TextView;

    .line 60
    .restart local v4       #view:Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/NewMessagePopupListAdapter;->mMessageList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;

    .line 61
    .local v0, entry:Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;->time:J

    invoke-direct {p0, v6, v7}, Lcom/android/mms/ui/NewMessagePopupListAdapter;->formatTimeStampString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, time:Ljava/lang/CharSequence;
    new-instance v1, Landroid/text/SpannableString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;->body:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 63
    .local v1, s:Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    iget-object v5, p0, Lcom/android/mms/ui/NewMessagePopupListAdapter;->mActivity:Landroid/app/Activity;

    const v6, 0x1010041

    invoke-direct {v2, v5, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 64
    .local v2, span:Landroid/text/style/TextAppearanceSpan;
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v1, v2, v8, v5, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v5, v4

    .line 65
    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setMessageList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, messageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;>;"
    iput-object p1, p0, Lcom/android/mms/ui/NewMessagePopupListAdapter;->mMessageList:Ljava/util/ArrayList;

    .line 30
    return-void
.end method
