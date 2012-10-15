.class Lcom/android/thememanager/view/LockscreenConfigSettings$StringInputItem;
.super Lcom/android/thememanager/view/LockscreenConfigSettings$VariableItem;
.source "LockscreenConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/view/LockscreenConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StringInputItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;


# direct methods
.method private constructor <init>(Lcom/android/thememanager/view/LockscreenConfigSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$StringInputItem;->this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/thememanager/view/LockscreenConfigSettings$VariableItem;-><init>(Lcom/android/thememanager/view/LockscreenConfigSettings;Lcom/android/thememanager/view/LockscreenConfigSettings$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/thememanager/view/LockscreenConfigSettings;Lcom/android/thememanager/view/LockscreenConfigSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/android/thememanager/view/LockscreenConfigSettings$StringInputItem;-><init>(Lcom/android/thememanager/view/LockscreenConfigSettings;)V

    return-void
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .locals 3
    .parameter "objValue"

    .prologue
    .line 338
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 339
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$StringInputItem;->this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;

    #getter for: Lcom/android/thememanager/view/LockscreenConfigSettings;->mSavedConfig:Lmiui/app/screenelement/util/LockscreenConfigFile;
    invoke-static {v1}, Lcom/android/thememanager/view/LockscreenConfigSettings;->access$1000(Lcom/android/thememanager/view/LockscreenConfigSettings;)Lmiui/app/screenelement/util/LockscreenConfigFile;

    move-result-object v1

    iget-object v2, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$StringInputItem;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lmiui/app/screenelement/util/LockscreenConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0, v0}, Lcom/android/thememanager/view/LockscreenConfigSettings$StringInputItem;->setValuePreview(Ljava/lang/String;)V

    .line 341
    const/4 v1, 0x1

    return v1
.end method

.method protected createPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 1
    .parameter "c"

    .prologue
    .line 327
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$StringInputItem;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0, p1}, Lcom/android/thememanager/view/LockscreenConfigSettings$StringInputItem;->setValuePreview(Ljava/lang/String;)V

    .line 334
    return-void
.end method
