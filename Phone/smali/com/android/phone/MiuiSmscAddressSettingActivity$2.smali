.class Lcom/android/phone/MiuiSmscAddressSettingActivity$2;
.super Ljava/lang/Object;
.source "MiuiSmscAddressSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiSmscAddressSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiSmscAddressSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$2;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$2;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    invoke-virtual {v0}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->finish()V

    .line 288
    return-void
.end method
