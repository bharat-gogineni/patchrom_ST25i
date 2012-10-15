.class public abstract Lcom/lidroid/systemui/quickpanel/PowerButton;
.super Ljava/lang/Object;
.source "PowerButton.java"


# static fields
.field private static final BUTTONS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lidroid/systemui/quickpanel/PowerButton;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final BUTTONS_LOADED:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lidroid/systemui/quickpanel/PowerButton;",
            ">;"
        }
    .end annotation
.end field

.field public static final BUTTON_AIRPLANE:Ljava/lang/String; = "toggleAirplane"

.field public static final BUTTON_AUTOROTATE:Ljava/lang/String; = "toggleAutoRotate"

.field public static final BUTTON_BLUETOOTH:Ljava/lang/String; = "toggleBluetooth"

.field public static final BUTTON_BRIGHTNESS:Ljava/lang/String; = "toggleBrightness"

.field public static final BUTTON_FLASHLIGHT:Ljava/lang/String; = "toggleFlashlight"

.field public static final BUTTON_GPS:Ljava/lang/String; = "toggleGPS"

.field public static final BUTTON_LOCKSCREEN:Ljava/lang/String; = "toggleLockScreen"

.field public static final BUTTON_MOBILEDATA:Ljava/lang/String; = "toggleMobileData"

.field public static final BUTTON_NETWORKMODE:Ljava/lang/String; = "toggleNetworkMode"

.field public static final BUTTON_REBOOT:Ljava/lang/String; = "toggleReboot"

.field public static final BUTTON_SCREENTIMEOUT:Ljava/lang/String; = "toggleScreenTimeout"

.field public static final BUTTON_SHUTDOWN:Ljava/lang/String; = "toggleShutdown"

.field public static final BUTTON_SOUND:Ljava/lang/String; = "toggleSound"

.field public static final BUTTON_SYNC:Ljava/lang/String; = "toggleSync"

.field public static final BUTTON_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final BUTTON_WIFI:Ljava/lang/String; = "toggleWifi"

.field private static GLOBAL_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener; = null

.field private static GLOBAL_ON_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener; = null

.field private static final MASK_MODE:Landroid/graphics/PorterDuff$Mode; = null

.field public static final STATE_DISABLED:I = 0x2

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_INTERMEDIATE:I = 0x5

.field public static final STATE_TURNING_OFF:I = 0x4

.field public static final STATE_TURNING_ON:I = 0x3

.field public static final STATE_UNKNOWN:I = 0x6

.field public static final TAG:Ljava/lang/String; = "PowerButton"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field protected mIcon:I

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mState:I

.field protected mStatusIcon:I

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field protected mType:Ljava/lang/String;

