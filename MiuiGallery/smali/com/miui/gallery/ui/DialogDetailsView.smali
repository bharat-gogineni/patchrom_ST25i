.class public Lcom/miui/gallery/ui/DialogDetailsView;
.super Ljava/lang/Object;
.source "DialogDetailsView.java"

# interfaces
.implements Lcom/miui/gallery/ui/DetailsHelper$DetailsViewContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/DialogDetailsView$DetailsAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/ui/DialogDetailsView$DetailsAdapter;

.field private final mContext:Lcom/miui/gallery/app/GalleryActivity;

.field private mDetails:Lcom/miui/gallery/data/MediaDetails;

.field private mDialog:Landroid/app/Dialog;

.field private mIndex:I

.field private mListener:Lcom/miui/gallery/ui/DetailsHelper$CloseListener;

.field private final mSource:Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;)V
    .locals 0
    .parameter "activity"
    .parameter "source"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mContext:Lcom/miui/gallery/app/GalleryActivity;

    .line 60
    iput-object p2, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mSource:Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/DialogDetailsView;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/DialogDetailsView;)Lcom/miui/gallery/ui/DetailsHelper$CloseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mListener:Lcom/miui/gallery/ui/DetailsHelper$CloseListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/DialogDetailsView;)Lcom/miui/gallery/app/GalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mContext:Lcom/miui/gallery/app/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/DialogDetailsView;)Lcom/miui/gallery/data/MediaDetails;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mDetails:Lcom/miui/gallery/data/MediaDetails;

    return-object v0
.end method

.method private setDetails(Lcom/miui/gallery/data/MediaDetails;)V
    .locals 7
    .parameter "details"

    .prologue
    const/4 v6, 0x0

    .line 89
    new-instance v2, Lcom/miui/gallery/ui/DialogDetailsView$DetailsAdapter;

    invoke-direct {v2, p0, p1}, Lcom/miui/gallery/ui/DialogDetailsView$DetailsAdapter;-><init>(Lcom/miui/gallery/ui/DialogDetailsView;Lcom/miui/gallery/data/MediaDetails;)V

    iput-object v2, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mAdapter:Lcom/miui/gallery/ui/DialogDetailsView$DetailsAdapter;

    .line 90
    iget-object v2, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mContext:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d004f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mSource:Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;

    invoke-interface {v5}, Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, title:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mContext:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04000f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 95
    .local v0, detailsList:Landroid/widget/ListView;
    iget-object v2, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mAdapter:Lcom/miui/gallery/ui/DialogDetailsView$DetailsAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mContext:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0050

    new-instance v4, Lcom/miui/gallery/ui/DialogDetailsView$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/DialogDetailsView$1;-><init>(Lcom/miui/gallery/ui/DialogDetailsView;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    .line 106
    iget-object v2, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    new-instance v3, Lcom/miui/gallery/ui/DialogDetailsView$2;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/DialogDetailsView$2;-><init>(Lcom/miui/gallery/ui/DialogDetailsView;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 113
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 70
    return-void
.end method

.method public reloadDetails(I)V
    .locals 3
    .parameter "indexHint"

    .prologue
    .line 73
    iget-object v2, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mSource:Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;

    invoke-interface {v2, p1}, Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;->findIndex(I)I

    move-result v1

    .line 74
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mSource:Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;

    invoke-interface {v2}, Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v0

    .line 76
    .local v0, details:Lcom/miui/gallery/data/MediaDetails;
    if-eqz v0, :cond_0

    .line 77
    iget v2, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mIndex:I

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mDetails:Lcom/miui/gallery/data/MediaDetails;

    if-eq v2, v0, :cond_0

    .line 78
    :cond_2
    iput v1, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mIndex:I

    .line 79
    iput-object v0, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mDetails:Lcom/miui/gallery/data/MediaDetails;

    .line 80
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/DialogDetailsView;->setDetails(Lcom/miui/gallery/data/MediaDetails;)V

    goto :goto_0
.end method

.method public setCloseListener(Lcom/miui/gallery/ui/DetailsHelper$CloseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mListener:Lcom/miui/gallery/ui/DetailsHelper$CloseListener;

    .line 239
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mSource:Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;

    invoke-interface {v0}, Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/DialogDetailsView;->reloadDetails(I)V

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 66
    return-void
.end method
