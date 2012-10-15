.class Lcom/android/phone/sip/MiuiSipSettings$2;
.super Ljava/lang/Object;
.source "MiuiSipSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/sip/MiuiSipSettings;->retrieveSipLists()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/sip/MiuiSipSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/MiuiSipSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/phone/sip/MiuiSipSettings$2;->this$0:Lcom/android/phone/sip/MiuiSipSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings$2;->this$0:Lcom/android/phone/sip/MiuiSipSettings;

    iget-object v0, v0, Lcom/android/phone/sip/MiuiSipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings$2;->this$0:Lcom/android/phone/sip/MiuiSipSettings;

    #getter for: Lcom/android/phone/sip/MiuiSipSettings;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/phone/sip/MiuiSipSettings;->access$100(Lcom/android/phone/sip/MiuiSipSettings;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings$2;->this$0:Lcom/android/phone/sip/MiuiSipSettings;

    #getter for: Lcom/android/phone/sip/MiuiSipSettings;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/phone/sip/MiuiSipSettings;->access$100(Lcom/android/phone/sip/MiuiSipSettings;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/sip/MiuiSipSettings$2;->this$0:Lcom/android/phone/sip/MiuiSipSettings;

    #getter for: Lcom/android/phone/sip/MiuiSipSettings;->mfooter:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/sip/MiuiSipSettings;->access$200(Lcom/android/phone/sip/MiuiSipSettings;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 116
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings$2;->this$0:Lcom/android/phone/sip/MiuiSipSettings;

    #getter for: Lcom/android/phone/sip/MiuiSipSettings;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/phone/sip/MiuiSipSettings;->access$100(Lcom/android/phone/sip/MiuiSipSettings;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings$2;->this$0:Lcom/android/phone/sip/MiuiSipSettings;

    iget-object v0, v0, Lcom/android/phone/sip/MiuiSipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings$2;->this$0:Lcom/android/phone/sip/MiuiSipSettings;

    #getter for: Lcom/android/phone/sip/MiuiSipSettings;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/phone/sip/MiuiSipSettings;->access$100(Lcom/android/phone/sip/MiuiSipSettings;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings$2;->this$0:Lcom/android/phone/sip/MiuiSipSettings;

    #getter for: Lcom/android/phone/sip/MiuiSipSettings;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/phone/sip/MiuiSipSettings;->access$100(Lcom/android/phone/sip/MiuiSipSettings;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/sip/MiuiSipSettings$2;->this$0:Lcom/android/phone/sip/MiuiSipSettings;

    #getter for: Lcom/android/phone/sip/MiuiSipSettings;->mfooter:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/sip/MiuiSipSettings;->access$200(Lcom/android/phone/sip/MiuiSipSettings;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 119
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings$2;->this$0:Lcom/android/phone/sip/MiuiSipSettings;

    #getter for: Lcom/android/phone/sip/MiuiSipSettings;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/phone/sip/MiuiSipSettings;->access$100(Lcom/android/phone/sip/MiuiSipSettings;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    goto :goto_0
.end method
