.class public Lcom/android/mms/ui/PhraseListItem;
.super Landroid/widget/LinearLayout;
.source "PhraseListItem.java"


# instance fields
.field private mPhraseBodyView:Landroid/widget/TextView;

.field private mPhraseSmsItem:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    const v0, 0x7f04003a

    invoke-static {p1, v0, p0}, Lcom/android/mms/ui/PhraseListItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    const v0, 0x7f1000b0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/PhraseListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/PhraseListItem;->mPhraseBodyView:Landroid/widget/TextView;

    .line 17
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;)V
    .locals 1
    .parameter "msgItem"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/mms/ui/PhraseListItem;->mPhraseSmsItem:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/android/mms/ui/PhraseListItem;->mPhraseBodyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    return-void
.end method
