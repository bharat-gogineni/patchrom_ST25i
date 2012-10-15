.class public Lcom/miui/gallery/ui/TaskListenerForRefresh;
.super Ljava/lang/Object;
.source "TaskListenerForRefresh.java"

# interfaces
.implements Lcom/miui/gallery/ui/MenuExecutor$TaskListener;


# instance fields
.field private final mActionNeedRefreshs:[I

.field public mExcuteRefeshTask:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/miui/gallery/ui/TaskListenerForRefresh;->mActionNeedRefreshs:[I

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/TaskListenerForRefresh;->mExcuteRefeshTask:Z

    return-void

    .line 8
    nop

    :array_0
    .array-data 0x4
        0xbct 0x0t 0xbt 0x7ft
        0xbdt 0x0t 0xbt 0x7ft
        0xbet 0x0t 0xbt 0x7ft
        0xbft 0x0t 0xbt 0x7ft
    .end array-data
.end method


# virtual methods
.method public isExcuteRefeshTask()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/miui/gallery/ui/TaskListenerForRefresh;->mExcuteRefeshTask:Z

    return v0
.end method

.method public onStart(I)V
    .locals 5
    .parameter "action"

    .prologue
    .line 18
    iget-object v1, p0, Lcom/miui/gallery/ui/TaskListenerForRefresh;->mActionNeedRefreshs:[I

    .local v1, arr$:[I
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, v1, v2

    .line 20
    .local v0, actionNeedRefresh:I
    if-ne p1, v0, :cond_1

    .line 21
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/miui/gallery/ui/TaskListenerForRefresh;->mExcuteRefeshTask:Z

    .line 25
    .end local v0           #actionNeedRefresh:I
    :cond_0
    return-void

    .line 18
    .restart local v0       #actionNeedRefresh:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public resetExcuteRefeshTask()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/TaskListenerForRefresh;->mExcuteRefeshTask:Z

    .line 34
    return-void
.end method
