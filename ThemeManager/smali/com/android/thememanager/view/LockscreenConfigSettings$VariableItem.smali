.class abstract Lcom/android/thememanager/view/LockscreenConfigSettings$VariableItem;
.super Lcom/android/thememanager/view/LockscreenConfigSettings$Item;
.source "LockscreenConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/view/LockscreenConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "VariableItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;


# direct methods
.method private constructor <init>(Lcom/android/thememanager/view/LockscreenConfigSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$VariableItem;->this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/thememanager/view/LockscreenConfigSettings$Item;-><init>(Lcom/android/thememanager/view/LockscreenConfigSettings;Lcom/android/thememanager/view/LockscreenConfigSettings$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/thememanager/view/LockscreenConfigSettings;Lcom/android/thememanager/view/LockscreenConfigSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/android/thememanager/view/LockscreenConfigSettings$VariableItem;-><init>(Lcom/android/thememanager/view/LockscreenConfigSettings;)V

    return-void
.end method


# virtual methods
.method protected abstract setValue(Ljava/lang/String;)V
.end method

.method public updateValue()V
    .locals 3

    .prologue
    .line 285
    iget-object v1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$VariableItem;->this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;

    #getter for: Lcom/android/thememanager/view/LockscreenConfigSettings;->mSavedConfig:Lmiui/app/screenelement/util/LockscreenConfigFile;
    invoke-static {v1}, Lcom/android/thememanager/view/LockscreenConfigSettings;->access$1000(Lcom/android/thememanager/view/LockscreenConfigSettings;)Lmiui/app/screenelement/util/LockscreenConfigFile;

    move-result-object v1

    iget-object v2, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$VariableItem;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/util/LockscreenConfigFile;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0, v0}, Lcom/android/thememanager/view/LockscreenConfigSettings$VariableItem;->setValue(Ljava/lang/String;)V

    .line 294
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$VariableItem;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/thememanager/view/LockscreenConfigSettings$VariableItem;->setValue(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$VariableItem;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/thememanager/view/LockscreenConfigSettings$VariableItem;->OnValueChange(Ljava/lang/Object;)Z

    goto :goto_0
.end method
