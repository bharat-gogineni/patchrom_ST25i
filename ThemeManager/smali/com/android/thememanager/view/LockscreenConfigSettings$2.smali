.class Lcom/android/thememanager/view/LockscreenConfigSettings$2;
.super Ljava/lang/Object;
.source "LockscreenConfigSettings.java"

# interfaces
.implements Lcom/android/thememanager/view/LockscreenConfigSettings$XmlUtils$TraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/view/LockscreenConfigSettings;->createGroup(Landroid/preference/PreferenceScreen;Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;

.field final synthetic val$category:Landroid/preference/PreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/thememanager/view/LockscreenConfigSettings;Landroid/preference/PreferenceCategory;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$2;->this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;

    iput-object p2, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$2;->val$category:Landroid/preference/PreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$2;->this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/thememanager/view/LockscreenConfigSettings;->createItem(Ljava/lang/String;)Lcom/android/thememanager/view/LockscreenConfigSettings$Item;
    invoke-static {v1, v2}, Lcom/android/thememanager/view/LockscreenConfigSettings;->access$100(Lcom/android/thememanager/view/LockscreenConfigSettings;Ljava/lang/String;)Lcom/android/thememanager/view/LockscreenConfigSettings$Item;

    move-result-object v0

    .line 203
    .local v0, item:Lcom/android/thememanager/view/LockscreenConfigSettings$Item;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$2;->val$category:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1, p1}, Lcom/android/thememanager/view/LockscreenConfigSettings$Item;->build(Landroid/preference/PreferenceCategory;Lorg/w3c/dom/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$2;->this$0:Lcom/android/thememanager/view/LockscreenConfigSettings;

    #getter for: Lcom/android/thememanager/view/LockscreenConfigSettings;->mPreferenceMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/thememanager/view/LockscreenConfigSettings;->access$200(Lcom/android/thememanager/view/LockscreenConfigSettings;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v0, Lcom/android/thememanager/view/LockscreenConfigSettings$Item;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_0
    return-void
.end method
