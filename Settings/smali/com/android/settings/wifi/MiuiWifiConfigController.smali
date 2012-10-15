.class public Lcom/android/settings/wifi/MiuiWifiConfigController;
.super Lcom/android/settings/wifi/WifiConfigController;
.source "MiuiWifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;
    }
.end annotation


# instance fields
.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private final mActivity:Landroid/app/Activity;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mGatewayView:Landroid/widget/TextView;

.field private mHasIporProxy:Z

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mNetworkSetupSpinner:Landroid/widget/Spinner;

.field private final mOnSubmitStateChangeListener:Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;

.field private mPasswordView:Landroid/widget/TextView;

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mShowAdvance:Z

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZLcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;)V
    .locals 15
    .parameter "activity"
    .parameter "view"
    .parameter "accessPoint"
    .parameter "showAdvance"
    .parameter "onSubmitStateChangeListener"

    .prologue
    .line 114
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;-><init>(Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;)V

    .line 93
    sget-object v12, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 94
    sget-object v12, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 95
    new-instance v12, Landroid/net/LinkProperties;

    invoke-direct {v12}, Landroid/net/LinkProperties;-><init>()V

    iput-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 115
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mActivity:Landroid/app/Activity;

    .line 116
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mOnSubmitStateChangeListener:Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;

    .line 118
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    .line 119
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 120
    if-nez p3, :cond_1

    const/4 v12, 0x0

    :goto_0
    iput v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPointSecurity:I

    .line 122
    move/from16 v0, p4

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mShowAdvance:Z

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 126
    .local v9, resources:Landroid/content/res/Resources;
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v12, :cond_2

    .line 127
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v13, 0x7f0801a6

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 128
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v12, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v13, 0x7f0801a7

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    iput-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 130
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v12, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 131
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v13, 0x7f08017f

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 203
    :cond_0
    :goto_1
    return-void

    .line 120
    .end local v9           #resources:Landroid/content/res/Resources;
    :cond_1
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0

    .line 133
    .restart local v9       #resources:Landroid/content/res/Resources;
    :cond_2
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v13, 0x7f0801bf

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    iput-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 134
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v13, 0x7f0801b8

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    iput-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 136
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v13, 0x7f0801d0

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 137
    .local v3, accessPointTitle:Landroid/widget/TextView;
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v12, v12, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v13, 0x7f0801a5

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 141
    .local v5, group:Landroid/view/ViewGroup;
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    .line 142
    .local v11, state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v11, :cond_3

    .line 143
    const v12, 0x7f0b01d1

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v5, v12, v13}, Lcom/android/settings/wifi/MiuiWifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 146
    :cond_3
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v8

    .line 147
    .local v8, level:I
    const/4 v12, -0x1

    if-eq v8, v12, :cond_4

    .line 148
    const v12, 0x7f070019

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 149
    .local v10, signal:[Ljava/lang/String;
    const v12, 0x7f0b01d0

    aget-object v13, v10, v8

    invoke-direct {p0, v5, v12, v13}, Lcom/android/settings/wifi/MiuiWifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 152
    .end local v10           #signal:[Ljava/lang/String;
    :cond_4
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 153
    .local v7, info:Landroid/net/wifi/WifiInfo;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_5

    .line 154
    const v12, 0x7f0b01d2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Mbps"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v5, v12, v13}, Lcom/android/settings/wifi/MiuiWifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 157
    :cond_5
    const v12, 0x7f0b01cf

    iget-object v13, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v5, v12, v13}, Lcom/android/settings/wifi/MiuiWifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 159
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 160
    .local v4, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v4, :cond_9

    .line 161
    iget-object v12, v4, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v13, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v12, v13, :cond_6

    .line 162
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setSelection(I)V

    .line 163
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mHasIporProxy:Z

    .line 167
    :goto_2
    iget-object v12, v4, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v13, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v12, v13, :cond_7

    .line 168
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setSelection(I)V

    .line 169
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mHasIporProxy:Z

    .line 173
    :goto_3
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v12, v12, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_9

    .line 175
    iget-object v12, v4, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v12}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 176
    .local v2, a:Ljava/net/InetAddress;
    const v12, 0x7f0b01d3

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v5, v12, v13}, Lcom/android/settings/wifi/MiuiWifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_4

    .line 165
    .end local v2           #a:Ljava/net/InetAddress;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_6
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 171
    :cond_7
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 179
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_8
    iget v12, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    iget v12, v4, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    .line 181
    const v12, 0x7f0b01e3

    const v13, 0x7f0b01e4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v5, v12, v13}, Lcom/android/settings/wifi/MiuiWifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 188
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_9
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v12, v12, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    if-eqz v12, :cond_a

    .line 189
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->showNetworkSetupFields()V

    .line 192
    :cond_a
    iget-boolean v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mShowAdvance:Z

    if-eqz v12, :cond_0

    .line 193
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v13, 0x7f0801af

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v13, 0x7f0801dd

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 196
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->showProxyFields()V

    .line 197
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->showIpConfigFields()V

    .line 199
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v12, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 200
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v12, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_1
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "nameId"
    .parameter "value"

    .prologue
    .line 206
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04008d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, row:Landroid/view/View;
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 208
    const v1, 0x1020010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 210
    return-void
