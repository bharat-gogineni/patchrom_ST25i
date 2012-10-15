.class Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoItem;
.super Landroid/widget/LinearLayout;
.source "MultipleRecipientsConversationHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultipleRecipientsConversationHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiRecipientContactInfoItem"
.end annotation


# instance fields
.field private mNameView:Landroid/widget/TextView;

.field private mNumberView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/mms/ui/MultipleRecipientsConversationHeader;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MultipleRecipientsConversationHeader;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoItem;->this$0:Lcom/android/mms/ui/MultipleRecipientsConversationHeader;

    .line 150
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 151
    const v0, 0x7f040030

    invoke-static {p2, v0, p0}, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 152
    const v0, 0x7f100078

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoItem;->mNameView:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f100079

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoItem;->mNumberView:Landroid/widget/TextView;

    .line 154
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "contact"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoItem;->mNameView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoItem;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoItem;->mNumberView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$MultiRecipientContactInfoItem;->mNumberView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
