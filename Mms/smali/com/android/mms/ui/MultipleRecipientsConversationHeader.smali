.class public Lcom/android/mms/ui/MultipleRecipientsConversationHeader;
.super Landroid/widget/LinearLayout;
.source "MultipleRecipientsConversationHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoListAdapter;,
        Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoItem;
    }
.end annotation


# instance fields
.field private mContactList:Lcom/android/mms/data/ContactList;

.field private final mContext:Landroid/content/Context;

.field private mMultiRecipientContactInfoListAdapter:Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoListAdapter;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleArrow:Landroid/widget/ImageView;

.field private mTitleBar:Landroid/view/View;

.field private mTitleCount:Landroid/widget/TextView;

.field private mTitlePopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-object p1, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MultipleRecipientsConversationHeader;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mTitleArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method private showTitleContactInfo(Z)V
    .locals 8
    .parameter "show"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 108
    if-eqz p1, :cond_2

    .line 109
    iget-object v2, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mTitlePopupWindow:Landroid/widget/PopupWindow;

    if-nez v2, :cond_0

    .line 110
    new-instance v2, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoListAdapter;-><init>(Lcom/android/mms/ui/MultipleRecipientsConversationHeader;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mMultiRecipientContactInfoListAdapter:Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoListAdapter;

    .line 112
    iget-object v2, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04002f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 113
    .local v1, popView:Landroid/view/View;
    const v2, 0x7f100094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 115
    .local v0, multiRecipientContactInfoList:Landroid/widget/ListView;
    iget-object v2, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mMultiRecipientContactInfoListAdapter:Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    iget-object v2, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mMultiRecipientContactInfoListAdapter:Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoListAdapter;->setContactList(Lcom/android/mms/data/ContactList;)V

    .line 118
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v1, v5, v5, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mTitlePopupWindow:Landroid/widget/PopupWindow;

    .line 123
    iget-object v2, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mTitlePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 128
    iget-object v2, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mTitlePopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object v2, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mTitlePopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$1;-><init>(Lcom/android/mms/ui/MultipleRecipientsConversationHeader;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 136
    .end local v0           #multiRecipientContactInfoList:Landroid/widget/ListView;
    .end local v1           #popView:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mTitlePopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mTitleBar:Landroid/view/View;

    invoke-virtual {v2, v3, v6, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 137
    iget-object v2, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mTitleArrow:Landroid/widget/ImageView;

    const v3, 0x7f020131

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 143
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mTitlePopupWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mTitlePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mTitleBar:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mTitlePopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mTitlePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->showTitleContactInfo(Z)V

    .line 66
    :cond_1
    :goto_0
    return-void

    .line 63
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->showTitleContactInfo(Z)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 48
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mContext:Landroid/content/Context;

    const v1, 0x7f040033

    invoke-static {v0, v1, p0}, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    const v0, 0x7f100096

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mTitleBar:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v0, 0x7f100098

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mTitle:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f100099

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mTitleCount:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f10009a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mTitleArrow:Landroid/widget/ImageView;

    .line 55
    return-void
.end method

.method public updateTitle(Lcom/android/mms/data/ContactList;)V
    .locals 8
    .parameter "list"

    .prologue
    const/4 v7, 0x0

    .line 69
    iput-object p1, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mContactList:Lcom/android/mms/data/ContactList;

    .line 71
    const-string v1, ""

    .line 72
    .local v1, s:Ljava/lang/String;
    const/4 v0, 0x0

    .line 73
    .local v0, count:I
    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    .line 75
    packed-switch v0, :pswitch_data_0

    .line 85
    const-string v2, ", "

    invoke-virtual {p1, v2}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mMultiRecipientContactInfoListAdapter:Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoListAdapter;

    if-eqz v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mMultiRecipientContactInfoListAdapter:Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoListAdapter;->notifyDataSetChanged()V

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    if-lez v0, :cond_2

    .line 98
    iget-object v2, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mTitleCount:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0127

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_2
    return-void

    .line 80
    :pswitch_1
    invoke-virtual {p1, v7}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v1

    .line 81
    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
