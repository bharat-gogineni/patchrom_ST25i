.class Lcom/android/settings/MiuiWirelessSettings$1;
.super Landroid/os/Handler;
.source "MiuiWirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiWirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiWirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiWirelessSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/MiuiWirelessSettings$1;->this$0:Lcom/android/settings/MiuiWirelessSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings$1;->this$0:Lcom/android/settings/MiuiWirelessSettings;

    #calls: Lcom/android/settings/MiuiWirelessSettings;->refreshPreference()V
    invoke-static {v0}, Lcom/android/settings/MiuiWirelessSettings;->access$000(Lcom/android/settings/MiuiWirelessSettings;)V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
