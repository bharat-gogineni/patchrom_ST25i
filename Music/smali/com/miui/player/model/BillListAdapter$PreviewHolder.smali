.class Lcom/miui/player/model/BillListAdapter$PreviewHolder;
.super Ljava/lang/Object;
.source "BillListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/BillListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreviewHolder"
.end annotation


# instance fields
.field public final mTextViewArtist:Landroid/widget/TextView;

.field public final mTextViewNum:Landroid/widget/TextView;

.field public final mTextViewTrack:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const v0, 0x7f0c0049

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/model/BillListAdapter$PreviewHolder;->mTextViewNum:Landroid/widget/TextView;

    .line 179
    const v0, 0x7f0c004a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/model/BillListAdapter$PreviewHolder;->mTextViewTrack:Landroid/widget/TextView;

    .line 180
    const v0, 0x7f0c004b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/model/BillListAdapter$PreviewHolder;->mTextViewArtist:Landroid/widget/TextView;

    .line 181
    return-void
.end method
