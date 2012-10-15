.class Lcom/android/mms/ui/MmsTabActivity$MmsPageChangeListener;
.super Ljava/lang/Object;
.source "MmsTabActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MmsPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsTabActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MmsTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/mms/ui/MmsTabActivity$MmsPageChangeListener;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MmsTabActivity;Lcom/android/mms/ui/MmsTabActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsTabActivity$MmsPageChangeListener;-><init>(Lcom/android/mms/ui/MmsTabActivity;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 509
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 513
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 517
    invoke-static {p1}, Lcom/android/mms/ui/MmsTabActivity$TabState;->fromInt(I)Lcom/android/mms/ui/MmsTabActivity$TabState;

    move-result-object v0

    .line 518
    .local v0, tab:Lcom/android/mms/ui/MmsTabActivity$TabState;
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity$MmsPageChangeListener;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    const/4 v2, 0x0

    #calls: Lcom/android/mms/ui/MmsTabActivity;->selectTab(Lcom/android/mms/ui/MmsTabActivity$TabState;Z)V
    invoke-static {v1, v0, v2}, Lcom/android/mms/ui/MmsTabActivity;->access$700(Lcom/android/mms/ui/MmsTabActivity;Lcom/android/mms/ui/MmsTabActivity$TabState;Z)V

    .line 519
    return-void
.end method
