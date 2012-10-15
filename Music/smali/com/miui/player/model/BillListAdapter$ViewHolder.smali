.class Lcom/miui/player/model/BillListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BillListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/BillListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field public final mPreviewHolders:[Lcom/miui/player/model/BillListAdapter$PreviewHolder;

.field public final mPreviews:[Landroid/view/View;

.field public final mTextViewTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const v2, 0x7f0c0041

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/player/model/BillListAdapter$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    .line 162
    sget-object v2, Lcom/miui/player/model/BillListAdapter;->PREVIEW_ID_ARR:[I

    array-length v2, v2

    new-array v2, v2, [Lcom/miui/player/model/BillListAdapter$PreviewHolder;

    iput-object v2, p0, Lcom/miui/player/model/BillListAdapter$ViewHolder;->mPreviewHolders:[Lcom/miui/player/model/BillListAdapter$PreviewHolder;

    .line 163
    sget-object v2, Lcom/miui/player/model/BillListAdapter;->PREVIEW_ID_ARR:[I

    array-length v2, v2

    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/miui/player/model/BillListAdapter$ViewHolder;->mPreviews:[Landroid/view/View;

    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/miui/player/model/BillListAdapter;->PREVIEW_ID_ARR:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 165
    sget-object v2, Lcom/miui/player/model/BillListAdapter;->PREVIEW_ID_ARR:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 166
    .local v1, v:Landroid/view/View;
    iget-object v2, p0, Lcom/miui/player/model/BillListAdapter$ViewHolder;->mPreviews:[Landroid/view/View;

    aput-object v1, v2, v0

    .line 167
    iget-object v2, p0, Lcom/miui/player/model/BillListAdapter$ViewHolder;->mPreviewHolders:[Lcom/miui/player/model/BillListAdapter$PreviewHolder;

    new-instance v3, Lcom/miui/player/model/BillListAdapter$PreviewHolder;

    invoke-direct {v3, v1}, Lcom/miui/player/model/BillListAdapter$PreviewHolder;-><init>(Landroid/view/View;)V

    aput-object v3, v2, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .end local v1           #v:Landroid/view/View;
    :cond_0
    return-void
.end method
