.class Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;
.super Landroid/os/AsyncTask;
.source "MusicBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MusicBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncQueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[I>;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGrid:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/player/ui/controller/GridController;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferences:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/miui/player/ui/controller/GridController;)V
    .locals 1
    .parameter "context"
    .parameter "sp"
    .parameter "grid"

    .prologue
    .line 341
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 342
    iput-object p1, p0, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->mContext:Landroid/content/Context;

    .line 343
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->mPreferences:Ljava/lang/ref/WeakReference;

    .line 344
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->mGrid:Ljava/lang/ref/WeakReference;

    .line 345
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 336
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->doInBackground([Ljava/lang/Void;)[I

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[I
    .locals 10
    .parameter "params"

    .prologue
    .line 349
    sget-object v8, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->TABLE:[Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    array-length v8, v8

    new-array v7, v8, [I

    .line 350
    .local v7, numArr:[I
    const/4 v1, 0x0

    .line 351
    .local v1, i:I
    sget-object v0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->TABLE:[Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    .local v0, arr$:[Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v4, v0, v3

    .line 352
    .local v4, item:Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;
    iget-boolean v8, v4, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mAllowRequestAsync:Z

    if-eqz v8, :cond_1

    .line 353
    iget-object v9, p0, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->mPreferences:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/SharedPreferences;

    invoke-virtual {v4, v9, v8}, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->requestNum(Landroid/content/Context;Landroid/content/SharedPreferences;)I

    move-result v6

    .line 354
    .local v6, num:I
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput v6, v7, v2

    .line 351
    .end local v6           #num:I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 358
    .end local v4           #item:Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;
    :cond_0
    return-object v7

    .restart local v4       #item:Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;
    :cond_1
    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 336
    check-cast p1, [I

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->onPostExecute([I)V

    return-void
.end method

.method protected onPostExecute([I)V
    .locals 5
    .parameter "result"

    .prologue
    .line 363
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 364
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 380
    :cond_0
    return-void

    .line 368
    :cond_1
    iget-object v4, p0, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->mGrid:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/controller/GridController;

    .line 369
    .local v0, grid:Lcom/miui/player/ui/controller/GridController;
    if-eqz v0, :cond_0

    .line 373
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v4, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->TABLE:[Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 374
    aget v3, p1, v1

    .line 375
    .local v3, num:I
    sget-object v4, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->TABLE:[Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    aget-object v2, v4, v1

    .line 376
    .local v2, item:Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;
    iget-boolean v4, v2, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mAllowRequestAsync:Z

    if-eqz v4, :cond_2

    .line 377
    iget-object v4, p0, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, v0, v3}, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->update(Landroid/content/Context;Lcom/miui/player/ui/controller/GridController;I)V

    .line 373
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
