.class Lcom/android/mms/ui/FestivalActivity$4;
.super Ljava/lang/Object;
.source "FestivalActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FestivalActivity;->playAnimation3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FestivalActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FestivalActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/mms/ui/FestivalActivity$4;->this$0:Lcom/android/mms/ui/FestivalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/FestivalActivity$4;->this$0:Lcom/android/mms/ui/FestivalActivity;

    #getter for: Lcom/android/mms/ui/FestivalActivity;->mWordsView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mms/ui/FestivalActivity;->access$400(Lcom/android/mms/ui/FestivalActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 190
    iget-object v0, p0, Lcom/android/mms/ui/FestivalActivity$4;->this$0:Lcom/android/mms/ui/FestivalActivity;

    #getter for: Lcom/android/mms/ui/FestivalActivity;->mWordsView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mms/ui/FestivalActivity;->access$400(Lcom/android/mms/ui/FestivalActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 191
    return-void
.end method
