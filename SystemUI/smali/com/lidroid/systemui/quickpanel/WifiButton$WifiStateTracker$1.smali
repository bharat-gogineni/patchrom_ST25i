.class Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker$1;
.super Landroid/os/AsyncTask;
.source "WifiButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker;

.field final synthetic val$desiredState:Z

.field final synthetic val$wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker;Landroid/net/wifi/WifiManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker$1;->this$0:Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker;

    iput-object p2, p0, Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iput-boolean p3, p0, Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker$1;->val$desiredState:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    const/4 p1, 0x0

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    iget-boolean v1, p0, Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker$1;->val$desiredState:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    const/4 p0, 0x0

    invoke-virtual {v1, p1, p0}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_1
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean p0, p0, Lcom/lidroid/systemui/quickpanel/WifiButton$WifiStateTracker$1;->val$desiredState:Z

    invoke-virtual {v1, p0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-object p1
.end method
