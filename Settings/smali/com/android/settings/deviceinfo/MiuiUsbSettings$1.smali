.class Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiUsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/MiuiUsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/MiuiUsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/MiuiUsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "content"
    .parameter "intent"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/MiuiUsbSettings;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/MiuiUsbSettings;

    #getter for: Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->access$000(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/deviceinfo/MiuiUsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->access$100(Lcom/android/settings/deviceinfo/MiuiUsbSettings;Ljava/lang/String;)V

    .line 38
    return-void
.end method
