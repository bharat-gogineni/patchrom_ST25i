.class Lcom/android/settings/MiuiWirelessSettings$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/settings/MiuiWirelessSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings/MiuiWirelessSettings$2;->this$0:Lcom/android/settings/MiuiWirelessSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/MiuiWirelessSettings$2;->this$0:Lcom/android/settings/MiuiWirelessSettings;

    #calls: Lcom/android/settings/MiuiWirelessSettings;->refreshPreference()V
    invoke-static {v0}, Lcom/android/settings/MiuiWirelessSettings;->access$000(Lcom/android/settings/MiuiWirelessSettings;)V

    .line 78
    return-void
.end method
