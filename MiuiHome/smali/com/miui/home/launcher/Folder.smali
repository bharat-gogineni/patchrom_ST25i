.class public Lcom/miui/home/launcher/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/miui/home/launcher/DragSource;


# instance fields
.field private mCloseAnimation:Landroid/view/animation/AnimationSet;

.field private mClosing:Z

.field private mComfirmBtn:Landroid/view/View;

.field protected mContent:Lcom/miui/home/launcher/DropableGridView;

.field private mDefaultFolderName:Ljava/lang/String;

.field private mDefaultUnnamedFolderName:Ljava/lang/String;

.field protected mDragController:Lcom/miui/home/launcher/DragController;

.field protected mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

.field private mDragPos:I

.field private mDragedView:Landroid/view/View;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field protected mInfo:Lcom/miui/home/launcher/FolderInfo;

.field private mIsEditing:Z

.field private mLastAtMostMeasureHeight:I

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mOnFinishClose:Ljava/lang/Runnable;

.field private mOpenAnimation:Landroid/view/animation/AnimationSet;

.field private mRenameEdit:Landroid/widget/EditText;

.field protected mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

.field protected mTitleText:Landroid/widget/TextView;

.field private requestOpenAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 58
    iput-object v1, p0, Lcom/miui/home/launcher/Folder;->mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

    .line 64
    iput-object v1, p0, Lcom/miui/home/launcher/Folder;->mOnFinishClose:Ljava/lang/Runnable;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/Folder;->mDragPos:I

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Folder;->requestOpenAnimation:Z

    .line 96
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/Folder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->finishShow()V

    return-void
.end method

.method private finishShow()V
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    if-eqz v0, :cond_1

    .line 282
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setVisibility(I)V

    .line 283
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->clearAnimation()V

    .line 284
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mOnFinishClose:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mOnFinishClose:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mOnFinishClose:Ljava/lang/Runnable;

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Folder;->requestOpenAnimation:Z

    goto :goto_0
.end method

.method private getEditText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "title"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mDefaultFolderName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mDefaultUnnamedFolderName:Ljava/lang/String;

    .line 307
    .end local p1
    :cond_0
    return-object p1
.end method

