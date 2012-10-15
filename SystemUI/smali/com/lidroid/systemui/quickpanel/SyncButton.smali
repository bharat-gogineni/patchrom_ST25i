.class public Lcom/lidroid/systemui/quickpanel/SyncButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "SyncButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncButton"


# instance fields
.field private mSyncObserver:Landroid/content/SyncStatusObserver;

.field private mSyncObserverHandle:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    new-instance v0, Lcom/lidroid/systemui/quickpanel/SyncButton$1;

    invoke-direct {v0, p0}, Lcom/lidroid/systemui/quickpanel/SyncButton$1;-><init>(Lcom/lidroid/systemui/quickpanel/SyncButton;)V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mSyncObserver:Landroid/content/SyncStatusObserver;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    const-string v0, "toggleSync"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getBackgroundDataState(Landroid/content/Context;)Z
    .locals 2

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    return v1
.end method

.method private static getSyncState(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/SyncButton;->getBackgroundDataState(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getText()I
    .locals 1

    const v0, 0x7f080086

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method protected setupButton(Landroid/view/View;)V
    .locals 2

    const-string v1, "SyncButton"

    invoke-super {p0, p1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->setupButton(Landroid/view/View;)V

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const-string v0, "SyncButton"

    const-string v0, "Unregistering sync state listener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "SyncButton"

    const-string v0, "Registering sync state listener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mSyncObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected toggleState()V
    .locals 6

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-static {v2}, Lcom/lidroid/systemui/quickpanel/SyncButton;->getBackgroundDataState(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    if-nez v0, :cond_0

    if-nez v3, :cond_0

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    invoke-static {v5}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    :cond_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    invoke-static {v5}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    :cond_3
    return-void
.end method

.method protected updateState()V
    .locals 1

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/SyncButton;->getSyncState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f02010a

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mIcon:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mState:I

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f020109

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mIcon:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton;->mState:I

    goto :goto_0
.end method
