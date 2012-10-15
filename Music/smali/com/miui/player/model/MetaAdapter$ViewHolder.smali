.class Lcom/miui/player/model/MetaAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MetaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/MetaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field final mImageViewAlbum:Landroid/widget/ImageView;

.field final mImageViewIndicator:Landroid/widget/ImageView;

.field final mImageViewMask:Landroid/widget/ImageView;

.field final mTextViewPrimary:Landroid/widget/TextView;

.field final mTextViewSecondary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const v0, 0x7f0c0011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/model/MetaAdapter$ViewHolder;->mTextViewPrimary:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0c0012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/model/MetaAdapter$ViewHolder;->mTextViewSecondary:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0c0010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/model/MetaAdapter$ViewHolder;->mImageViewIndicator:Landroid/widget/ImageView;

    .line 81
    const v0, 0x7f0c0005

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/model/MetaAdapter$ViewHolder;->mImageViewAlbum:Landroid/widget/ImageView;

    .line 82
    const v0, 0x7f0c0006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/model/MetaAdapter$ViewHolder;->mImageViewMask:Landroid/widget/ImageView;

    .line 83
    return-void
.end method
