.class Lcom/android/phone/MiuiNetworkSetting$NetworkPreferenceCategory;
.super Lmiui/preference/RadioButtonPreferenceCategory;
.source "MiuiNetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiNetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkPreferenceCategory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiNetworkSetting;


# direct methods
.method public constructor <init>(Lcom/android/phone/MiuiNetworkSetting;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/phone/MiuiNetworkSetting$NetworkPreferenceCategory;->this$0:Lcom/android/phone/MiuiNetworkSetting;

    .line 368
    invoke-direct {p0, p2, p3}, Lmiui/preference/RadioButtonPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 369
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/android/phone/MiuiNetworkSetting$NetworkPreferenceCategory;->getPreferenceCount()I

    move-result v2

    .line 374
    .local v2, preferenceCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 378
    if-eqz p1, :cond_0

    .line 379
    iget-object v3, p0, Lcom/android/phone/MiuiNetworkSetting$NetworkPreferenceCategory;->this$0:Lcom/android/phone/MiuiNetworkSetting;

    iget-object v3, v3, Lcom/android/phone/MiuiNetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiNetworkSetting$NetworkPreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/OperatorInfo;

    .line 380
    .local v1, operatorInfo:Lcom/android/internal/telephony/OperatorInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v3, v4, :cond_0

    .line 382
    const/4 p1, 0x0

    .line 385
    .end local v1           #operatorInfo:Lcom/android/internal/telephony/OperatorInfo;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiNetworkSetting$NetworkPreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_1
    return-void
.end method