.end method

.method private enableSubmitIfAppropriate()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    .line 214
    const/4 v0, 0x0

    .line 217
    .local v0, enabled:Z
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 220
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->chosenNetworkSetupMethod()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPointSecurity:I

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPointSecurity:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 223
    :cond_1
    const/4 v0, 0x0

    .line 226
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mShowAdvance:Z

    if-eqz v1, :cond_3

    .line 227
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v0

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->chosenNetworkSetupMethod()I

    move-result v1

    if-eqz v1, :cond_3

    .line 229
    const/4 v0, 0x1

    .line 232
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mOnSubmitStateChangeListener:Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;

    if-eqz v1, :cond_4

    .line 233
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mOnSubmitStateChangeListener:Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;

    invoke-interface {v1, v0}, Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;->onSubmitStateChange(Z)V

    .line 235
    :cond_4
    return-void

    .line 217
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 331
    const/4 v7, 0x0

    .line 332
    .local v7, ret:Z
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v8}, Landroid/net/LinkProperties;->clear()V

    .line 333
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    if-ne v8, v10, :cond_0

    sget-object v8, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 337
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v9, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v8, v9, :cond_2

    .line 338
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v8}, Lcom/android/settings/wifi/MiuiWifiConfigController;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v6

    .line 339
    .local v6, result:I
    if-eqz v6, :cond_1

    .line 340
    const/4 v8, 0x0

    .line 373
    .end local v6           #result:I
    :goto_1
    return v8

    .line 333
    :cond_0
    sget-object v8, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    .line 342
    .restart local v6       #result:I
    :cond_1
    const/4 v7, 0x1

    .line 345
    .end local v6           #result:I
    :cond_2
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    if-ne v8, v10, :cond_5

    sget-object v8, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 349
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v9, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v8, v9, :cond_3

    .line 350
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, host:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, portStr:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, exclusionList:Ljava/lang/String;
    const/4 v3, 0x0

    .line 354
    .local v3, port:I
    const/4 v6, 0x0

    .line 356
    .restart local v6       #result:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 357
    invoke-static {v2, v4, v1}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 361
    :goto_3
    if-nez v6, :cond_6

    .line 362
    new-instance v5, Landroid/net/ProxyProperties;

    invoke-direct {v5, v2, v3, v1}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 363
    .local v5, proxyProperties:Landroid/net/ProxyProperties;
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v8, v5}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 364
    const/4 v7, 0x1

    .line 370
    .end local v1           #exclusionList:Ljava/lang/String;
    .end local v2           #host:Ljava/lang/String;
    .end local v3           #port:I
    .end local v4           #portStr:Ljava/lang/String;
    .end local v5           #proxyProperties:Landroid/net/ProxyProperties;
    .end local v6           #result:I
    :cond_3
    :goto_4
    iget-boolean v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mHasIporProxy:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v9, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v8, v9, :cond_4

    .line 371
    const/4 v7, 0x1

    :cond_4
    move v8, v7

    .line 373
    goto :goto_1

    .line 345
    :cond_5
    sget-object v8, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    .line 358
    .restart local v1       #exclusionList:Ljava/lang/String;
    .restart local v2       #host:Ljava/lang/String;
    .restart local v3       #port:I
    .restart local v4       #portStr:Ljava/lang/String;
    .restart local v6       #result:I
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Ljava/lang/NumberFormatException;
    const v6, 0x7f0b00aa

    goto :goto_3

    .line 366
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_6
    const/4 v7, 0x0

    goto :goto_4
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 8
    .parameter "spinner"
    .parameter "prefix"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 626
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0b01df

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 628
    .local v3, unspecified:Ljava/lang/String;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 629
    .local v2, certs:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-nez v4, :cond_1

    .line 630
    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    .end local v2           #certs:[Ljava/lang/String;
    aput-object v3, v2, v6

    .line 638
    .restart local v2       #certs:[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mActivity:Landroid/app/Activity;

    const v5, 0x1090008

    invoke-direct {v0, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 640
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 641
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 642
    return-void

    .line 632
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    .line 633
    .local v1, array:[Ljava/lang/String;
    aput-object v3, v1, v6

    .line 634
    array-length v4, v2

    invoke-static {v2, v6, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 635
    move-object v2, v1

    goto :goto_0
.end method

.method private setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "spinner"
    .parameter "prefix"
    .parameter "cert"

    .prologue
    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 646
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 649
    :cond_0
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 652
    if-eqz p2, :cond_0

    .line 654
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 655
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 656
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 657
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 662
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 655
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private showIpConfigFields()V
    .locals 11

    .prologue
    const v10, 0x7f0801c0

    const/4 v9, 0x0

    .line 535
    const/4 v0, 0x0

    .line 537
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0801be

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 539
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v7, :cond_0

    .line 540
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 542
    :cond_0
    if-nez v0, :cond_1

    .line 543
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 546
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 547
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 548
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0801c1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 549
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0801c2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 550
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0801c3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 552
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0801c4

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 553
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0801c5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 555
    if-eqz v0, :cond_7

    .line 556
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 557
    .local v5, linkProperties:Landroid/net/LinkProperties;
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 558
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 559
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 560
    .local v4, linkAddress:Landroid/net/LinkAddress;
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    .end local v4           #linkAddress:Landroid/net/LinkAddress;
    :cond_2
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .line 566
    .local v6, route:Landroid/net/RouteInfo;
    invoke-virtual {v6}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 567
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    .end local v6           #route:Landroid/net/RouteInfo;
    :cond_4
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 573
    .local v1, dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 574
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 577
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    :cond_6
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 581
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 582
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 583
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 584
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 589
    .end local v1           #dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v5           #linkProperties:Landroid/net/LinkProperties;
    :cond_7
    :goto_0
    return-void

    .line 587
    :cond_8
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showNetworkSetupFields()V
    .locals 6

    .prologue
    const v5, 0x7f0801ad

    const/4 v4, 0x0

    .line 514
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0801ab

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 516
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_0

    .line 517
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0801ac

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    .line 518
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 521
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 524
    .local v0, pos:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 525
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 526
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0801ae

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 527
    .local v1, wpsPin:Landroid/widget/EditText;
    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 532
    .end local v1           #wpsPin:Landroid/widget/EditText;
    :goto_0
    return-void

    .line 529
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showProxyFields()V
    .locals 8

    .prologue
    const v7, 0x7f0801ba

    const v6, 0x7f0801b9

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 592
    const/4 v0, 0x0

    .line 594
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0801b7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 596
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    .line 597
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 600
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 601
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 602
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 603
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0801bb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 604
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0801bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 605
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0801bd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 607
    if-eqz v0, :cond_1

    .line 608
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    .line 609
    .local v1, proxyProperties:Landroid/net/ProxyProperties;
    if-eqz v1, :cond_1

    .line 610
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    .end local v1           #proxyProperties:Landroid/net/ProxyProperties;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 617
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 618
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 623
    :goto_0
    return-void

    .line 620
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 621
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private validateIpConfigFields(Landroid/net/LinkProperties;)I
    .locals 10
    .parameter "linkProperties"

    .prologue
    const v8, 0x7f0b0208

    .line 377
    iget-object v9, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 378
    .local v6, ipAddr:Ljava/lang/String;
    const/4 v5, 0x0

    .line 380
    .local v5, inetAddr:Ljava/net/InetAddress;
    :try_start_0
    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 385
    const/4 v7, -0x1

    .line 387
    .local v7, networkPrefixLength:I
    :try_start_1
    iget-object v9, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v7

    .line 391
    :goto_0
    if-ltz v7, :cond_0

    const/16 v9, 0x20

    if-le v7, v9, :cond_1

    .line 392
    :cond_0
    const v8, 0x7f0b0209

    .line 422
    .end local v7           #networkPrefixLength:I
    :goto_1
    return v8

    .line 381
    :catch_0
    move-exception v2

    .line 382
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const v8, 0x7f0b0206

    goto :goto_1

    .line 394
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v7       #networkPrefixLength:I
    :cond_1
    new-instance v9, Landroid/net/LinkAddress;

    invoke-direct {v9, v5, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v9}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    .line 396
    iget-object v9, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, gateway:Ljava/lang/String;
    const/4 v4, 0x0

    .line 399
    .local v4, gatewayAddr:Ljava/net/InetAddress;
    :try_start_2
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .line 403
    new-instance v9, Landroid/net/RouteInfo;

    invoke-direct {v9, v4}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v9}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 405
    iget-object v9, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, dns:Ljava/lang/String;
    const/4 v1, 0x0

    .line 408
    .local v1, dnsAddr:Ljava/net/InetAddress;
    :try_start_3
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 412
    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 413
    iget-object v9, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 414
    iget-object v9, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    :try_start_4
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v1

    .line 420
    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 422
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 400
    .end local v0           #dns:Ljava/lang/String;
    .end local v1           #dnsAddr:Ljava/net/InetAddress;
    :catch_1
    move-exception v2

    .line 401
    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    const v8, 0x7f0b0207

    goto :goto_1

    .line 409
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #dns:Ljava/lang/String;
    .restart local v1       #dnsAddr:Ljava/net/InetAddress;
    :catch_2
    move-exception v2

    .line 410
    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 417
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 418
    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 388
    .end local v0           #dns:Ljava/lang/String;
    .end local v1           #dnsAddr:Ljava/net/InetAddress;
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v3           #gateway:Ljava/lang/String;
    .end local v4           #gatewayAddr:Ljava/net/InetAddress;
    :catch_4
    move-exception v9

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 666
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->enableSubmitIfAppropriate()V

    .line 667
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 672
    return-void
.end method

.method chosenNetworkSetupMethod()I
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 429
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 9

    .prologue
    const v8, 0x7f09000e

    const/4 v7, 0x1

    const/16 v6, 0x22

    const/4 v5, 0x0

    .line 239
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 246
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v3, :cond_1

    .line 247
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 250
    iput-boolean v7, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 258
    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mShowAdvance:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 259
    iget v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPointSecurity:I

    packed-switch v3, :pswitch_data_0

    .line 319
    invoke-super {p0}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 327
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :goto_2
    return-object v0

    .line 243
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .line 251
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 252
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 255
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 261
    :pswitch_0
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 323
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 324
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 325
    new-instance v3, Landroid/net/LinkProperties;

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v3, v4}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_2

    .line 265
    :pswitch_1
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 266
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 267
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->set(I)V

    .line 268
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 269
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v1

    .line 270
    .local v1, length:I
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, password:Ljava/lang/String;
    const/16 v3, 0xa

    if-eq v1, v3, :cond_4

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_4

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_5

    :cond_4
    const-string v3, "[0-9A-Fa-f]*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 274
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v3, v5

    goto :goto_3

    .line 276
    :cond_5
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    goto :goto_3

    .line 282
    .end local v1           #length:I
    .end local v2           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->set(I)V

    .line 283
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 284
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 285
    .restart local v2       #password:Ljava/lang/String;
    const-string v3, "[0-9A-Fa-f]{64}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 286
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_3

    .line 288
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_3

    .line 294
    .end local v2           #password:Ljava/lang/String;
    :pswitch_3
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 295
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 296
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 298
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_7

    const-string v3, ""

    :goto_4
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 300
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_8

    const-string v3, ""

    :goto_5
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 303
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_9

    const-string v3, ""

    :goto_6
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 306
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_a

    const-string v3, ""

    :goto_7
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 309
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-nez v3, :cond_b

    const-string v3, ""

    :goto_8
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 311
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-nez v3, :cond_c

    const-string v3, ""

    :goto_9
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 313
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 314
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 298
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auth="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 300
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://CACERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 303
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://USRCERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    .line 306
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://USRPKEY_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    .line 309
    :cond_b
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_8

    .line 311
    :cond_c
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_9

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method getWpsConfig()Landroid/net/wifi/WpsInfo;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 433
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_0

    move-object v0, v2

    .line 458
    :goto_0
    return-object v0

    .line 436
    :cond_0
    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 437
    .local v0, config:Landroid/net/wifi/WpsInfo;
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 448
    const/4 v1, 0x4

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 449
    const-string v1, "WifiConfigController"

    const-string v2, "WPS not selected type"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 439
    :pswitch_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 452
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0801ae

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 453
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    :goto_2
    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    .line 455
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 456
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 457
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    .line 442
    :pswitch_1
    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 445
    :pswitch_2
    const/4 v1, 0x1

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 453
    goto :goto_2

    .line 437
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0801dd

    .line 681
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0801a9

    if-ne v0, v1, :cond_2

    .line 682
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 693
    :cond_0
    :goto_1
    return-void

    .line 682
    :cond_1
    const/16 v0, 0x80

    goto :goto_0

    .line 686
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0801dc

    if-ne v0, v1, :cond_0

    .line 687
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 688
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 690
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 697
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 698
    iput p3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPointSecurity:I

    .line 699
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->showSecurityFields()V

    .line 707
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->enableSubmitIfAppropriate()V

    .line 708
    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 701
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->showNetworkSetupFields()V

    goto :goto_0

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 703
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->showProxyFields()V

    goto :goto_0

    .line 705
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->showIpConfigFields()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 713
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 677
    return-void
.end method

.method protected showSecurityFields()V
    .locals 7

    .prologue
    const v2, 0x7f0801af

    const/16 v6, 0x8

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 462
    iget v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPointSecurity:I

    if-nez v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-nez v1, :cond_2

    .line 469
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080193

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 470
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 471
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v3, :cond_2

    .line 474
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const v2, 0x7f0b01de

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 478
    :cond_2
    iget v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPointSecurity:I

    if-le v1, v5, :cond_3

    .line 479
    invoke-super {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 482
    :cond_3
    iget v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPointSecurity:I

    if-eq v1, v5, :cond_4

    .line 483
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 486
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 488
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801b1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 490
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801b2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 491
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 492
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 493
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801b5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 494
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801b6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 496
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/MiuiWifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/MiuiWifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 499
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v3, :cond_0

    .line 500
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 501
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/MiuiWifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 502
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/MiuiWifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/MiuiWifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/MiuiWifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
