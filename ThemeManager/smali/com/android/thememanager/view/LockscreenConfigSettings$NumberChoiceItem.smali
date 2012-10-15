.class Lcom/android/thememanager/view/LockscreenConfigSettings$NumberChoiceItem;
.super Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;
.source "LockscreenConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/view/LockscreenConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberChoiceItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;


# direct methods
.method private constructor <init>(Lcom/android/thememanager/view/LockscreenConfigSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$NumberChoiceItem;->this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;-><init>(Lcom/android/thememanager/view/LockscreenConfigSettings;Lcom/android/thememanager/view/LockscreenConfigSettings$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/thememanager/view/LockscreenConfigSettings;Lcom/android/thememanager/view/LockscreenConfigSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/android/thememanager/view/LockscreenConfigSettings$NumberChoiceItem;-><init>(Lcom/android/thememanager/view/LockscreenConfigSettings;)V

    return-void
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .locals 2
    .parameter "objValue"

    .prologue
    .line 406
    invoke-super {p0, p1}, Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;->OnValueChange(Ljava/lang/Object;)Z

    .line 407
    iget-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$NumberChoiceItem;->this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;

    #getter for: Lcom/android/thememanager/view/LockscreenConfigSettings;->mSavedConfig:Lmiui/app/screenelement/util/LockscreenConfigFile;
    invoke-static {v0}, Lcom/android/thememanager/view/LockscreenConfigSettings;->access$1000(Lcom/android/thememanager/view/LockscreenConfigSettings;)Lmiui/app/screenelement/util/LockscreenConfigFile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$NumberChoiceItem;->mId:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {v0, v1, p1}, Lmiui/app/screenelement/util/LockscreenConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const/4 v0, 0x1

    return v0
.end method
