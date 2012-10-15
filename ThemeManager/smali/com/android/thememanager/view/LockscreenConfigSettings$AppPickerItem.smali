.class Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;
.super Lcom/android/thememanager/view/LockscreenConfigSettings$Item;
.source "LockscreenConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/view/LockscreenConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppPickerItem"
.end annotation


# instance fields
.field private mRequestCode:I

.field final synthetic this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;


# direct methods
.method private constructor <init>(Lcom/android/thememanager/view/LockscreenConfigSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;->this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/thememanager/view/LockscreenConfigSettings$Item;-><init>(Lcom/android/thememanager/view/LockscreenConfigSettings;Lcom/android/thememanager/view/LockscreenConfigSettings$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/thememanager/view/LockscreenConfigSettings;Lcom/android/thememanager/view/LockscreenConfigSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;-><init>(Lcom/android/thememanager/view/LockscreenConfigSettings;)V

    return-void
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .locals 2
    .parameter "objValue"

    .prologue
    .line 476
    move-object v0, p1

    check-cast v0, Lmiui/app/screenelement/util/Task;

    .line 477
    .local v0, task:Lmiui/app/screenelement/util/Task;
    iget-object v1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;->this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;

    #getter for: Lcom/android/thememanager/view/LockscreenConfigSettings;->mSavedConfig:Lmiui/app/screenelement/util/LockscreenConfigFile;
    invoke-static {v1}, Lcom/android/thememanager/view/LockscreenConfigSettings;->access$1000(Lcom/android/thememanager/view/LockscreenConfigSettings;)Lmiui/app/screenelement/util/LockscreenConfigFile;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/app/screenelement/util/LockscreenConfigFile;->putTask(Lmiui/app/screenelement/util/Task;)V

    .line 478
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/app/screenelement/util/Task;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lmiui/app/screenelement/util/Task;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;->setValuePreview(Ljava/lang/String;)V

    .line 479
    const/4 v1, 0x1

    return v1

    .line 478
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method protected createPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 1
    .parameter "c"

    .prologue
    .line 459
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onActivityResult(ILandroid/content/Intent;)Z
    .locals 4
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 489
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 490
    const/4 v1, 0x0

    .line 508
    :goto_0
    return v1

    .line 492
    :cond_0
    new-instance v0, Lmiui/app/screenelement/util/Task;

    invoke-direct {v0}, Lmiui/app/screenelement/util/Task;-><init>()V

    .line 493
    .local v0, task:Lmiui/app/screenelement/util/Task;
    iget-object v1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;->mId:Ljava/lang/String;

    iput-object v1, v0, Lmiui/app/screenelement/util/Task;->id:Ljava/lang/String;

    .line 494
    if-eqz p2, :cond_1

    .line 495
    const-string v1, "name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/app/screenelement/util/Task;->name:Ljava/lang/String;

    .line 496
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/app/screenelement/util/Task;->packageName:Ljava/lang/String;

    .line 497
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/app/screenelement/util/Task;->className:Ljava/lang/String;

    .line 498
    const-string v1, "android.intent.action.MAIN"

    iput-object v1, v0, Lmiui/app/screenelement/util/Task;->action:Ljava/lang/String;

    .line 499
    const-string v1, "AppPickerItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selected component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lmiui/app/screenelement/util/Task;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lmiui/app/screenelement/util/Task;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;->OnValueChange(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 503
    :cond_1
    iput-object v2, v0, Lmiui/app/screenelement/util/Task;->name:Ljava/lang/String;

    .line 504
    iput-object v2, v0, Lmiui/app/screenelement/util/Task;->packageName:Ljava/lang/String;

    .line 505
    iput-object v2, v0, Lmiui/app/screenelement/util/Task;->className:Ljava/lang/String;

    .line 506
    iput-object v2, v0, Lmiui/app/screenelement/util/Task;->action:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onBuild(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "ele"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;->mPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;->this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 464
    iget-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;->this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;

    #calls: Lcom/android/thememanager/view/LockscreenConfigSettings;->getNextRequestCode()I
    invoke-static {v0}, Lcom/android/thememanager/view/LockscreenConfigSettings;->access$1300(Lcom/android/thememanager/view/LockscreenConfigSettings;)I

    move-result v0

    iput v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;->mRequestCode:I

    .line 465
    iget-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;->this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;

    iget v1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;->mRequestCode:I

    #calls: Lcom/android/thememanager/view/LockscreenConfigSettings;->putRequestCodeObj(ILjava/lang/Object;)V
    invoke-static {v0, v1, p0}, Lcom/android/thememanager/view/LockscreenConfigSettings;->access$1400(Lcom/android/thememanager/view/LockscreenConfigSettings;ILjava/lang/Object;)V

    .line 466
    return-void
.end method

.method public onClick()Z
    .locals 3

    .prologue
    .line 469
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;->this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;

    const-class v2, Lcom/android/thememanager/view/ThirdAppPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 470
    iget-object v1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;->this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;

    iget v2, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;->mRequestCode:I

    invoke-virtual {v1, v0, v2}, Lcom/android/thememanager/view/LockscreenConfigSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 471
    const/4 v0, 0x1

    return v0
.end method

.method public updateValue()V
    .locals 3

    .prologue
    .line 484
    iget-object v1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;->this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;

    #getter for: Lcom/android/thememanager/view/LockscreenConfigSettings;->mSavedConfig:Lmiui/app/screenelement/util/LockscreenConfigFile;
    invoke-static {v1}, Lcom/android/thememanager/view/LockscreenConfigSettings;->access$1000(Lcom/android/thememanager/view/LockscreenConfigSettings;)Lmiui/app/screenelement/util/LockscreenConfigFile;

    move-result-object v1

    iget-object v2, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/util/LockscreenConfigFile;->getTask(Ljava/lang/String;)Lmiui/app/screenelement/util/Task;

    move-result-object v0

    .line 485
    .local v0, task:Lmiui/app/screenelement/util/Task;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/app/screenelement/util/Task;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/thememanager/view/LockscreenConfigSettings$AppPickerItem;->setValuePreview(Ljava/lang/String;)V

    .line 486
    return-void

    .line 485
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
