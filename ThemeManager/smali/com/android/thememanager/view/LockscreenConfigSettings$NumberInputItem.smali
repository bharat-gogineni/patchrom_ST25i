.class Lcom/android/thememanager/view/LockscreenConfigSettings$NumberInputItem;
.super Lcom/android/thememanager/view/LockscreenConfigSettings$VariableItem;
.source "LockscreenConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/view/LockscreenConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberInputItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;


# direct methods
.method private constructor <init>(Lcom/android/thememanager/view/LockscreenConfigSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$NumberInputItem;->this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/thememanager/view/LockscreenConfigSettings$VariableItem;-><init>(Lcom/android/thememanager/view/LockscreenConfigSettings;Lcom/android/thememanager/view/LockscreenConfigSettings$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/thememanager/view/LockscreenConfigSettings;Lcom/android/thememanager/view/LockscreenConfigSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/android/thememanager/view/LockscreenConfigSettings$NumberInputItem;-><init>(Lcom/android/thememanager/view/LockscreenConfigSettings;)V

    return-void
.end method

.method private getValueString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 427
    const-wide/16 v0, 0x0

    .line 429
    .local v0, d:D
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 433
    :goto_0
    invoke-static {v0, v1}, Lmiui/app/screenelement/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 430
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .locals 6
    .parameter "objValue"

    .prologue
    .line 438
    const-wide/16 v0, 0x0

    .line 440
    .local v0, d:D
    :try_start_0
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 445
    invoke-static {v0, v1}, Lmiui/app/screenelement/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, value:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$NumberInputItem;->this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;

    #getter for: Lcom/android/thememanager/view/LockscreenConfigSettings;->mSavedConfig:Lmiui/app/screenelement/util/LockscreenConfigFile;
    invoke-static {v4}, Lcom/android/thememanager/view/LockscreenConfigSettings;->access$1000(Lcom/android/thememanager/view/LockscreenConfigSettings;)Lmiui/app/screenelement/util/LockscreenConfigFile;

    move-result-object v4

    iget-object v5, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$NumberInputItem;->mId:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lmiui/app/screenelement/util/LockscreenConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0, v3}, Lcom/android/thememanager/view/LockscreenConfigSettings$NumberInputItem;->setValuePreview(Ljava/lang/String;)V

    .line 450
    const/4 v4, 0x1

    .end local v3           #value:Ljava/lang/String;
    :goto_0
    return v4

    .line 441
    :catch_0
    move-exception v2

    .line 442
    .local v2, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected createPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 1
    .parameter "c"

    .prologue
    .line 416
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 421
    invoke-direct {p0, p1}, Lcom/android/thememanager/view/LockscreenConfigSettings$NumberInputItem;->getValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 422
    iget-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$NumberInputItem;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0, p1}, Lcom/android/thememanager/view/LockscreenConfigSettings$NumberInputItem;->setValuePreview(Ljava/lang/String;)V

    .line 424
    return-void
.end method
