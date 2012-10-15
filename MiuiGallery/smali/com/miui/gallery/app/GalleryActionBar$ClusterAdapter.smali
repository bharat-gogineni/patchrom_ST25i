.class Lcom/miui/gallery/app/GalleryActionBar$ClusterAdapter;
.super Landroid/widget/BaseAdapter;
.source "GalleryActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/GalleryActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClusterAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/GalleryActionBar;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/GalleryActionBar;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/miui/gallery/app/GalleryActionBar$ClusterAdapter;->this$0:Lcom/miui/gallery/app/GalleryActionBar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/GalleryActionBar;Lcom/miui/gallery/app/GalleryActionBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/GalleryActionBar$ClusterAdapter;-><init>(Lcom/miui/gallery/app/GalleryActionBar;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/miui/gallery/app/GalleryActionBar;->access$000()[Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 92
    invoke-static {}, Lcom/miui/gallery/app/GalleryActionBar;->access$000()[Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 96
    invoke-static {}, Lcom/miui/gallery/app/GalleryActionBar;->access$000()[Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    move-result-object v0

    aget-object v0, v0, p1

    iget v0, v0, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;->action:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 100
    if-nez p2, :cond_0

    .line 101
    iget-object v1, p0, Lcom/miui/gallery/app/GalleryActionBar$ClusterAdapter;->this$0:Lcom/miui/gallery/app/GalleryActionBar;

    #getter for: Lcom/miui/gallery/app/GalleryActionBar;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/miui/gallery/app/GalleryActionBar;->access$100(Lcom/miui/gallery/app/GalleryActionBar;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/high16 v2, 0x7f04

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 104
    check-cast v0, Landroid/widget/TextView;

    .line 105
    .local v0, view:Landroid/widget/TextView;
    invoke-static {}, Lcom/miui/gallery/app/GalleryActionBar;->access$000()[Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    move-result-object v1

    aget-object v1, v1, p1

    iget v1, v1, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;->spinnerTitle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 106
    return-object p2
.end method
