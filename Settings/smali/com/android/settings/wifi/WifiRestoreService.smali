.class public Lcom/android/settings/wifi/WifiRestoreService;
.super Landroid/app/Service;
.source "WifiRestoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiRestoreService$WifiServiceHandler;
    }
.end annotation


# instance fields
.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 266
    new-instance v0, Lcom/android/settings/wifi/WifiRestoreService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiRestoreService$1;-><init>(Lcom/android/settings/wifi/WifiRestoreService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiRestoreService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiRestoreService;->setWifiConfiguration()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiRestoreService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiRestoreService;->updateWifiList()V

    return-void
.end method

.method private copyRestoreFile()Z
    .locals 6

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiRestoreService;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 77
    .local v0, cacheDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 81
    :cond_0
    const/4 v1, 0x0

    .line 82
    .local v1, ret:Z
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    const-string v5, "wpa_supplicant.conf"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    .local v2, tempWifiFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 84
    new-instance v3, Ljava/io/File;

    const-string v4, "wpa_supplicant.conf"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    .local v3, wifiFile:Ljava/io/File;
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 87
    .end local v3           #wifiFile:Ljava/io/File;
    :cond_1
    return v1
.end method

.method private initWifiList()V
    .locals 6

    .prologue
    .line 91
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiMap:Ljava/util/HashMap;

    .line 93
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiRestoreService;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "wpa_supplicant.conf"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    .local v3, wifiFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 100
    .local v2, reader:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 101
    .local v1, line:Ljava/lang/String;
    const/4 v0, 0x0

    .line 103
    .local v0, configuration:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 104
    if-nez v1, :cond_3

    .line 116
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 117
    if-eqz v0, :cond_0

    .line 118
    iget-object v4, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiMap:Ljava/util/HashMap;

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 120
    .end local v0           #configuration:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 107
    .restart local v0       #configuration:Landroid/net/wifi/WifiConfiguration;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :cond_3
    const-string v4, "network={"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 108
    if-eqz v0, :cond_4

    .line 109
    iget-object v4, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiMap:Ljava/util/HashMap;

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_4
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    .end local v0           #configuration:Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 113
    .restart local v0       #configuration:Landroid/net/wifi/WifiConfiguration;
    :cond_5
    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiRestoreService;->setWifiConfigurationField(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    if-nez v1, :cond_2

    goto :goto_1
.end method

.method private parsePairValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "pair"

    .prologue
    .line 240
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, pairValue:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 242
    return-object v0
.end method

.method private saveWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 246
    if-nez p2, :cond_0

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method

.method private setEnterpriseField(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V
    .locals 3
    .parameter "enterpriseField"
    .parameter "line"

    .prologue
    .line 232
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiRestoreService;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, value:Ljava/lang/String;
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_0
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method private setWifiConfiguration()V
    .locals 8

    .prologue
    .line 126
    iget-object v6, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 127
    .local v1, configList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v6, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiMap:Ljava/util/HashMap;

    if-nez v6, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiRestoreService;->initWifiList()V

    .line 130
    :cond_0
    if-eqz v1, :cond_2

    .line 131
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 132
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiMap:Ljava/util/HashMap;

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 133
    iget-object v6, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiMap:Ljava/util/HashMap;

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    .line 139
    .local v3, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v6, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_4

    if-eqz v3, :cond_4

    .line 140
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 141
    .local v4, scanResult:Landroid/net/wifi/ScanResult;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, ssid:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 143
    iget-object v6, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, p0, v6}, Lcom/android/settings/wifi/WifiRestoreService;->saveWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 148
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #scanResult:Landroid/net/wifi/ScanResult;
    .end local v5           #ssid:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private setWifiConfigurationField(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .locals 8
    .parameter "line"
    .parameter "configuration"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 151
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 156
    const-string v2, "ssid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiRestoreService;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 158
    :cond_2
    const-string v2, "bssid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiRestoreService;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_0

    .line 160
    :cond_3
    const-string v2, "psk"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 161
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiRestoreService;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 162
    :cond_4
    sget-object v2, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 163
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiRestoreService;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    goto :goto_0

    .line 164
    :cond_5
    sget-object v2, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 165
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiRestoreService;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    goto :goto_0

    .line 166
    :cond_6
    sget-object v2, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 167
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiRestoreService;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    goto :goto_0

    .line 168
    :cond_7
    sget-object v2, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 169
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiRestoreService;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    goto :goto_0

    .line 170
    :cond_8
    const-string v2, "wep_tx_keyidx"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 171
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiRestoreService;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto/16 :goto_0

    .line 172
    :cond_9
    const-string v2, "priority"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 173
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiRestoreService;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_0

    .line 174
    :cond_a
    const-string v2, "scan_ssid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 175
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiRestoreService;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto/16 :goto_0

    .line 176
    :cond_b
    const-string v2, "key_mgmt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 177
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiRestoreService;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, type:Ljava/lang/String;
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 179
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 180
    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 181
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 179
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 184
    .end local v0           #i:I
    .end local v1           #type:Ljava/lang/String;
    :cond_d
    const-string v2, "proto"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 185
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiRestoreService;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .restart local v1       #type:Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    sget-object v2, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 187
    sget-object v2, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 188
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 186
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 191
    .end local v0           #i:I
    .end local v1           #type:Ljava/lang/String;
    :cond_f
    const-string v2, "auth_alg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 192
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiRestoreService;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .restart local v1       #type:Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    sget-object v2, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 194
    sget-object v2, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 195
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 193
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 198
    .end local v0           #i:I
    .end local v1           #type:Ljava/lang/String;
    :cond_11
    const-string v2, "pairwise"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 199
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiRestoreService;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .restart local v1       #type:Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    sget-object v2, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 201
    sget-object v2, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 202
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 200
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 205
    .end local v0           #i:I
    .end local v1           #type:Ljava/lang/String;
    :cond_13
    const-string v2, "group"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 206
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiRestoreService;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .restart local v1       #type:Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    sget-object v2, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 208
    sget-object v2, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 209
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 207
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 212
    .end local v0           #i:I
    .end local v1           #type:Ljava/lang/String;
    :cond_15
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 213
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-direct {p0, v2, p1}, Lcom/android/settings/wifi/WifiRestoreService;->setEnterpriseField(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    :cond_16
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 215
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-direct {p0, v2, p1}, Lcom/android/settings/wifi/WifiRestoreService;->setEnterpriseField(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    :cond_17
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 217
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-direct {p0, v2, p1}, Lcom/android/settings/wifi/WifiRestoreService;->setEnterpriseField(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :cond_18
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 219
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-direct {p0, v2, p1}, Lcom/android/settings/wifi/WifiRestoreService;->setEnterpriseField(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    :cond_19
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 221
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-direct {p0, v2, p1}, Lcom/android/settings/wifi/WifiRestoreService;->setEnterpriseField(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    :cond_1a
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 223
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-direct {p0, v2, p1}, Lcom/android/settings/wifi/WifiRestoreService;->setEnterpriseField(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    :cond_1b
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 225
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-direct {p0, v2, p1}, Lcom/android/settings/wifi/WifiRestoreService;->setEnterpriseField(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 226
    :cond_1c
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-direct {p0, v2, p1}, Lcom/android/settings/wifi/WifiRestoreService;->setEnterpriseField(Landroid/net/wifi/WifiConfiguration$EnterpriseField;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateWifiList()V
    .locals 10

    .prologue
    .line 279
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiRestoreService;->getCacheDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "wpa_supplicant.conf"

    invoke-direct {v6, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 280
    .local v6, wifiFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 318
    :goto_0
    return-void

    .line 284
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 285
    .local v3, reader:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 286
    .local v2, line:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 289
    .local v1, isSsidValid:Z
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 290
    if-nez v2, :cond_2

    .line 307
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 309
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 310
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 312
    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 313
    .local v7, writer:Ljava/io/FileWriter;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V

    goto :goto_0

    .line 315
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #isSsidValid:Z
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v7           #writer:Ljava/io/FileWriter;
    :catch_0
    move-exception v8

    goto :goto_0

    .line 293
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v1       #isSsidValid:Z
    .restart local v2       #line:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :cond_2
    const-string v8, "network={"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 294
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 295
    .local v5, ssidLine:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiRestoreService;->parsePairValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, ssid:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiMap:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 297
    if-eqz v1, :cond_3

    .line 298
    const-string v8, "network={\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_3
    move-object v2, v5

    .line 302
    .end local v4           #ssid:Ljava/lang/String;
    .end local v5           #ssidLine:Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_5

    .line 303
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_5
    if-nez v2, :cond_1

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 38
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiRestoreService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 39
    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v2, Lcom/android/settings/wifi/WifiRestoreService$WifiServiceHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/WifiRestoreService$WifiServiceHandler;-><init>(Lcom/android/settings/wifi/WifiRestoreService;Lcom/android/settings/wifi/WifiRestoreService$1;)V

    invoke-virtual {v1, p0, v2}, Landroid/net/wifi/WifiManager;->asyncConnect(Landroid/content/Context;Landroid/os/Handler;)V

    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 42
    .local v0, wifiFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/WifiRestoreService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiRestoreService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 50
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 51
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v2, 0x1

    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, isRestore:Z
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.RESTORE_FINISH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiRestoreService;->copyRestoreFile()Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 62
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    if-eqz v1, :cond_2

    .line 63
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiRestoreService;->initWifiList()V

    .line 65
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiRestoreService;->setWifiConfiguration()V

    .line 67
    return v2

    .line 58
    .restart local v0       #action:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method
