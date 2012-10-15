.class public Lcom/android/mms/ui/ConversationListItem;
.super Landroid/view/ViewGroup;
.source "ConversationListItem.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;


# static fields
.field private static final BACKGROUND_RESID:[I


# instance fields
.field private mAttachmentIndicator:Landroid/view/View;

.field private final mAvatarSize:I

.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mBackgroundIndex:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mCountBuffer:[C

.field private final mDateRightPadding:I

.field private mDateView:Landroid/widget/TextView;

.field private mDraftIndicator:Landroid/view/View;

.field private mErrorIndicator:Landroid/view/View;

.field private mFetionPrefix:Landroid/view/View;

.field private mFromBuffer:[C

.field private final mFromRightPadding:I

.field private final mFromTopAscent:I

.field private mFromView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private final mIndicatorPadding:I

.field private final mIndicatorSize:I

.field private final mListItemPaddingOuter:I

.field private mMsgCountView:Landroid/widget/TextView;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mSubjectView:Landroid/widget/TextView;

.field private mTimeBuffer:Ljava/nio/CharBuffer;

.field private mTimedIndicator:Landroid/view/View;

.field private mUiMode:I

.field private mUnreadMsgCountView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->BACKGROUND_RESID:[I

    return-void

    :array_0
    .array-data 0x4
        0x80t 0x1t 0x2t 0x6t
        0x7dt 0x1t 0x2t 0x6t
        0x74t 0x1t 0x2t 0x6t
        0x71t 0x1t 0x2t 0x6t
        0x7ct 0x1t 0x2t 0x6t
        0x79t 0x1t 0x2t 0x6t
        0x78t 0x1t 0x2t 0x6t
        0x75t 0x1t 0x2t 0x6t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    .line 88
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromBuffer:[C

    .line 89
    const/16 v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCountBuffer:[C

    .line 90
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mTimeBuffer:Ljava/nio/CharBuffer;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarSize:I

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemPaddingOuter:I

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromTopAscent:I

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromRightPadding:I

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateRightPadding:I

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorPadding:I

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorSize:I

    .line 111
    invoke-static {}, Lmiui/content/res/ExtraConfiguration;->getScaleMode()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mUiMode:I

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateFromView()V

    return-void
.end method

.method private updateAvatarView()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const v5, 0x602004a

    const/4 v4, 0x1

    .line 139
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    .line 140
    .local v1, contactsSize:I
    if-nez v1, :cond_0

    .line 141
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 142
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v5}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    .line 143
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v2}, Lcom/android/mms/data/Contact;->cancelRequest(Landroid/widget/ImageView;)V

    .line 168
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v6}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 169
    return-void

    .line 144
    :cond_0
    if-ne v1, v4, :cond_4

    .line 145
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 146
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 148
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v2, v0}, Lcom/android/mms/data/Contact;->loadPhoto(Landroid/widget/ImageView;Lcom/android/mms/data/Contact;)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isSPNumber()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    .line 151
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v2, v0}, Lcom/android/mms/data/Contact;->loadPhoto(Landroid/widget/ImageView;Lcom/android/mms/data/Contact;)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isEmail()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v2}, Lcom/android/mms/data/Contact;->cancelRequest(Landroid/widget/ImageView;)V

    .line 154
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 155
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v5}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    goto :goto_0

    .line 158
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v2}, Lcom/android/mms/data/Contact;->cancelRequest(Landroid/widget/ImageView;)V

    .line 159
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    .line 160
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v5}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    goto :goto_0

    .line 164
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 165
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v2}, Lcom/android/mms/data/Contact;->cancelRequest(Landroid/widget/ImageView;)V

    .line 166
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const v3, 0x6020047

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateAvatarVisibility()V
    .locals 4

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_conversation_show_avatar"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 175
    .local v0, show:Z
    if-eqz v0, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 177
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateFromView()V
    .locals 4

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mFromBuffer:[C

    const-string v3, ", "

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/data/ContactList;->formatNames([CLjava/lang/String;)I

    move-result v0

    .line 185
    .local v0, fromLength:I
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mFromBuffer:[C

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/TextView;->setText([CII)V

    .line 186
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarVisibility()V

    .line 187
    return-void
.end method


# virtual methods
.method public final bind(Landroid/content/Context;Lcom/android/mms/data/Conversation;ZLandroid/database/Cursor;)V
    .locals 22
    .parameter "context"
    .parameter "conversation"
    .parameter "isCheckMode"
    .parameter "cursor"

    .prologue
    .line 200
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    .line 203
    if-eqz p3, :cond_2

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 209
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->isChecked()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 215
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->isChecked()Z

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ConversationListItem;->setBackground(Landroid/database/Cursor;Z)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mTimeBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 219
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mTimeBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lmiui/util/MiuiDateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JLjava/nio/CharBuffer;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mTimeBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mTimeBuffer:Ljava/nio/CharBuffer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/nio/CharBuffer;->position()I

    move-result v21

    invoke-virtual/range {v18 .. v21}, Landroid/widget/TextView;->setText([CII)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mFromBuffer:[C

    move-object/from16 v19, v0

    const-string v20, ", "

    invoke-virtual/range {v18 .. v20}, Lcom/android/mms/data/ContactList;->formatNames([CLjava/lang/String;)I

    move-result v6

    .line 224
    .local v6, fromLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mFromBuffer:[C

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v6}, Landroid/widget/TextView;->setText([CII)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount()I

    move-result v18

    if-lez v18, :cond_4

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0e0012

    invoke-virtual/range {v18 .. v20}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 232
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mFetionPrefix:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/ContactList;->size()I

    move-result v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v18

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/mms/data/Contact;

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/mms/util/AddressUtils;->isFetionNumber(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    const/16 v18, 0x0

    :goto_3
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    invoke-static/range {p0 .. p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount()I

    move-result v18

    if-lez v18, :cond_6

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mCountBuffer:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount()I

    move-result v20

    invoke-static/range {v18 .. v20}, Lcom/android/mms/ui/MessageUtils;->appendIntToCharArray([CII)I

    move-result v5

    .line 245
    .local v5, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mCountBuffer:[C

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v5}, Landroid/widget/TextView;->setText([CII)V

    .line 259
    .end local v5           #end:I
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v17

    .line 260
    .local v17, subject:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 261
    const/16 v16, 0x0

    .line 262
    .local v16, s:Landroid/text/SpannableStringBuilder;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v13, v0, :cond_9

    .line 263
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 264
    .local v4, c:C
    const v18, 0xffff

    move/from16 v0, v18

    if-ne v4, v0, :cond_8

    .line 265
    if-nez v16, :cond_0

    .line 266
    new-instance v16, Landroid/text/SpannableStringBuilder;

    .end local v16           #s:Landroid/text/SpannableStringBuilder;
    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 269
    .restart local v16       #s:Landroid/text/SpannableStringBuilder;
    :cond_0
    const v18, 0x7f0a0125

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 270
    .local v14, nicknamePlaceHolder:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v12

    .line 272
    .local v12, holderLen:I
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 273
    invoke-virtual/range {v16 .. v16}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 274
    .restart local v5       #end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 275
    .local v15, res:Landroid/content/res/Resources;
    new-instance v18, Landroid/text/style/BackgroundColorSpan;

    const v19, 0x7f09000b

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    invoke-direct/range {v18 .. v19}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sub-int v19, v5, v12

    const/16 v20, 0x21

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 277
    new-instance v18, Landroid/text/style/ForegroundColorSpan;

    const v19, 0x7f09000a

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    invoke-direct/range {v18 .. v19}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sub-int v19, v5, v12

    const/16 v20, 0x21

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 262
    .end local v5           #end:I
    .end local v12           #holderLen:I
    .end local v14           #nicknamePlaceHolder:Ljava/lang/String;
    .end local v15           #res:Landroid/content/res/Resources;
    :cond_1
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 206
    .end local v4           #c:C
    .end local v6           #fromLength:I
    .end local v13           #i:I
    .end local v16           #s:Landroid/text/SpannableStringBuilder;
    .end local v17           #subject:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_0

    .line 212
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 228
    .restart local v6       #fromLength:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0e0011

    invoke-virtual/range {v18 .. v20}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 232
    :cond_5
    const/16 v18, 0x8

    goto/16 :goto_3

    .line 246
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mCountBuffer:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x28

    aput-char v20, v18, v19

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mCountBuffer:[C

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v20

    invoke-static/range {v18 .. v20}, Lcom/android/mms/ui/MessageUtils;->appendIntToCharArray([CII)I

    move-result v5

    .line 251
    .restart local v5       #end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mCountBuffer:[C

    move-object/from16 v18, v0

    const/16 v19, 0x29

    aput-char v19, v18, v5

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mCountBuffer:[C

    move-object/from16 v19, v0

    const/16 v20, 0x0

    add-int/lit8 v21, v5, 0x1

    invoke-virtual/range {v18 .. v21}, Landroid/widget/TextView;->setText([CII)V

    goto/16 :goto_4

    .line 254
    .end local v5           #end:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 279
    .restart local v4       #c:C
    .restart local v13       #i:I
    .restart local v16       #s:Landroid/text/SpannableStringBuilder;
    .restart local v17       #subject:Ljava/lang/String;
    :cond_8
    if-eqz v16, :cond_1

    .line 280
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_6

    .line 284
    .end local v4           #c:C
    :cond_9
    if-eqz v16, :cond_b

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    .end local v13           #i:I
    .end local v16           #s:Landroid/text/SpannableStringBuilder;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->hasError()Z

    move-result v9

    .line 295
    .local v9, hasError:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mErrorIndicator:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v9, :cond_d

    const/16 v18, 0x0

    :goto_8
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/android/mms/data/Conversation$TimedThreads;->hasTimedMessage(J)Z

    move-result v11

    .line 298
    .local v11, hasTimedMsg:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mTimedIndicator:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v11, :cond_e

    const/16 v18, 0x0

    :goto_9
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->hasAttachment()Z

    move-result v7

    .line 302
    .local v7, hasAttachment:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentIndicator:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v7, :cond_f

    const/16 v18, 0x0

    :goto_a
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v8

    .line 306
    .local v8, hasDraft:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mDraftIndicator:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v8, :cond_10

    const/16 v18, 0x0

    :goto_b
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 307
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ConversationListItem;->mUiMode:I

    move/from16 v18, v0

    const/16 v19, 0xe

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ConversationListItem;->mUiMode:I

    move/from16 v18, v0

    const/16 v19, 0xf

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    :cond_a
    const/4 v10, 0x1

    .line 310
    .local v10, hasHugeLargeUiMode:Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    if-eqz v10, :cond_12

    const/16 v18, 0x8

    :goto_d
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarVisibility()V

    .line 313
    return-void

    .line 287
    .end local v7           #hasAttachment:Z
    .end local v8           #hasDraft:Z
    .end local v9           #hasError:Z
    .end local v10           #hasHugeLargeUiMode:Z
    .end local v11           #hasTimedMsg:Z
    .restart local v13       #i:I
    .restart local v16       #s:Landroid/text/SpannableStringBuilder;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 290
    .end local v13           #i:I
    .end local v16           #s:Landroid/text/SpannableStringBuilder;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 295
    .restart local v9       #hasError:Z
    :cond_d
    const/16 v18, 0x8

    goto/16 :goto_8

    .line 298
    .restart local v11       #hasTimedMsg:Z
    :cond_e
    const/16 v18, 0x8

    goto/16 :goto_9

    .line 302
    .restart local v7       #hasAttachment:Z
    :cond_f
    const/16 v18, 0x8

    goto :goto_a

    .line 306
    .restart local v8       #hasDraft:Z
    :cond_10
    const/16 v18, 0x8

    goto :goto_b

    .line 307
    :cond_11
    const/4 v10, 0x0

    goto :goto_c

    .line 310
    .restart local v10       #hasHugeLargeUiMode:Z
    :cond_12
    const/16 v18, 0x0

    goto :goto_d
.end method

.method public onCheckStateChanged(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 346
    if-eqz p1, :cond_0

    .line 348
    iget v0, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    .line 353
    :goto_0
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->BACKGROUND_RESID:[I

    iget v1, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->setBackgroundResource(I)V

    .line 354
    return-void

    .line 351
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 118
    const v0, 0x7f100013

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 119
    const v0, 0x7f100014

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFetionPrefix:Landroid/view/View;

    .line 120
    const v0, 0x7f100015

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f100016

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f100017

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f100018

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f100019

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f10001a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentIndicator:Landroid/view/View;

    .line 126
    const v0, 0x7f10001b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mTimedIndicator:Landroid/view/View;

    .line 127
    const v0, 0x7f10001c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDraftIndicator:Landroid/view/View;

    .line 128
    const v0, 0x7f10001d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mErrorIndicator:Landroid/view/View;

    .line 129
    const v0, 0x1020001

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 131
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mPreferences:Landroid/content/SharedPreferences;

    .line 132
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 417
    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mPaddingLeft:I

    .line 418
    .local v6, x:I
    iget v8, p0, Lcom/android/mms/ui/ConversationListItem;->mPaddingTop:I

    iget v9, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemPaddingOuter:I

    add-int v7, v8, v9

    .line 421
    .local v7, y:I
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v8}, Landroid/widget/QuickContactBadge;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 422
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    iget v9, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarSize:I

    add-int/2addr v9, v6

    iget v10, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarSize:I

    add-int/2addr v10, v7

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/widget/QuickContactBadge;->layout(IIII)V

    .line 423
    iget v8, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarSize:I

    add-int/2addr v6, v8

    .line 424
    iget v8, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemPaddingOuter:I

    add-int/2addr v6, v8

    .line 428
    :cond_0
    sub-int v8, p5, p3

    iget v9, p0, Lcom/android/mms/ui/ConversationListItem;->mPaddingTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/mms/ui/ConversationListItem;->mPaddingBottom:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemPaddingOuter:I

    mul-int/lit8 v9, v9, 0x2

    sub-int v4, v8, v9

    .line 429
    .local v4, height:I
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_1

    .line 430
    iget v8, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemPaddingOuter:I

    iget v9, p0, Lcom/android/mms/ui/ConversationListItem;->mPaddingTop:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v9

    sub-int v9, v4, v9

    div-int/lit8 v9, v9, 0x2

    add-int v5, v8, v9

    .line 431
    .local v5, top:I
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    iget v9, p0, Lcom/android/mms/ui/ConversationListItem;->mPaddingRight:I

    sub-int v9, p4, v9

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/mms/ui/ConversationListItem;->mPaddingRight:I

    sub-int v10, p4, v10

    iget-object v11, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v11}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v5

    invoke-virtual {v8, v9, v5, v10, v11}, Landroid/widget/CheckBox;->layout(IIII)V

    .line 437
    .end local v5           #top:I
    :cond_1
    iget v8, p0, Lcom/android/mms/ui/ConversationListItem;->mFromTopAscent:I

    sub-int/2addr v7, v8

    .line 438
    move v3, v6

    .line 439
    .local v3, fromX:I
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mFetionPrefix:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_2

    .line 440
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getBaseline()I

    move-result v8

    add-int/2addr v8, v7

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListItem;->mFetionPrefix:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBaseline()I

    move-result v9

    sub-int v2, v8, v9

    .line 441
    .local v2, fetionY:I
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mFetionPrefix:Landroid/view/View;

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListItem;->mFetionPrefix:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListItem;->mFetionPrefix:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual {v8, v6, v2, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 443
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mFetionPrefix:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v3, v8

    .line 444
    iget v8, p0, Lcom/android/mms/ui/ConversationListItem;->mFromRightPadding:I

    add-int/2addr v3, v8

    .line 447
    .end local v2           #fetionY:I
    :cond_2
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v8, v3, v7, v9, v10}, Landroid/widget/TextView;->layout(IIII)V

    .line 448
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v3

    iget v9, p0, Lcom/android/mms/ui/ConversationListItem;->mFromRightPadding:I

    add-int v0, v8, v9

    .line 449
    .local v0, countX:I
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_9

    .line 450
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int v1, v7, v8

    .line 451
    .local v1, countY:I
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v0

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v1

    invoke-virtual {v8, v0, v1, v9, v10}, Landroid/widget/TextView;->layout(IIII)V

    .line 462
    .end local v1           #countY:I
    :cond_3
    :goto_0
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 465
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_4

    .line 466
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/widget/TextView;->layout(IIII)V

    .line 468
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 472
    :cond_4
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/widget/TextView;->layout(IIII)V

    .line 473
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v6, v8

    .line 474
    iget v8, p0, Lcom/android/mms/ui/ConversationListItem;->mDateRightPadding:I

    add-int/2addr v6, v8

    .line 475
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getBaseline()I

    move-result v8

    add-int/2addr v7, v8

    .line 477
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentIndicator:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_5

    .line 478
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentIndicator:Landroid/view/View;

    iget v9, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorSize:I

    sub-int v9, v7, v9

    iget v10, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorSize:I

    add-int/2addr v10, v6

    invoke-virtual {v8, v6, v9, v10, v7}, Landroid/view/View;->layout(IIII)V

    .line 479
    iget v8, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorSize:I

    add-int/2addr v6, v8

    .line 480
    iget v8, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorPadding:I

    add-int/2addr v6, v8

    .line 482
    :cond_5
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mTimedIndicator:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_6

    .line 483
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mTimedIndicator:Landroid/view/View;

    iget v9, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorSize:I

    sub-int v9, v7, v9

    iget v10, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorSize:I

    add-int/2addr v10, v6

    invoke-virtual {v8, v6, v9, v10, v7}, Landroid/view/View;->layout(IIII)V

    .line 484
    iget v8, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorSize:I

    add-int/2addr v6, v8

    .line 485
    iget v8, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorPadding:I

    add-int/2addr v6, v8

    .line 487
    :cond_6
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mDraftIndicator:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_7

    .line 488
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mDraftIndicator:Landroid/view/View;

    iget v9, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorSize:I

    sub-int v9, v7, v9

    iget v10, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorSize:I

    add-int/2addr v10, v6

    invoke-virtual {v8, v6, v9, v10, v7}, Landroid/view/View;->layout(IIII)V

    .line 489
    iget v8, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorSize:I

    add-int/2addr v6, v8

    .line 490
    iget v8, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorPadding:I

    add-int/2addr v6, v8

    .line 492
    :cond_7
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mErrorIndicator:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_8

    .line 493
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mErrorIndicator:Landroid/view/View;

    iget v9, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorSize:I

    sub-int v9, v7, v9

    iget v10, p0, Lcom/android/mms/ui/ConversationListItem;->mIndicatorSize:I

    add-int/2addr v10, v6

    invoke-virtual {v8, v6, v9, v10, v7}, Landroid/view/View;->layout(IIII)V

    .line 495
    :cond_8
    return-void

    .line 455
    :cond_9
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_3

    .line 456
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int v1, v7, v8

    .line 457
    .restart local v1       #countY:I
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v0

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v1

    invoke-virtual {v8, v0, v1, v9, v10}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, -0x8000

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 365
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 368
    .local v0, contentWidth:I
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5}, Landroid/widget/QuickContactBadge;->getVisibility()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 369
    iget v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarSize:I

    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemPaddingOuter:I

    add-int/2addr v5, v6

    sub-int/2addr v0, v5

    .line 373
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v5

    if-eq v5, v8, :cond_1

    .line 374
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7, v7}, Landroid/widget/CheckBox;->measure(II)V

    .line 375
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemPaddingOuter:I

    add-int/2addr v5, v6

    sub-int/2addr v0, v5

    .line 379
    :cond_1
    const/4 v1, 0x0

    .line 380
    .local v1, countWidth:I
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eq v5, v8, :cond_5

    .line 381
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v7}, Landroid/widget/TextView;->measure(II)V

    .line 382
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mFromRightPadding:I

    add-int v1, v5, v6

    .line 388
    :cond_2
    :goto_0
    sub-int v3, v0, v1

    .line 389
    .local v3, maxFromWidth:I
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mFetionPrefix:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v8, :cond_3

    .line 390
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mFetionPrefix:Landroid/view/View;

    invoke-virtual {v5, v7, v7}, Landroid/view/View;->measure(II)V

    .line 391
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mFetionPrefix:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v3, v5

    .line 394
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->measure(II)V

    .line 399
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eq v5, v8, :cond_4

    .line 400
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->measure(II)V

    .line 406
    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v7}, Landroid/widget/TextView;->measure(II)V

    .line 408
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 409
    .local v4, width:I
    iget v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarSize:I

    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mPaddingTop:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mPaddingBottom:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mListItemPaddingOuter:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-static {v5, p2}, Lcom/android/mms/ui/ConversationListItem;->getDefaultSize(II)I

    move-result v2

    .line 412
    .local v2, height:I
    invoke-virtual {p0, v4, v2}, Lcom/android/mms/ui/ConversationListItem;->setMeasuredDimension(II)V

    .line 413
    return-void

    .line 383
    .end local v2           #height:I
    .end local v3           #maxFromWidth:I
    .end local v4           #width:I
    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eq v5, v8, :cond_2

    .line 384
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v7}, Landroid/widget/TextView;->measure(II)V

    .line 385
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/android/mms/ui/ConversationListItem;->mFromRightPadding:I

    add-int v1, v5, v6

    goto :goto_0
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ConversationListItem$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListItem$1;-><init>(Lcom/android/mms/ui/ConversationListItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    return-void
.end method

.method protected setBackground(Landroid/database/Cursor;Z)V
    .locals 2
    .parameter "cursor"
    .parameter "isItemChecked"

    .prologue
    const/4 v1, 0x1

    .line 317
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 318
    if-eqz p2, :cond_0

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    .line 342
    :goto_0
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->BACKGROUND_RESID:[I

    iget v1, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->setBackgroundResource(I)V

    .line 343
    return-void

    .line 321
    :cond_0
    iput v1, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    goto :goto_0

    .line 323
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    if-eqz p2, :cond_2

    .line 325
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    goto :goto_0

    .line 327
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    goto :goto_0

    .line 329
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 330
    if-eqz p2, :cond_4

    .line 331
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    goto :goto_0

    .line 333
    :cond_4
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    goto :goto_0

    .line 336
    :cond_5
    if-eqz p2, :cond_6

    .line 337
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    goto :goto_0

    .line 339
    :cond_6
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mBackgroundIndex:I

    goto :goto_0
.end method

.method public final unbind()V
    .locals 0

    .prologue
    .line 359
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 360
    return-void
.end method
