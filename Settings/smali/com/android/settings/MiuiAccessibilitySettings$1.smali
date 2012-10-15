.class Lcom/android/settings/MiuiAccessibilitySettings$1;
.super Landroid/os/Handler;
.source "MiuiAccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiAccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiAccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiAccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings/MiuiAccessibilitySettings$1;->this$0:Lcom/android/settings/MiuiAccessibilitySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings$1;->this$0:Lcom/android/settings/MiuiAccessibilitySettings;

    #calls: Lcom/android/settings/MiuiAccessibilitySettings;->loadInstalledServices()V
    invoke-static {v0}, Lcom/android/settings/MiuiAccessibilitySettings;->access$100(Lcom/android/settings/MiuiAccessibilitySettings;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/MiuiAccessibilitySettings$1;->this$0:Lcom/android/settings/MiuiAccessibilitySettings;

    #calls: Lcom/android/settings/MiuiAccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/settings/MiuiAccessibilitySettings;->access$200(Lcom/android/settings/MiuiAccessibilitySettings;)V

    .line 141
    return-void
.end method
