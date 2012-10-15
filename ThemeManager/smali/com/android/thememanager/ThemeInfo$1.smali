.class Lcom/android/thememanager/ThemeInfo$1;
.super Ljava/lang/Object;
.source "ThemeInfo.java"

# interfaces
.implements Lmiui/content/res/IconCustomizer$CustomizedIconsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/ThemeInfo;->apply(JJLandroid/app/ProgressDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field originProgress:I

.field final synthetic this$0:Lcom/android/thememanager/ThemeInfo;

.field totalIcon:I

.field final synthetic val$iconNeedStep:I

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/thememanager/ThemeInfo;Landroid/app/ProgressDialog;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 529
    iput-object p1, p0, Lcom/android/thememanager/ThemeInfo$1;->this$0:Lcom/android/thememanager/ThemeInfo;

    iput-object p2, p0, Lcom/android/thememanager/ThemeInfo$1;->val$progressDialog:Landroid/app/ProgressDialog;

    iput p3, p0, Lcom/android/thememanager/ThemeInfo$1;->val$iconNeedStep:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    iput v0, p0, Lcom/android/thememanager/ThemeInfo$1;->originProgress:I

    .line 531
    iput v0, p0, Lcom/android/thememanager/ThemeInfo$1;->totalIcon:I

    return-void
.end method


# virtual methods
.method public beforePrepareIcon(I)V
    .locals 1
    .parameter "totalTaskCnt"

    .prologue
    .line 533
    if-lez p1, :cond_0

    .end local p1
    :goto_0
    iput p1, p0, Lcom/android/thememanager/ThemeInfo$1;->totalIcon:I

    .line 534
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/thememanager/ThemeInfo$1;->originProgress:I

    .line 535
    return-void

    .line 533
    .restart local p1
    :cond_0
    const/4 p1, 0x1

    goto :goto_0
.end method

.method public finishAllIcons()V
    .locals 3

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$1;->val$progressDialog:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/android/thememanager/ThemeInfo$1;->originProgress:I

    iget v2, p0, Lcom/android/thememanager/ThemeInfo$1;->val$iconNeedStep:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 544
    return-void
.end method

.method public finishPrepareIcon(I)V
    .locals 4
    .parameter "currentTask"

    .prologue
    .line 537
    iget v1, p0, Lcom/android/thememanager/ThemeInfo$1;->originProgress:I

    iget v2, p0, Lcom/android/thememanager/ThemeInfo$1;->val$iconNeedStep:I

    mul-int/2addr v2, p1

    iget v3, p0, Lcom/android/thememanager/ThemeInfo$1;->totalIcon:I

    div-int/2addr v2, v3

    add-int v0, v1, v2

    .line 538
    .local v0, progress:I
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 541
    :cond_0
    return-void
.end method
