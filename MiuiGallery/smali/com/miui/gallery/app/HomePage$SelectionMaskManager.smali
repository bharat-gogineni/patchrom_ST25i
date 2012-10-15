.class Lcom/miui/gallery/app/HomePage$SelectionMaskManager;
.super Ljava/lang/Object;
.source "HomePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/HomePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionMaskManager"
.end annotation


# instance fields
.field private final SELECTION_MASK_ALPHA:I

.field private mSelectionMaskCamera:Landroid/widget/ImageView;

.field private mSelectionMaskCloudAlbums:Landroid/view/View;

.field private mSelectionMaskRecentAlbum:Landroid/widget/ImageView;

.field private mSelectionMaskStorageExplorer:Landroid/view/View;

.field final synthetic this$0:Lcom/miui/gallery/app/HomePage;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/HomePage;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0b0067

    const/high16 v3, 0x4300

    const/16 v2, 0x80

    .line 856
    iput-object p1, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->this$0:Lcom/miui/gallery/app/HomePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->this$0:Lcom/miui/gallery/app/HomePage;

    const v1, 0x7f0b005b

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/HomePage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskCamera:Landroid/widget/ImageView;

    .line 850
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->this$0:Lcom/miui/gallery/app/HomePage;

    const v1, 0x7f0b0060

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/HomePage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskRecentAlbum:Landroid/widget/ImageView;

    .line 851
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mItemViewStorageExplorer:Lcom/miui/gallery/ui/HomePageItemView;
    invoke-static {v0}, Lcom/miui/gallery/app/HomePage;->access$2000(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/HomePageItemView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/miui/gallery/ui/HomePageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskStorageExplorer:Landroid/view/View;

    .line 852
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mItemViewCloudAlbums:Lcom/miui/gallery/ui/HomePageItemView;
    invoke-static {v0}, Lcom/miui/gallery/app/HomePage;->access$2100(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/HomePageItemView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/miui/gallery/ui/HomePageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskCloudAlbums:Landroid/view/View;

    .line 854
    iput v2, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->SELECTION_MASK_ALPHA:I

    .line 857
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskCamera:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 858
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskRecentAlbum:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 859
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskStorageExplorer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 860
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskCloudAlbums:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 861
    return-void
.end method


# virtual methods
.method public onEnterSelectionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 864
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mCameraViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;
    invoke-static {v0}, Lcom/miui/gallery/app/HomePage;->access$2200(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskRecentAlbum:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 869
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskStorageExplorer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 870
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskCloudAlbums:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 871
    return-void

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskCamera:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onLeaveSelectionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 874
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskCamera:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 875
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskRecentAlbum:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 876
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskStorageExplorer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 877
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskCloudAlbums:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 878
    return-void
.end method

.method public setSelectionMaskStorageExplorer(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 881
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->mSelectionMaskStorageExplorer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 882
    return-void
.end method