.field protected mView:Landroid/view/View;

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->MASK_MODE:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleWifi"

    const-class v2, Lcom/lidroid/systemui/quickpanel/WifiButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleMobileData"

    const-class v2, Lcom/lidroid/systemui/quickpanel/MobileDataButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleGPS"

    const-class v2, Lcom/lidroid/systemui/quickpanel/GPSButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleBluetooth"

    const-class v2, Lcom/lidroid/systemui/quickpanel/BluetoothButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleSound"

    const-class v2, Lcom/lidroid/systemui/quickpanel/SoundButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleAutoRotate"

    const-class v2, Lcom/lidroid/systemui/quickpanel/AutoRotateButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleSync"

    const-class v2, Lcom/lidroid/systemui/quickpanel/SyncButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleBrightness"

    const-class v2, Lcom/lidroid/systemui/quickpanel/BrightnessButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleScreenTimeout"

    const-class v2, Lcom/lidroid/systemui/quickpanel/ScreenTimeoutButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleLockScreen"

    const-class v2, Lcom/lidroid/systemui/quickpanel/LockScreenButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleAirplane"

    const-class v2, Lcom/lidroid/systemui/quickpanel/AirplaneButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleReboot"

    const-class v2, Lcom/lidroid/systemui/quickpanel/RebootButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleShutdown"

    const-class v2, Lcom/lidroid/systemui/quickpanel/ShutdownButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleFlashlight"

    const-class v2, Lcom/lidroid/systemui/quickpanel/FlashlightButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleNetworkMode"

    const-class v2, Lcom/lidroid/systemui/quickpanel/NetworkModeButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    sput-object v3, Lcom/lidroid/systemui/quickpanel/PowerButton;->GLOBAL_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    sput-object v3, Lcom/lidroid/systemui/quickpanel/PowerButton;->GLOBAL_ON_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mType:Ljava/lang/String;

    new-instance v0, Lcom/lidroid/systemui/quickpanel/PowerButton$1;

    invoke-direct {v0, p0}, Lcom/lidroid/systemui/quickpanel/PowerButton$1;-><init>(Lcom/lidroid/systemui/quickpanel/PowerButton;)V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mViewUpdateHandler:Landroid/os/Handler;

    new-instance v0, Lcom/lidroid/systemui/quickpanel/PowerButton$2;

    invoke-direct {v0, p0}, Lcom/lidroid/systemui/quickpanel/PowerButton$2;-><init>(Lcom/lidroid/systemui/quickpanel/PowerButton;)V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/lidroid/systemui/quickpanel/PowerButton$4;

    invoke-direct {v0, p0}, Lcom/lidroid/systemui/quickpanel/PowerButton$4;-><init>(Lcom/lidroid/systemui/quickpanel/PowerButton;)V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/lidroid/systemui/quickpanel/PowerButton$3;

    invoke-direct {v0, p0}, Lcom/lidroid/systemui/quickpanel/PowerButton$3;-><init>(Lcom/lidroid/systemui/quickpanel/PowerButton;)V

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/lidroid/systemui/quickpanel/PowerButton;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lidroid/systemui/quickpanel/PowerButton;->updateImageView(II)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200()Landroid/view/View$OnClickListener;
    .locals 1

    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->GLOBAL_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300()Landroid/view/View$OnLongClickListener;
    .locals 1

    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->GLOBAL_ON_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method public static getAllBroadcastIntentFilters()Landroid/content/IntentFilter;
    .locals 9

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    sget-object v7, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_0
    sget-object v8, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/systemui/quickpanel/PowerButton;

    invoke-virtual {v1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->getBroadcastIntentFilter()Landroid/content/IntentFilter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v7

    return-object v2

    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public static getAllObservedUris()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/systemui/quickpanel/PowerButton;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/PowerButton;->getObservedUris()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v5
.end method

.method protected static getLoadedButton(Ljava/lang/String;)Lcom/lidroid/systemui/quickpanel/PowerButton;
    .locals 2

    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lidroid/systemui/quickpanel/PowerButton;

    monitor-exit v0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static handleOnChangeUri(Landroid/net/Uri;)V
    .locals 4

    sget-object v2, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/systemui/quickpanel/PowerButton;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/PowerButton;->getObservedUris()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;->onChangeUri(Landroid/net/Uri;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static handleOnReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/systemui/quickpanel/PowerButton;

    invoke-virtual {v1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->getBroadcastIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, p0, p1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static loadButton(Ljava/lang/String;Landroid/view/View;)Z
    .locals 6

    sget-object v2, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    sget-object v3, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lidroid/systemui/quickpanel/PowerButton;

    invoke-virtual {p0, p1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->setupButton(Landroid/view/View;)V

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    :try_start_1
    sget-object v2, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/systemui/quickpanel/PowerButton;

    invoke-virtual {v1, p1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->setupButton(Landroid/view/View;)V

    sget-object v2, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    :try_start_2
    const-string v2, "PowerButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading button: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static setGlobalOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    sput-object p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->GLOBAL_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static setGlobalOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    sput-object p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->GLOBAL_ON_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public static unloadAllButtons()V
    .locals 4

    sget-object v2, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/systemui/quickpanel/PowerButton;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/lidroid/systemui/quickpanel/PowerButton;->setupButton(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    sget-object v3, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static unloadButton(Ljava/lang/String;)V
    .locals 3

    sget-object v1, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/systemui/quickpanel/PowerButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lidroid/systemui/quickpanel/PowerButton;->setupButton(Landroid/view/View;)V

    sget-object v0, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static updateAllButtons()V
    .locals 4

    sget-object v2, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/lidroid/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/systemui/quickpanel/PowerButton;

    invoke-virtual {v1}, Lcom/lidroid/systemui/quickpanel/PowerButton;->update()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private updateImageView(II)V
    .locals 2

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateImageView(ILandroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    return-object v0
.end method

.method protected getObservedUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected abstract getText()I
.end method

.method protected abstract handleLongClick()Z
.end method

.method protected onChange()V
    .locals 0

    return-void
.end method

.method protected onChangeUri(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method protected onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected setupButton(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method protected abstract toggleState()V
.end method

.method protected update()V
    .locals 0

    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;->updateState()V

    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;->updateView()V

    return-void
.end method

.method protected abstract updateState()V
.end method

.method protected updateText()V
    .locals 3

    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    const v0, 0x7f0e0095

    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;->getText()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method protected updateView()V
    .locals 2

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerButton;->mViewUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
