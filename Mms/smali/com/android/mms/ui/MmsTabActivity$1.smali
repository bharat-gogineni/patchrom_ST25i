.class Lcom/android/mms/ui/MmsTabActivity$1;
.super Ljava/lang/Object;
.source "MmsTabActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsTabActivity;->askEnableMx()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsTabActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/mms/ui/MmsTabActivity$1;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity$1;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    invoke-static {v0, v1, v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->enableMx(Landroid/content/Context;ZZ)V

    .line 122
    return-void
.end method