.method private prepairAnimationSet(Landroid/view/animation/AnimationSet;)V
    .locals 4
    .parameter "as"

    .prologue
    .line 294
    invoke-virtual {p1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v1

    .line 295
    .local v1, al:Ljava/util/List;,"Ljava/util/List<Landroid/view/animation/Animation;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 296
    .local v0, a:Landroid/view/animation/Animation;
    instance-of v3, v0, Landroid/view/animation/ScaleAnimation;

    if-eqz v3, :cond_0

    .line 297
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 301
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_1
    return-void
.end method

.method private showEditPanel(ZZ)V
    .locals 6
    .parameter "isShow"
    .parameter "doAnim"

    .prologue
    const v5, 0x7f04000f

    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 358
    iget-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mIsEditing:Z

    if-ne v0, p1, :cond_0

    .line 386
    :goto_0
    return-void

    .line 361
    :cond_0
    if-eqz p1, :cond_2

    .line 362
    if-eqz p2, :cond_1

    .line 363
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 364
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mComfirmBtn:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 369
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mComfirmBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 381
    :goto_1
    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/DropableGridView;

    if-eqz p1, :cond_4

    const v0, 0x3e99999a

    :goto_2
    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/DropableGridView;->setAlpha(F)V

    .line 382
    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/DropableGridView;

    if-nez p1, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/DropableGridView;->setEnabled(Z)V

    .line 383
    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/DropableGridView;

    if-nez p1, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/DropableGridView;->setClickable(Z)V

    .line 384
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/DropableGridView;

    if-nez p1, :cond_7

    :goto_5
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DropableGridView;->setLongClickable(Z)V

    .line 385
    iput-boolean p1, p0, Lcom/miui/home/launcher/Folder;->mIsEditing:Z

    goto :goto_0

    .line 372
    :cond_2
    if-eqz p2, :cond_3

    .line 373
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 375
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 376
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mComfirmBtn:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->scrollToDefault()V

    goto :goto_1

    .line 381
    :cond_4
    const/high16 v0, 0x3f80

    goto :goto_2

    :cond_5
    move v0, v2

    .line 382
    goto :goto_3

    :cond_6
    move v0, v2

    .line 383
    goto :goto_4

    :cond_7
    move v1, v2

    .line 384
    goto :goto_5
.end method


# virtual methods
.method bind(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 320
    iput-object p1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 321
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->updateAppearance()V

    .line 322
    if-nez p1, :cond_0

    .line 323
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setContentAdapter(Landroid/widget/BaseAdapter;)V

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setContentAdapter(Landroid/widget/BaseAdapter;)V

    goto :goto_0
.end method

.method public getDragedItem()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    return-object v0
.end method

.method getInfo()Lcom/miui/home/launcher/FolderInfo;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    return-object v0
.end method

.method getLastAtMostMeasureHeight()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/miui/home/launcher/Folder;->mLastAtMostMeasureHeight:I

    return v0
.end method

.method protected onAnimationEnd()V
    .locals 1

    .prologue
    .line 331
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAnimationEnd()V

    .line 332
    new-instance v0, Lcom/miui/home/launcher/Folder$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Folder$1;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->post(Ljava/lang/Runnable;)Z

    .line 338
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 355
    :goto_0
    :pswitch_0
    return-void

    .line 344
    :pswitch_1
    invoke-direct {p0, v3, v3}, Lcom/miui/home/launcher/Folder;->showEditPanel(ZZ)V

    goto :goto_0

    .line 347
    :pswitch_2
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Folder;->getEditText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->updateAppearance()V

    .line 352
    const/4 v1, 0x0

    invoke-direct {p0, v1, v3}, Lcom/miui/home/launcher/Folder;->showEditPanel(ZZ)V

    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x7f070013
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method onClose(ZLjava/lang/Runnable;)V
    .locals 9
    .parameter "allowAnimation"
    .parameter "onFinishClose"

    .prologue
    const/4 v6, 0x1

    const/high16 v1, 0x3f80

    const v2, 0x3f19999a

    const/4 v4, 0x0

    .line 247
    iget-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    if-eqz v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 250
    :cond_0
    iput-boolean v6, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    .line 251
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iput-boolean v4, v0, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    .line 252
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->clearAnimation()V

    .line 254
    invoke-direct {p0, v4, v4}, Lcom/miui/home/launcher/Folder;->showEditPanel(ZZ)V

    .line 255
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/DropableGridView;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/DragController;->removeDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 257
    iput-object p2, p0, Lcom/miui/home/launcher/Folder;->mOnFinishClose:Ljava/lang/Runnable;

    .line 259
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->onClose()V

    .line 266
    if-nez p1, :cond_2

    .line 267
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->finishShow()V

    goto :goto_0

    .line 262
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->finishShow()V

    goto :goto_0

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mCloseAnimation:Landroid/view/animation/AnimationSet;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Folder;->prepairAnimationSet(Landroid/view/animation/AnimationSet;)V

    .line 272
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 273
    .local v7, pos:[I
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0, v7}, Lcom/miui/home/launcher/FolderIcon;->getLocationInWindow([I)V

    .line 274
    iget-object v8, p0, Lcom/miui/home/launcher/Folder;->mCloseAnimation:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    aget v3, v7, v4

    iget-object v4, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v4, v4, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v4}, Lcom/miui/home/launcher/FolderIcon;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v5, v3

    aget v3, v7, v6

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 277
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mCloseAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/miui/home/launcher/DropTarget$DragObject;Z)V
    .locals 7
    .parameter "target"
    .parameter "d"
    .parameter "success"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 144
    if-eqz p3, :cond_0

    .line 145
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v0

    .line 146
    .local v0, adapter:Lcom/miui/home/launcher/ShortcutsAdapter;
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/DropableGridView;

    if-ne p1, v1, :cond_3

    .line 147
    iget v1, p0, Lcom/miui/home/launcher/Folder;->mDragPos:I

    iget-object v2, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v2, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-eq v1, v2, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->saveContentPosition()V

    .line 149
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 157
    .end local v0           #adapter:Lcom/miui/home/launcher/ShortcutsAdapter;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    if-nez p3, :cond_1

    .line 159
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->copyPosition(Lcom/miui/home/launcher/ItemInfo;)V

    .line 160
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1, v2, v5}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;Z)V

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v1, v2}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 164
    :cond_2
    iput-object v6, p0, Lcom/miui/home/launcher/Folder;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    .line 165
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mDragedView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, v6}, Lcom/miui/home/launcher/DragController;->setTouchTranslator(Lcom/miui/home/launcher/DragController$TouchTranslator;)V

    .line 167
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderIcon;->invalidate()V

    .line 168
    return-void

    .line 152
    .restart local v0       #adapter:Lcom/miui/home/launcher/ShortcutsAdapter;
    :cond_3
    iget-object v1, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v1, v1, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-wide v3, v3, Lcom/miui/home/launcher/FolderInfo;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Folder;->removeItem(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const-wide/16 v5, 0xc8

    const/4 v4, 0x1

    .line 112
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 113
    const v1, 0x7f070012

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/DropableGridView;

    iput-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/DropableGridView;

    .line 114
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/DropableGridView;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/DropableGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 115
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/DropableGridView;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/DropableGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 116
    const v1, 0x7f070014

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    .line 117
    const v1, 0x7f070013

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/Folder;->mComfirmBtn:Landroid/view/View;

    .line 119
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mComfirmBtn:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v1, 0x7f070015

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    .line 121
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/miui/home/launcher/Folder;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 122
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/home/launcher/Folder;->mIsEditing:Z

    .line 123
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/miui/home/launcher/Folder;->mOpenAnimation:Landroid/view/animation/AnimationSet;

    .line 124
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mOpenAnimation:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    const v3, 0x7f04000f

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 125
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mOpenAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 126
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mOpenAnimation:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 128
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/miui/home/launcher/Folder;->mCloseAnimation:Landroid/view/animation/AnimationSet;

    .line 129
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mCloseAnimation:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    const v3, 0x7f040011

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 130
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mCloseAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 131
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mCloseAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 132
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mCloseAnimation:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 133
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 134
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/Folder;->mDefaultFolderName:Ljava/lang/String;

    .line 135
    const v1, 0x7f0c0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/Folder;->mDefaultUnnamedFolderName:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 390
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/Launcher;->onClick(Landroid/view/View;)V

    .line 391
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 395
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 414
    :cond_0
    :goto_0
    return v1

    .line 399
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isPrivacyModeEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 407
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 409
    .local v0, app:Lcom/miui/home/launcher/ShortcutInfo;
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->setTouchTranslator(Lcom/miui/home/launcher/DragController$TouchTranslator;)V

    .line 410
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mDragController:Lcom/miui/home/launcher/DragController;

    sget v2, Lcom/miui/home/launcher/DragController;->DRAG_ACTION_MOVE:I

    invoke-virtual {v1, p2, p0, v0, v2}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;I)V

    .line 411
    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    .line 412
    iput-object p2, p0, Lcom/miui/home/launcher/Folder;->mDragedView:Landroid/view/View;

    .line 413
    iput p3, p0, Lcom/miui/home/launcher/Folder;->mDragPos:I

    .line 414
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/high16 v2, 0x3f80

    const v1, 0x3f19999a

    .line 228
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 229
    iget-boolean v0, p0, Lcom/miui/home/launcher/Folder;->requestOpenAnimation:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->clearAnimation()V

    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mOpenAnimation:Landroid/view/animation/AnimationSet;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mOpenAnimation:Landroid/view/animation/AnimationSet;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Folder;->prepairAnimationSet(Landroid/view/animation/AnimationSet;)V

    .line 237
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 238
    .local v7, pos:[I
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0, v7}, Lcom/miui/home/launcher/FolderIcon;->getLocationInWindow([I)V

    .line 239
    iget-object v8, p0, Lcom/miui/home/launcher/Folder;->mOpenAnimation:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v3, 0x0

    aget v3, v7, v3

    iget-object v4, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v4, v4, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v4}, Lcom/miui/home/launcher/FolderIcon;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v5, v3

    const/4 v3, 0x1

    aget v3, v7, v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 242
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mOpenAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->startAnimation(Landroid/view/animation/Animation;)V

    .line 244
    .end local v7           #pos:[I
    :cond_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mOpenAnimation:Landroid/view/animation/AnimationSet;

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 423
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 424
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    .line 425
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "folder height must be wrap_content!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/Folder;->mLastAtMostMeasureHeight:I

    .line 428
    return-void
.end method

.method onOpen(Z)V
    .locals 3
    .parameter "allowAnimation"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 203
    iput-boolean v1, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    .line 204
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iput-boolean v2, v0, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    .line 205
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/DropableGridView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropableGridView;->requestLayout()V

    .line 206
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->clearAnimation()V

    .line 208
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Folder;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/DropableGridView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 211
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->requestFocus()Z

    .line 213
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->onOpen()V

    .line 219
    if-nez p1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iput-boolean v2, p0, Lcom/miui/home/launcher/Folder;->requestOpenAnimation:Z

    goto :goto_0
.end method

.method public removeItem(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderInfo;->remove(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 172
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 173
    return-void
.end method

.method setContentAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/DropableGridView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DropableGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0
    .parameter "dragController"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/miui/home/launcher/Folder;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 141
    return-void
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 2
    .parameter "launcher"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 187
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v0, v1}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

    .line 188
    return-void
.end method

.method protected updateAppearance()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Folder;->getEditText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Folder;->getEditText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 317
    :cond_0
    return-void
.end method
