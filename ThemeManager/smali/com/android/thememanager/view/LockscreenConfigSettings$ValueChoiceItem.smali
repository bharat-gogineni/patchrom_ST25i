.class abstract Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;
.super Lcom/android/thememanager/view/LockscreenConfigSettings$VariableItem;
.source "LockscreenConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/view/LockscreenConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ValueChoiceItem"
.end annotation


# instance fields
.field protected mItemsText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mItemsValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;


# direct methods
.method private constructor <init>(Lcom/android/thememanager/view/LockscreenConfigSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;->this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/thememanager/view/LockscreenConfigSettings$VariableItem;-><init>(Lcom/android/thememanager/view/LockscreenConfigSettings;Lcom/android/thememanager/view/LockscreenConfigSettings$1;)V

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;->mItemsText:Ljava/util/ArrayList;

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;->mItemsValue:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/thememanager/view/LockscreenConfigSettings;Lcom/android/thememanager/view/LockscreenConfigSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;-><init>(Lcom/android/thememanager/view/LockscreenConfigSettings;)V

    return-void
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .locals 3
    .parameter "objValue"

    .prologue
    .line 383
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 384
    .local v1, value:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    .line 385
    .local v0, pre:Landroid/preference/ListPreference;
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0, v1}, Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;->setValuePreview(Ljava/lang/String;)V

    .line 387
    const/4 v2, 0x1

    return v2
.end method

.method protected createPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 1
    .parameter "c"

    .prologue
    .line 352
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onBuild(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "ele"

    .prologue
    .line 357
    iget-object v1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;->mItemsText:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 358
    iget-object v1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;->mItemsValue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 359
    const-string v1, "Item"

    new-instance v2, Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem$1;

    invoke-direct {v2, p0}, Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem$1;-><init>(Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;)V

    invoke-static {p1, v1, v2}, Lcom/android/thememanager/view/LockscreenConfigSettings$XmlUtils;->traverseElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/android/thememanager/view/LockscreenConfigSettings$XmlUtils$TraverseListener;)V

    .line 366
    iget-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    .line 367
    .local v0, pre:Landroid/preference/ListPreference;
    iget-object v1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;->mItemsText:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;->mItemsText:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 368
    iget-object v1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;->mItemsValue:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;->mItemsValue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 369
    return-void
.end method

.method protected setValue(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 373
    iget-object v1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;->mPreference:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/ListPreference;

    .line 374
    .local v1, pre:Landroid/preference/ListPreference;
    invoke-virtual {v1, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 375
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 376
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 377
    invoke-virtual {p0, p1}, Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;->setValuePreview(Ljava/lang/String;)V

    .line 379
    :cond_0
    return-void
.end method
