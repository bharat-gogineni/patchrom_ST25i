.class public Lcom/android/settings/wifi/MiuiAccessPoint;
.super Lcom/android/settings/wifi/AccessPoint;
.source "MiuiAccessPoint.java"


# instance fields
.field private mArrowClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 0
    .parameter "context"
    .parameter "result"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 27
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter "context"
    .parameter "config"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 23
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .parameter "context"
    .parameter "savedState"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 19
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3
    .parameter "preference"

    .prologue
    .line 44
    instance-of v1, p1, Lcom/android/settings/wifi/AccessPoint;

    if-nez v1, :cond_0

    .line 45
    const/4 v1, 0x1

    .line 49
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 47
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 49
    .local v0, other:Lcom/android/settings/wifi/AccessPoint;
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/MiuiAccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSecurityString(Z)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-super {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->onBindView(Landroid/view/View;)V

    .line 32
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 33
    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 34
    const v1, 0x7f0800f6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 35
    .local v0, detailArrow:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mArrowClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

.method public bridge synthetic saveWifiState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setArrowClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "onClickListener"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mArrowClickListener:Landroid/view/View$OnClickListener;

    .line 40
    return-void
.end method
