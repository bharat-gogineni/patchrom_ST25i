.class public Lcom/android/mms/ui/MessagingStylePreference;
.super Landroid/preference/Preference;
.source "MessagingStylePreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnStyleClickListener:Landroid/view/View$OnClickListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mStyleBubble:Landroid/view/View;

.field private mStyleBubbleImage:Landroid/widget/ImageView;

.field private mStyleBubbleText:Landroid/view/View;

.field private mStyleList:Landroid/view/View;

.field private mStyleListText:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Lcom/android/mms/ui/MessagingStylePreference$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingStylePreference$1;-><init>(Lcom/android/mms/ui/MessagingStylePreference;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingStylePreference;->mOnStyleClickListener:Landroid/view/View$OnClickListener;

    .line 28
    const v0, 0x7f04002c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingStylePreference;->setLayoutResource(I)V

    .line 30
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingStylePreference;->mPrefs:Landroid/content/SharedPreferences;

    .line 31
    iput-object p1, p0, Lcom/android/mms/ui/MessagingStylePreference;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessagingStylePreference;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/mms/ui/MessagingStylePreference;->mStyleList:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessagingStylePreference;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/mms/ui/MessagingStylePreference;->mStyleListText:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessagingStylePreference;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/mms/ui/MessagingStylePreference;->mStyleBubble:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessagingStylePreference;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/mms/ui/MessagingStylePreference;->mStyleBubbleText:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessagingStylePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingStylePreference;->setSettingsFromUI()V

    return-void
.end method

.method private setSettingsFromUI()V
    .locals 5

    .prologue
    .line 59
    iget-object v3, p0, Lcom/android/mms/ui/MessagingStylePreference;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessagingStylePreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v3, v4}, Lcom/android/mms/ui/MessageUtils;->getConversationStyle(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, origStyle:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/MessagingStylePreference;->mStyleBubbleText:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    sget-object v3, Lcom/android/mms/ui/MessageListItem$Style;->bubble:Lcom/android/mms/ui/MessageListItem$Style;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListItem$Style;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, newStyle:Ljava/lang/String;
    :goto_0
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 69
    iget-object v3, p0, Lcom/android/mms/ui/MessagingStylePreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_key_messaging_style_list"

    iget-object v4, p0, Lcom/android/mms/ui/MessagingStylePreference;->mStyleListText:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 71
    const-string v3, "pref_key_messaging_style_bubble"

    iget-object v4, p0, Lcom/android/mms/ui/MessagingStylePreference;->mStyleBubbleText:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingStylePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 76
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void

    .line 65
    .end local v1           #newStyle:Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/mms/ui/MessageListItem$Style;->list:Lcom/android/mms/ui/MessageListItem$Style;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListItem$Style;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #newStyle:Ljava/lang/String;
    goto :goto_0
.end method

.method private setUIFromSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    iget-object v1, p0, Lcom/android/mms/ui/MessagingStylePreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingStylePreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getConversationStyle(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, style:Ljava/lang/String;
    sget-object v1, Lcom/android/mms/ui/MessageListItem$Style;->bubble:Lcom/android/mms/ui/MessageListItem$Style;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem$Style;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/mms/ui/MessagingStylePreference;->mStyleBubbleText:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 82
    iget-object v1, p0, Lcom/android/mms/ui/MessagingStylePreference;->mStyleListText:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 88
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingStylePreference;->updateBubbleStyleImage()V

    .line 89
    return-void

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessagingStylePreference;->mStyleBubbleText:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 85
    iget-object v1, p0, Lcom/android/mms/ui/MessagingStylePreference;->mStyleListText:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingStylePreference;->setSelectable(Z)V

    .line 47
    const v0, 0x7f10008b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingStylePreference;->mStyleBubble:Landroid/view/View;

    .line 48
    const v0, 0x7f10008c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingStylePreference;->mStyleBubbleImage:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f10008d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingStylePreference;->mStyleBubbleText:Landroid/view/View;

    .line 50
    const v0, 0x7f10008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingStylePreference;->mStyleList:Landroid/view/View;

    .line 51
    const v0, 0x7f10008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingStylePreference;->mStyleListText:Landroid/view/View;

    .line 53
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingStylePreference;->setUIFromSettings()V

    .line 54
    iget-object v0, p0, Lcom/android/mms/ui/MessagingStylePreference;->mStyleBubble:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingStylePreference;->mOnStyleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/android/mms/ui/MessagingStylePreference;->mStyleList:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingStylePreference;->mOnStyleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method public updateBubbleStyleImage()V
    .locals 4

    .prologue
    .line 92
    iget-object v1, p0, Lcom/android/mms/ui/MessagingStylePreference;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_time_style_auto_group"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 94
    .local v0, groupByTime:Z
    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/mms/ui/MessagingStylePreference;->mStyleBubbleImage:Landroid/widget/ImageView;

    const v2, 0x7f0200fd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessagingStylePreference;->mStyleBubbleImage:Landroid/widget/ImageView;

    const v2, 0x7f0200fc

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
