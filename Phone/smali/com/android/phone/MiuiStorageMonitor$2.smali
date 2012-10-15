.class Lcom/android/phone/MiuiStorageMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "MiuiStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiStorageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiStorageMonitor;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiStorageMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/phone/MiuiStorageMonitor$2;->this$0:Lcom/android/phone/MiuiStorageMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MiuiStorageMonitor$2;->this$0:Lcom/android/phone/MiuiStorageMonitor;

    #getter for: Lcom/android/phone/MiuiStorageMonitor;->mListener:Lcom/android/phone/MiuiStorageMonitor$Listener;
    invoke-static {v1}, Lcom/android/phone/MiuiStorageMonitor;->access$100(Lcom/android/phone/MiuiStorageMonitor;)Lcom/android/phone/MiuiStorageMonitor$Listener;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/phone/MiuiStorageMonitor$Listener;->onError(I)V

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MiuiStorageMonitor$2;->this$0:Lcom/android/phone/MiuiStorageMonitor;

    invoke-virtual {v1}, Lcom/android/phone/MiuiStorageMonitor;->stopMonitor()V

    .line 48
    return-void
.end method
