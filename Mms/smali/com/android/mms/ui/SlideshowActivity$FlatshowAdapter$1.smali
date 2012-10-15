.class Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter$1;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;

.field final synthetic val$part:Lcom/android/mms/ui/SimplePduPart;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;Lcom/android/mms/ui/SimplePduPart;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter$1;->this$1:Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter$1;->val$part:Lcom/android/mms/ui/SimplePduPart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter$1;->this$1:Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;

    iget-object v1, v1, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter$1;->val$part:Lcom/android/mms/ui/SimplePduPart;

    invoke-virtual {v2}, Lcom/android/mms/ui/SimplePduPart;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SlideshowActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter$1;->this$1:Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;

    iget-object v1, v1, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter$1;->this$1:Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;

    iget-object v2, v2, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    const v3, 0x7f0a0192

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SlideshowActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
