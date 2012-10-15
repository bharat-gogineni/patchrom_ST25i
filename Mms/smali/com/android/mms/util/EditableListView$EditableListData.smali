.class Lcom/android/mms/util/EditableListView$EditableListData;
.super Landroid/database/DataSetObserver;
.source "EditableListView.java"

# interfaces
.implements Lcom/android/mms/util/EditableListView$EditableListViewCheckable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/EditableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditableListData"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mCheckedIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEditMode:Z

.field private mIdPositionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInnerDateSetChange:Z

.field private mIsCheckDataDirty:Z

.field private mToggleIndex:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/android/mms/util/EditableListView;


# direct methods
.method protected constructor <init>(Lcom/android/mms/util/EditableListView;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/mms/util/EditableListView$EditableListData;->this$0:Lcom/android/mms/util/EditableListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 250
    invoke-virtual {p0}, Lcom/android/mms/util/EditableListView$EditableListData;->clear()V

    .line 251
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/EditableListView$EditableListData;Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/android/mms/util/EditableListView$EditableListData;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/util/EditableListView$EditableListData;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/android/mms/util/EditableListView$EditableListData;->hasAdapter()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/mms/util/EditableListView$EditableListData;Landroid/view/View;I)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 234
    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/EditableListView$EditableListData;->toggleAt(Landroid/view/View;I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/util/EditableListView$EditableListData;Ljava/lang/Integer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/android/mms/util/EditableListView$EditableListData;->enterEditMode(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/util/EditableListView$EditableListData;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/android/mms/util/EditableListView$EditableListData;->exitEditMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/util/EditableListView$EditableListData;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/android/mms/util/EditableListView$EditableListData;->isEditMode()Z

    move-result v0

    return v0
.end method

.method private cleanupCheckedData()V
    .locals 5

    .prologue
    .line 470
    iget-boolean v3, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mIsCheckDataDirty:Z

    if-eqz v3, :cond_2

    .line 471
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 472
    .local v2, tempCheckedIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mIdPositionMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 473
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 474
    invoke-direct {p0, v0}, Lcom/android/mms/util/EditableListView$EditableListData;->getIdFromPosition(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 475
    .local v1, id:Ljava/lang/Long;
    iget-object v3, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 476
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_0
    iget-object v3, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mIdPositionMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    .end local v1           #id:Ljava/lang/Long;
    :cond_1
    iput-object v2, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    .line 481
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mIsCheckDataDirty:Z

    .line 483
    .end local v0           #i:I
    .end local v2           #tempCheckedIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_2
    return-void
.end method

.method private enterEditMode(Ljava/lang/Integer;)V
    .locals 2
    .parameter "initPosition"

    .prologue
    const/4 v1, 0x1

    .line 312
    iget-boolean v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mEditMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->this$0:Lcom/android/mms/util/EditableListView;

    #getter for: Lcom/android/mms/util/EditableListView;->mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;
    invoke-static {v0}, Lcom/android/mms/util/EditableListView;->access$300(Lcom/android/mms/util/EditableListView;)Lcom/android/mms/util/EditableListView$EditModeWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 313
    iput-boolean v1, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mEditMode:Z

    .line 314
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 315
    iput-object p1, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mToggleIndex:Ljava/lang/Integer;

    .line 316
    if-eqz p1, :cond_0

    .line 317
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/util/EditableListView$EditableListData;->innerToggleAt(I)Z

    .line 320
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->this$0:Lcom/android/mms/util/EditableListView;

    #getter for: Lcom/android/mms/util/EditableListView;->mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;
    invoke-static {v0}, Lcom/android/mms/util/EditableListView;->access$300(Lcom/android/mms/util/EditableListView;)Lcom/android/mms/util/EditableListView$EditModeWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/EditableListView$EditModeWrapper;->onCheckStateChanged(Lcom/android/mms/util/EditableListView$EditableListViewCheckable;)V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_1

    .line 323
    iput-boolean v1, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mInnerDateSetChange:Z

    .line 324
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 327
    :cond_1
    return-void
.end method

.method private exitEditMode()V
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mEditMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->this$0:Lcom/android/mms/util/EditableListView;

    #getter for: Lcom/android/mms/util/EditableListView;->mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;
    invoke-static {v0}, Lcom/android/mms/util/EditableListView;->access$300(Lcom/android/mms/util/EditableListView;)Lcom/android/mms/util/EditableListView$EditModeWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mEditMode:Z

    .line 332
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 334
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mInnerDateSetChange:Z

    .line 336
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 339
    :cond_0
    return-void
.end method

.method private getIdFromPosition(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lcom/android/mms/util/EditableListView$EditableListIdMapper;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/android/mms/util/EditableListView$EditableListIdMapper;

    invoke-interface {v0, p1}, Lcom/android/mms/util/EditableListView$EditableListIdMapper;->mapPositionToId(I)J

    move-result-wide v0

    .line 308
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private hasAdapter()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private innerToggleAt(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/android/mms/util/EditableListView$EditableListData;->getIdFromPosition(I)J

    move-result-wide v0

    .line 351
    .local v0, id:J
    iget-object v2, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 353
    const/4 v2, 0x0

    .line 356
    :goto_0
    return v2

    .line 355
    :cond_0
    iget-object v2, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 356
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isEditMode()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mEditMode:Z

    return v0
.end method

.method private notifyCheckStateChanged(Ljava/lang/Integer;)V
    .locals 1
    .parameter "lastTogglePositon"

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mToggleIndex:Ljava/lang/Integer;

    .line 343
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->this$0:Lcom/android/mms/util/EditableListView;

    #getter for: Lcom/android/mms/util/EditableListView;->mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;
    invoke-static {v0}, Lcom/android/mms/util/EditableListView;->access$300(Lcom/android/mms/util/EditableListView;)Lcom/android/mms/util/EditableListView$EditModeWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->this$0:Lcom/android/mms/util/EditableListView;

    #getter for: Lcom/android/mms/util/EditableListView;->mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;
    invoke-static {v0}, Lcom/android/mms/util/EditableListView;->access$300(Lcom/android/mms/util/EditableListView;)Lcom/android/mms/util/EditableListView$EditModeWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/EditableListView$EditModeWrapper;->onCheckStateChanged(Lcom/android/mms/util/EditableListView$EditableListViewCheckable;)V

    .line 346
    :cond_0
    return-void
.end method

.method private setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    const/4 v1, 0x1

    .line 275
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 279
    :cond_0
    iput-object p1, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    .line 280
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/BaseAdapter;

    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertEquals(ZZ)V

    .line 285
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lcom/android/mms/util/EditableListView$EditableListIdMapper;

    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertEquals(ZZ)V

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 293
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mIdPositionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 294
    iput-boolean v1, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mIsCheckDataDirty:Z

    .line 296
    iget-boolean v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mEditMode:Z

    if-eqz v0, :cond_3

    .line 300
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/util/EditableListView$EditableListData;->notifyCheckStateChanged(Ljava/lang/Integer;)V

    .line 302
    :cond_3
    return-void
.end method

.method private toggleAt(Landroid/view/View;I)Ljava/lang/Boolean;
    .locals 3
    .parameter "view"
    .parameter "position"

    .prologue
    .line 361
    iget-boolean v2, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mEditMode:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_2

    .line 365
    invoke-direct {p0, p2}, Lcom/android/mms/util/EditableListView$EditableListData;->innerToggleAt(I)Z

    move-result v1

    .line 366
    .local v1, ret:Z
    const v2, 0x1020001

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 367
    .local v0, checkBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 370
    :cond_0
    iget-object v2, p0, Lcom/android/mms/util/EditableListView$EditableListData;->this$0:Lcom/android/mms/util/EditableListView;

    #getter for: Lcom/android/mms/util/EditableListView;->mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;
    invoke-static {v2}, Lcom/android/mms/util/EditableListView;->access$300(Lcom/android/mms/util/EditableListView;)Lcom/android/mms/util/EditableListView$EditModeWrapper;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 371
    iget-object v2, p0, Lcom/android/mms/util/EditableListView$EditableListData;->this$0:Lcom/android/mms/util/EditableListView;

    #getter for: Lcom/android/mms/util/EditableListView;->mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;
    invoke-static {v2}, Lcom/android/mms/util/EditableListView;->access$300(Lcom/android/mms/util/EditableListView;)Lcom/android/mms/util/EditableListView$EditModeWrapper;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/android/mms/util/EditableListView$EditModeWrapper;->onVisibleViewCheckStateChanged(Landroid/view/View;Z)V

    .line 373
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/util/EditableListView$EditableListData;->notifyCheckStateChanged(Ljava/lang/Integer;)V

    .line 374
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 376
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v1           #ret:Z
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkAll()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 486
    iget-boolean v4, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mEditMode:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_4

    .line 487
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 488
    invoke-direct {p0, v1}, Lcom/android/mms/util/EditableListView$EditableListData;->getIdFromPosition(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 489
    .local v2, id:Ljava/lang/Long;
    iget-object v4, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    .end local v2           #id:Ljava/lang/Long;
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/mms/util/EditableListView$EditableListData;->this$0:Lcom/android/mms/util/EditableListView;

    invoke-virtual {v4}, Lcom/android/mms/util/EditableListView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 495
    iget-object v4, p0, Lcom/android/mms/util/EditableListView$EditableListData;->this$0:Lcom/android/mms/util/EditableListView;

    invoke-virtual {v4, v1}, Lcom/android/mms/util/EditableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 496
    .local v3, view:Landroid/view/View;
    const v4, 0x1020001

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 497
    .local v0, checkBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_1

    .line 498
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 500
    :cond_1
    iget-object v4, p0, Lcom/android/mms/util/EditableListView$EditableListData;->this$0:Lcom/android/mms/util/EditableListView;

    #getter for: Lcom/android/mms/util/EditableListView;->mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;
    invoke-static {v4}, Lcom/android/mms/util/EditableListView;->access$300(Lcom/android/mms/util/EditableListView;)Lcom/android/mms/util/EditableListView$EditModeWrapper;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 501
    iget-object v4, p0, Lcom/android/mms/util/EditableListView$EditableListData;->this$0:Lcom/android/mms/util/EditableListView;

    #getter for: Lcom/android/mms/util/EditableListView;->mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;
    invoke-static {v4}, Lcom/android/mms/util/EditableListView;->access$300(Lcom/android/mms/util/EditableListView;)Lcom/android/mms/util/EditableListView$EditModeWrapper;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Lcom/android/mms/util/EditableListView$EditModeWrapper;->onVisibleViewCheckStateChanged(Landroid/view/View;Z)V

    .line 494
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 504
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v3           #view:Landroid/view/View;
    :cond_3
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/mms/util/EditableListView$EditableListData;->notifyCheckStateChanged(Ljava/lang/Integer;)V

    .line 506
    .end local v1           #i:I
    :cond_4
    return-void
.end method

.method public checkNothing()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 509
    iget-boolean v3, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mEditMode:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_3

    .line 510
    iget-object v3, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 514
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/mms/util/EditableListView$EditableListData;->this$0:Lcom/android/mms/util/EditableListView;

    invoke-virtual {v3}, Lcom/android/mms/util/EditableListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 515
    iget-object v3, p0, Lcom/android/mms/util/EditableListView$EditableListData;->this$0:Lcom/android/mms/util/EditableListView;

    invoke-virtual {v3, v1}, Lcom/android/mms/util/EditableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 516
    .local v2, view:Landroid/view/View;
    const v3, 0x1020001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 517
    .local v0, checkBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 520
    :cond_0
    iget-object v3, p0, Lcom/android/mms/util/EditableListView$EditableListData;->this$0:Lcom/android/mms/util/EditableListView;

    #getter for: Lcom/android/mms/util/EditableListView;->mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;
    invoke-static {v3}, Lcom/android/mms/util/EditableListView;->access$300(Lcom/android/mms/util/EditableListView;)Lcom/android/mms/util/EditableListView$EditModeWrapper;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 521
    iget-object v3, p0, Lcom/android/mms/util/EditableListView$EditableListData;->this$0:Lcom/android/mms/util/EditableListView;

    #getter for: Lcom/android/mms/util/EditableListView;->mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;
    invoke-static {v3}, Lcom/android/mms/util/EditableListView;->access$300(Lcom/android/mms/util/EditableListView;)Lcom/android/mms/util/EditableListView$EditModeWrapper;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Lcom/android/mms/util/EditableListView$EditModeWrapper;->onVisibleViewCheckStateChanged(Landroid/view/View;Z)V

    .line 514
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v2           #view:Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/mms/util/EditableListView$EditableListData;->notifyCheckStateChanged(Ljava/lang/Integer;)V

    .line 526
    .end local v1           #i:I
    :cond_3
    return-void
.end method

.method protected clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mInnerDateSetChange:Z

    .line 255
    iput-boolean v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mEditMode:Z

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mIsCheckDataDirty:Z

    .line 257
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    .line 262
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mToggleIndex:Ljava/lang/Integer;

    .line 263
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mIdPositionMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mIdPositionMap:Ljava/util/HashMap;

    .line 268
    :goto_1
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mIdPositionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_1
.end method

.method public count()I
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mEditMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 439
    invoke-direct {p0}, Lcom/android/mms/util/EditableListView$EditableListData;->cleanupCheckedData()V

    .line 440
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 442
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckedItemInIds()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mEditMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 463
    invoke-direct {p0}, Lcom/android/mms/util/EditableListView$EditableListData;->cleanupCheckedData()V

    .line 464
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 466
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method public getCheckedItemInPositions()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 447
    .local v0, checkedItemIndex:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-boolean v3, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mEditMode:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    .line 448
    invoke-direct {p0}, Lcom/android/mms/util/EditableListView$EditableListData;->cleanupCheckedData()V

    .line 449
    iget-object v3, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 450
    .local v2, id:Ljava/lang/Long;
    iget-object v3, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mIdPositionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 453
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #id:Ljava/lang/Long;
    :cond_0
    return-object v0
.end method

.method public isAllChecked()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 430
    iget-boolean v1, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mEditMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 431
    invoke-direct {p0}, Lcom/android/mms/util/EditableListView$EditableListData;->cleanupCheckedData()V

    .line 432
    iget-object v1, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 434
    :cond_0
    return v0
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mInnerDateSetChange:Z

    if-nez v0, :cond_0

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mIsCheckDataDirty:Z

    .line 385
    iget-boolean v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mEditMode:Z

    if-eqz v0, :cond_0

    .line 389
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/util/EditableListView$EditableListData;->notifyCheckStateChanged(Ljava/lang/Integer;)V

    .line 392
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mInnerDateSetChange:Z

    .line 393
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 398
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mIdPositionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mIsCheckDataDirty:Z

    .line 400
    iget-boolean v0, p0, Lcom/android/mms/util/EditableListView$EditableListData;->mEditMode:Z

    if-eqz v0, :cond_0

    .line 404
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/util/EditableListView$EditableListData;->notifyCheckStateChanged(Ljava/lang/Integer;)V

    .line 406
    :cond_0
    return-void
.end method
