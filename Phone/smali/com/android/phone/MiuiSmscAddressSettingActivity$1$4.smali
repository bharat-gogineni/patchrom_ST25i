.class Lcom/android/phone/MiuiSmscAddressSettingActivity$1$4;
.super Ljava/lang/Object;
.source "MiuiSmscAddressSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiSmscAddressSettingActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/MiuiSmscAddressSettingActivity$1;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiSmscAddressSettingActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$1$4;->this$1:Lcom/android/phone/MiuiSmscAddressSettingActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$1$4;->this$1:Lcom/android/phone/MiuiSmscAddressSettingActivity$1;

    iget-object v0, v0, Lcom/android/phone/MiuiSmscAddressSettingActivity$1;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    invoke-virtual {v0}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->finish()V

    .line 132
    return-void
.end method
