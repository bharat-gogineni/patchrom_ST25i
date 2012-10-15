.class public Lcom/miui/gallery/util/SpinnerVisibilitySetter;
.super Ljava/lang/Object;
.source "SpinnerVisibilitySetter.java"


# static fields
.field static final sInstanceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/app/Activity;",
            "Lcom/miui/gallery/util/SpinnerVisibilitySetter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private mSpinnerVisibilityStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/SpinnerVisibilitySetter;->sInstanceMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gallery/util/SpinnerVisibilitySetter;->mSpinnerVisibilityStartTime:J

    .line 52
    new-instance v0, Lcom/miui/gallery/util/SpinnerVisibilitySetter$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/util/SpinnerVisibilitySetter$1;-><init>(Lcom/miui/gallery/util/SpinnerVisibilitySetter;)V

    iput-object v0, p0, Lcom/miui/gallery/util/SpinnerVisibilitySetter;->mHandler:Landroid/os/Handler;

    .line 94
    iput-object p1, p0, Lcom/miui/gallery/util/SpinnerVisibilitySetter;->mActivity:Landroid/app/Activity;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/util/SpinnerVisibilitySetter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/miui/gallery/util/SpinnerVisibilitySetter;->mSpinnerVisibilityStartTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/util/SpinnerVisibilitySetter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/miui/gallery/util/SpinnerVisibilitySetter;->mSpinnerVisibilityStartTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/util/SpinnerVisibilitySetter;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/util/SpinnerVisibilitySetter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/miui/gallery/util/SpinnerVisibilitySetter;
    .locals 3
    .parameter "activity"

    .prologue
    .line 83
    sget-object v2, Lcom/miui/gallery/util/SpinnerVisibilitySetter;->sInstanceMap:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 84
    :try_start_0
    sget-object v1, Lcom/miui/gallery/util/SpinnerVisibilitySetter;->sInstanceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/SpinnerVisibilitySetter;

    .line 85
    .local v0, setter:Lcom/miui/gallery/util/SpinnerVisibilitySetter;
    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/miui/gallery/util/SpinnerVisibilitySetter;

    .end local v0           #setter:Lcom/miui/gallery/util/SpinnerVisibilitySetter;
    invoke-direct {v0, p0}, Lcom/miui/gallery/util/SpinnerVisibilitySetter;-><init>(Landroid/app/Activity;)V

    .line 87
    .restart local v0       #setter:Lcom/miui/gallery/util/SpinnerVisibilitySetter;
    sget-object v1, Lcom/miui/gallery/util/SpinnerVisibilitySetter;->sInstanceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    monitor-exit v2

    return-object v0

    .line 90
    .end local v0           #setter:Lcom/miui/gallery/util/SpinnerVisibilitySetter;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public setSpinnerVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 106
    return-void
.end method
