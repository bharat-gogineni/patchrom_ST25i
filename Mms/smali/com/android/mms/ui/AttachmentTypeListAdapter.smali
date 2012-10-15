.class public Lcom/android/mms/ui/AttachmentTypeListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AttachmentTypeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;
    }
.end annotation


# static fields
.field private static mTypeItems:[Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 62
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;

    new-instance v1, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;

    const v2, 0x7f0a011d

    const v3, 0x7f020086

    invoke-direct {v1, v2, v3, v5}, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;-><init>(IIZ)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;

    const v2, 0x7f0a011f

    const v3, 0x7f02006c

    invoke-direct {v1, v2, v3, v5}, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;-><init>(IIZ)V

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-instance v2, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;

    const v3, 0x7f0a0120

    const v4, 0x7f020072

    invoke-direct {v2, v3, v4, v6}, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;-><init>(IIZ)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;

    const v3, 0x7f0a00ce

    const v4, 0x7f020075

    invoke-direct {v2, v3, v4, v5}, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;-><init>(IIZ)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;

    const v3, 0x7f0a00cf

    const v4, 0x7f02008f

    invoke-direct {v2, v3, v4, v5}, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;-><init>(IIZ)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;

    const v3, 0x7f0a011e

    const v4, 0x7f020078

    invoke-direct {v2, v3, v4, v5}, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;-><init>(IIZ)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;

    const v3, 0x7f0a0121

    const v4, 0x7f02006f

    invoke-direct {v2, v3, v4, v5}, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;-><init>(IIZ)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;

    const v3, 0x7f0a019f

    const v4, 0x7f020092

    invoke-direct {v2, v3, v4, v5}, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;-><init>(IIZ)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;

    const v3, 0x7f0a00d0

    const v4, 0x7f020095

    invoke-direct {v2, v3, v4, v5}, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;-><init>(IIZ)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;

    const v3, 0x7f0a00d1

    const v4, 0x7f02007f

    invoke-direct {v2, v3, v4, v5}, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;-><init>(IIZ)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;

    const v3, 0x7f0a00d2

    const v4, 0x7f020089

    invoke-direct {v2, v3, v4, v5}, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;-><init>(IIZ)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;

    const v3, 0x7f0a00d3

    const v4, 0x7f02007c

    invoke-direct {v2, v3, v4, v5}, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;-><init>(IIZ)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;

    const v3, 0x7f0a00d4

    const v4, 0x7f020082

    invoke-direct {v2, v3, v4, v5}, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;-><init>(IIZ)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;

    const v3, 0x7f0a0188

    const v4, 0x7f02008c

    invoke-direct {v2, v3, v4, v5}, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;-><init>(IIZ)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/AttachmentTypeListAdapter;->mTypeItems:[Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentTypeListAdapter;->mContext:Landroid/content/Context;

    .line 25
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentTypeListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentTypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/mms/ui/AttachmentTypeListAdapter;->mTypeItems:[Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 97
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 102
    const/4 v2, 0x0

    .line 103
    .local v2, itemView:Landroid/view/View;
    if-eqz p2, :cond_0

    .line 104
    move-object v2, p2

    .line 109
    :goto_0
    const v3, 0x7f100001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    .local v0, attachmentName:Landroid/widget/TextView;
    const/high16 v3, 0x7f10

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 111
    .local v1, iconView:Landroid/widget/ImageView;
    sget-object v3, Lcom/android/mms/ui/AttachmentTypeListAdapter;->mTypeItems:[Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;->nameRes:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 112
    sget-object v3, Lcom/android/mms/ui/AttachmentTypeListAdapter;->mTypeItems:[Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;->iconRes:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    return-object v2

    .line 106
    .end local v0           #attachmentName:Landroid/widget/TextView;
    .end local v1           #iconView:Landroid/widget/ImageView;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentTypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v4, 0x7f04

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method
