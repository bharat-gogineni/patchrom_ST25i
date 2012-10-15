.class final Lcom/android/settings/VirusScanActivity$LibViewHolder;
.super Ljava/lang/Object;
.source "VirusScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VirusScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LibViewHolder"
.end annotation


# instance fields
.field public mLibCheck:Landroid/widget/CheckBox;

.field public mLibIcon:Landroid/widget/ImageView;

.field public mLibName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/VirusScanActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/VirusScanActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/settings/VirusScanActivity$LibViewHolder;->this$0:Lcom/android/settings/VirusScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/VirusScanActivity;Lcom/android/settings/VirusScanActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/VirusScanActivity$LibViewHolder;-><init>(Lcom/android/settings/VirusScanActivity;)V

    return-void
.end method
