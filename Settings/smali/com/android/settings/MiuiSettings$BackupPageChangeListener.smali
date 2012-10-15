.class Lcom/android/settings/MiuiSettings$BackupPageChangeListener;
.super Ljava/lang/Object;
.source "MiuiSettings.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/MiuiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/settings/MiuiSettings$BackupPageChangeListener;->this$0:Lcom/android/settings/MiuiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/MiuiSettings;Lcom/android/settings/MiuiSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettings$BackupPageChangeListener;-><init>(Lcom/android/settings/MiuiSettings;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 270
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 274
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 278
    invoke-static {p1}, Lcom/android/settings/MiuiSettings$TabState;->fromInt(I)Lcom/android/settings/MiuiSettings$TabState;

    move-result-object v0

    .line 279
    .local v0, tab:Lcom/android/settings/MiuiSettings$TabState;
    iget-object v1, p0, Lcom/android/settings/MiuiSettings$BackupPageChangeListener;->this$0:Lcom/android/settings/MiuiSettings;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/MiuiSettings;->selectTab(Lcom/android/settings/MiuiSettings$TabState;Z)V

    .line 280
    return-void
.end method
