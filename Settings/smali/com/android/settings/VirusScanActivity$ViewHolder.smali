.class final Lcom/android/settings/VirusScanActivity$ViewHolder;
.super Ljava/lang/Object;
.source "VirusScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VirusScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewHolder"
.end annotation


# instance fields
.field public mItemInf:Landroid/widget/TextView;

.field public mItemSubInf:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/VirusScanActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/VirusScanActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/settings/VirusScanActivity$ViewHolder;->this$0:Lcom/android/settings/VirusScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/VirusScanActivity;Lcom/android/settings/VirusScanActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/VirusScanActivity$ViewHolder;-><init>(Lcom/android/settings/VirusScanActivity;)V

    return-void
.end method
