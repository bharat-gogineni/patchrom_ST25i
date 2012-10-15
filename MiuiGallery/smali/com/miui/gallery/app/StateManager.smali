.class public Lcom/miui/gallery/app/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/StateManager$StateEntry;
    }
.end annotation


# instance fields
.field private mContext:Lcom/miui/gallery/app/GalleryActivity;

.field private mIsResumed:Z

.field private mLaunchGalleryOnTop:Z

.field private mResult:Lcom/miui/gallery/app/ActivityState$ResultEntry;

.field private mStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/miui/gallery/app/StateManager$StateEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mTopIsThirdParty:Z

.field private mTriggerOnPauseByAndroidActivity:Z


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v1, p0, Lcom/miui/gallery/app/StateManager;->mIsResumed:Z

    .line 52
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    .line 54
    iput-boolean v1, p0, Lcom/miui/gallery/app/StateManager;->mLaunchGalleryOnTop:Z

    .line 55
    iput-boolean v1, p0, Lcom/miui/gallery/app/StateManager;->mTopIsThirdParty:Z

    .line 58
    iput-boolean v1, p0, Lcom/miui/gallery/app/StateManager;->mTriggerOnPauseByAndroidActivity:Z

    .line 61
    iput-object p1, p0, Lcom/miui/gallery/app/StateManager;->mContext:Lcom/miui/gallery/app/GalleryActivity;

    .line 62
    return-void
.end method


# virtual methods
.method public createOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/miui/gallery/app/StateManager;->mContext:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/miui/gallery/app/StateManager;->getTopState()Lcom/miui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/ActivityState;->onCreateActionBar(Landroid/view/Menu;)Z

    move-result v0

    .line 124
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 373
    const-string v0, "StateManager"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/miui/gallery/app/StateManager$StateEntry;->activityState:Lcom/miui/gallery/app/ActivityState;

    invoke-virtual {v0}, Lcom/miui/gallery/app/ActivityState;->onDestroy()V

    goto :goto_0

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/StateManager;->mTopIsThirdParty:Z

    .line 379
    return-void
.end method

.method finishState(Lcom/miui/gallery/app/ActivityState;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 220
    const-string v2, "StateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v2, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/app/StateManager$StateEntry;

    iget-object v2, v2, Lcom/miui/gallery/app/StateManager$StateEntry;->activityState:Lcom/miui/gallery/app/ActivityState;

    if-eq p1, v2, :cond_3

    .line 233
    invoke-virtual {p1}, Lcom/miui/gallery/app/ActivityState;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    const-string v2, "StateManager"

    const-string v3, "The state is already destroyed"

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :cond_2
    const-string v3, "StateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The stateview to be finished is not at the top of the stack: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/app/StateManager$StateEntry;

    iget-object v2, v2, Lcom/miui/gallery/app/StateManager$StateEntry;->activityState:Lcom/miui/gallery/app/ActivityState;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 246
    iget-boolean v2, p0, Lcom/miui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/miui/gallery/app/ActivityState;->onPause()V

    .line 247
    :cond_4
    iget-object v2, p0, Lcom/miui/gallery/app/StateManager;->mContext:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/miui/gallery/ui/GLRoot;->setContentPane(Lcom/miui/gallery/ui/GLView;)V

    .line 248
    invoke-virtual {p1}, Lcom/miui/gallery/app/ActivityState;->onDestroy()V

    .line 250
    iget-object v2, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 251
    const-string v2, "StateManager"

    const-string v3, "no more state, finish activity"

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v2, p0, Lcom/miui/gallery/app/StateManager;->mContext:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 253
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/miui/gallery/app/StateManager;->mResult:Lcom/miui/gallery/app/ActivityState$ResultEntry;

    if-eqz v2, :cond_5

    .line 254
    iget-object v2, p0, Lcom/miui/gallery/app/StateManager;->mResult:Lcom/miui/gallery/app/ActivityState$ResultEntry;

    iget v2, v2, Lcom/miui/gallery/app/ActivityState$ResultEntry;->resultCode:I

    iget-object v3, p0, Lcom/miui/gallery/app/StateManager;->mResult:Lcom/miui/gallery/app/ActivityState$ResultEntry;

    iget-object v3, v3, Lcom/miui/gallery/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 256
    :cond_5
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 260
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    const-string v2, "StateManager"

    const-string v3, "finish() failed, start default page"

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v2, p0, Lcom/miui/gallery/app/StateManager;->mContext:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v2, Lcom/miui/gallery/app/Gallery;

    invoke-virtual {v2}, Lcom/miui/gallery/app/Gallery;->startDefaultPage()V

    goto/16 :goto_0

    .line 266
    .end local v0           #activity:Landroid/app/Activity;
    :cond_6
    iget-object v2, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/app/StateManager$StateEntry;

    iget-object v1, v2, Lcom/miui/gallery/app/StateManager$StateEntry;->activityState:Lcom/miui/gallery/app/ActivityState;

    .line 267
    .local v1, top:Lcom/miui/gallery/app/ActivityState;
    iget-boolean v2, p0, Lcom/miui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/miui/gallery/app/ActivityState;->resume()V

    goto/16 :goto_0
.end method

.method public getStateCount()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public getTopState()Lcom/miui/gallery/app/ActivityState;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 445
    iget-object v0, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/miui/gallery/app/StateManager$StateEntry;->activityState:Lcom/miui/gallery/app/ActivityState;

    return-object v0

    .line 444
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isStackEmpty()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isTopThirdParty()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/miui/gallery/app/StateManager;->mTopIsThirdParty:Z

    return v0
.end method

.method public itemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 195
    iget-object v0, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 196
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x102002c

    if-ne v0, v2, :cond_2

    .line 197
    iget-object v0, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/miui/gallery/app/StateManager;->getTopState()Lcom/miui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/ActivityState;->onBackPressed()V

    :cond_0
    :goto_0
    move v0, v1

    .line 210
    :goto_1
    return v0

    .line 199
    :cond_1
    iget-boolean v0, p0, Lcom/miui/gallery/app/StateManager;->mLaunchGalleryOnTop:Z

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/miui/gallery/app/StateManager;->mContext:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 201
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/gallery/app/Gallery;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 203
    iget-object v0, p0, Lcom/miui/gallery/app/StateManager;->mContext:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/app/StateManager;->getTopState()Lcom/miui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/ActivityState;->onItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1

    .line 210
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public keyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/miui/gallery/app/StateManager;->getTopState()Lcom/miui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/app/ActivityState;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/miui/gallery/app/StateManager;->getTopState()Lcom/miui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/app/ActivityState;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/miui/gallery/app/StateManager;->getTopState()Lcom/miui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/app/ActivityState;->onStateResult(IILandroid/content/Intent;)V

    .line 188
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/miui/gallery/app/StateManager;->getTopState()Lcom/miui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/ActivityState;->onBackPressed()V

    .line 217
    :cond_0
    return-void
.end method

.method public onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 129
    iget-object v2, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/StateManager$StateEntry;

    .line 130
    .local v0, entry:Lcom/miui/gallery/app/StateManager$StateEntry;
    iget-object v2, v0, Lcom/miui/gallery/app/StateManager$StateEntry;->activityState:Lcom/miui/gallery/app/ActivityState;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 132
    .end local v0           #entry:Lcom/miui/gallery/app/StateManager$StateEntry;
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/miui/gallery/app/StateManager;->getTopState()Lcom/miui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/ActivityState;->onWindowFocusChanged(Z)V

    .line 184
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-boolean v0, p0, Lcom/miui/gallery/app/StateManager;->mIsResumed:Z

    if-nez v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iput-boolean v1, p0, Lcom/miui/gallery/app/StateManager;->mIsResumed:Z

    .line 147
    iget-object v0, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/StateManager;->mTriggerOnPauseByAndroidActivity:Z

    .line 150
    invoke-virtual {p0}, Lcom/miui/gallery/app/StateManager;->getTopState()Lcom/miui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/ActivityState;->onPause()V

    .line 151
    iput-boolean v1, p0, Lcom/miui/gallery/app/StateManager;->mTriggerOnPauseByAndroidActivity:Z

    goto :goto_0
.end method

.method public prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/miui/gallery/app/StateManager;->getTopState()Lcom/miui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/ActivityState;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreFromState(Landroid/os/Bundle;)V
    .locals 14
    .parameter "inState"

    .prologue
    .line 391
    const-string v11, "StateManager"

    const-string v12, "restoreFromState"

    invoke-static {v11, v12}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v11, "launch-gallery-on-top"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/miui/gallery/app/StateManager;->mLaunchGalleryOnTop:Z

    .line 393
    const-string v11, "activity-state"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v8

    .line 394
    .local v8, list:[Landroid/os/Parcelable;
    move-object v1, v8

    .local v1, arr$:[Landroid/os/Parcelable;
    array-length v7, v1

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v9, v1, v5

    .local v9, parcelable:Landroid/os/Parcelable;
    move-object v2, v9

    .line 395
    check-cast v2, Landroid/os/Bundle;

    .line 396
    .local v2, bundle:Landroid/os/Bundle;
    const-string v11, "class"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 399
    .local v6, klass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/miui/gallery/app/ActivityState;>;"
    const-string v11, "data"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 400
    .local v3, data:Landroid/os/Bundle;
    const-string v11, "bundle"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 404
    .local v10, state:Landroid/os/Bundle;
    :try_start_0
    const-string v11, "StateManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "restoreFromState "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .local v0, activityState:Lcom/miui/gallery/app/ActivityState;
    iget-object v11, p0, Lcom/miui/gallery/app/StateManager;->mContext:Lcom/miui/gallery/app/GalleryActivity;

    invoke-virtual {v0, v11, v3}, Lcom/miui/gallery/app/ActivityState;->initialize(Lcom/miui/gallery/app/GalleryActivity;Landroid/os/Bundle;)V

    .line 410
    invoke-virtual {v0, v3, v10}, Lcom/miui/gallery/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 411
    iget-object v11, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v12, Lcom/miui/gallery/app/StateManager$StateEntry;

    invoke-direct {v12, v3, v0}, Lcom/miui/gallery/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/miui/gallery/app/ActivityState;)V

    invoke-virtual {v11, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 406
    .end local v0           #activityState:Lcom/miui/gallery/app/ActivityState;
    :catch_0
    move-exception v4

    .line 407
    .local v4, e:Ljava/lang/Exception;
    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v11

    .line 413
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #data:Landroid/os/Bundle;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v6           #klass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/miui/gallery/app/ActivityState;>;"
    .end local v9           #parcelable:Landroid/os/Parcelable;
    .end local v10           #state:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/miui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/StateManager;->mIsResumed:Z

    .line 137
    iget-object v0, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/app/StateManager;->getTopState()Lcom/miui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/ActivityState;->resume()V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 10
    .parameter "outState"

    .prologue
    .line 416
    const-string v7, "StateManager"

    const-string v8, "saveState"

    invoke-static {v7, v8}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string v7, "launch-gallery-on-top"

    iget-boolean v8, p0, Lcom/miui/gallery/app/StateManager;->mLaunchGalleryOnTop:Z

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 419
    iget-object v7, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    new-array v5, v7, [Landroid/os/Parcelable;

    .line 420
    .local v5, list:[Landroid/os/Parcelable;
    const/4 v2, 0x0

    .line 421
    .local v2, i:I
    iget-object v7, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/app/StateManager$StateEntry;

    .line 422
    .local v1, entry:Lcom/miui/gallery/app/StateManager$StateEntry;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 423
    .local v0, bundle:Landroid/os/Bundle;
    const-string v7, "class"

    iget-object v8, v1, Lcom/miui/gallery/app/StateManager$StateEntry;->activityState:Lcom/miui/gallery/app/ActivityState;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 424
    const-string v7, "data"

    iget-object v8, v1, Lcom/miui/gallery/app/StateManager$StateEntry;->data:Landroid/os/Bundle;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 425
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 426
    .local v6, state:Landroid/os/Bundle;
    iget-object v7, v1, Lcom/miui/gallery/app/StateManager$StateEntry;->activityState:Lcom/miui/gallery/app/ActivityState;

    invoke-virtual {v7, v6}, Lcom/miui/gallery/app/ActivityState;->onSaveState(Landroid/os/Bundle;)V

    .line 427
    const-string v7, "bundle"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 428
    const-string v7, "StateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveState "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/miui/gallery/app/StateManager$StateEntry;->activityState:Lcom/miui/gallery/app/ActivityState;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    aput-object v0, v5, v2

    move v2, v3

    .line 430
    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 431
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #entry:Lcom/miui/gallery/app/StateManager$StateEntry;
    .end local v6           #state:Landroid/os/Bundle;
    :cond_0
    const-string v7, "activity-state"

    invoke-virtual {p1, v7, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 432
    return-void
.end method

.method public setLaunchGalleryOnTop(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/miui/gallery/app/StateManager;->mLaunchGalleryOnTop:Z

    .line 86
    return-void
.end method

.method public setTopThirdParty(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/miui/gallery/app/StateManager;->mTopIsThirdParty:Z

    .line 383
    return-void
.end method

.method public startState(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/miui/gallery/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/miui/gallery/app/ActivityState;>;"
    const-string v3, "StateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v1, 0x0

    .line 69
    .local v1, state:Lcom/miui/gallery/app/ActivityState;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #state:Lcom/miui/gallery/app/ActivityState;
    check-cast v1, Lcom/miui/gallery/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .restart local v1       #state:Lcom/miui/gallery/app/ActivityState;
    iget-object v3, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/miui/gallery/app/StateManager;->getTopState()Lcom/miui/gallery/app/ActivityState;

    move-result-object v2

    .line 75
    .local v2, top:Lcom/miui/gallery/app/ActivityState;
    iget-boolean v3, p0, Lcom/miui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/gallery/app/ActivityState;->onPause()V

    .line 77
    .end local v2           #top:Lcom/miui/gallery/app/ActivityState;
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/app/StateManager;->mContext:Lcom/miui/gallery/app/GalleryActivity;

    invoke-virtual {v1, v3, p2}, Lcom/miui/gallery/app/ActivityState;->initialize(Lcom/miui/gallery/app/GalleryActivity;Landroid/os/Bundle;)V

    .line 79
    iget-object v3, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v4, Lcom/miui/gallery/app/StateManager$StateEntry;

    invoke-direct {v4, p2, v1}, Lcom/miui/gallery/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/miui/gallery/app/ActivityState;)V

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Lcom/miui/gallery/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 81
    iget-boolean v3, p0, Lcom/miui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/miui/gallery/app/ActivityState;->resume()V

    .line 82
    :cond_1
    return-void

    .line 70
    .end local v1           #state:Lcom/miui/gallery/app/ActivityState;
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter "requestCode"
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/miui/gallery/app/ActivityState;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/miui/gallery/app/ActivityState;>;"
    const-string v3, "StateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startStateForResult "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v2, 0x0

    .line 93
    .local v2, state:Lcom/miui/gallery/app/ActivityState;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #state:Lcom/miui/gallery/app/ActivityState;
    check-cast v2, Lcom/miui/gallery/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .restart local v2       #state:Lcom/miui/gallery/app/ActivityState;
    iget-object v3, p0, Lcom/miui/gallery/app/StateManager;->mContext:Lcom/miui/gallery/app/GalleryActivity;

    invoke-virtual {v2, v3, p3}, Lcom/miui/gallery/app/ActivityState;->initialize(Lcom/miui/gallery/app/GalleryActivity;Landroid/os/Bundle;)V

    .line 98
    new-instance v3, Lcom/miui/gallery/app/ActivityState$ResultEntry;

    invoke-direct {v3}, Lcom/miui/gallery/app/ActivityState$ResultEntry;-><init>()V

    iput-object v3, v2, Lcom/miui/gallery/app/ActivityState;->mResult:Lcom/miui/gallery/app/ActivityState$ResultEntry;

    .line 99
    iget-object v3, v2, Lcom/miui/gallery/app/ActivityState;->mResult:Lcom/miui/gallery/app/ActivityState$ResultEntry;

    iput p2, v3, Lcom/miui/gallery/app/ActivityState$ResultEntry;->requestCode:I

    .line 101
    iget-object v3, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/miui/gallery/app/StateManager;->getTopState()Lcom/miui/gallery/app/ActivityState;

    move-result-object v0

    .line 103
    .local v0, as:Lcom/miui/gallery/app/ActivityState;
    iget-object v3, v2, Lcom/miui/gallery/app/ActivityState;->mResult:Lcom/miui/gallery/app/ActivityState$ResultEntry;

    iput-object v3, v0, Lcom/miui/gallery/app/ActivityState;->mReceivedResults:Lcom/miui/gallery/app/ActivityState$ResultEntry;

    .line 104
    iget-boolean v3, p0, Lcom/miui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/app/ActivityState;->onPause()V

    .line 109
    .end local v0           #as:Lcom/miui/gallery/app/ActivityState;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v4, Lcom/miui/gallery/app/StateManager$StateEntry;

    invoke-direct {v4, p3, v2}, Lcom/miui/gallery/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/miui/gallery/app/ActivityState;)V

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lcom/miui/gallery/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {v2}, Lcom/miui/gallery/app/ActivityState;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 113
    iget-boolean v3, p0, Lcom/miui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v3, :cond_1

    .line 114
    invoke-virtual {v2}, Lcom/miui/gallery/app/ActivityState;->resume()V

    .line 117
    :cond_1
    return-void

    .line 94
    .end local v2           #state:Lcom/miui/gallery/app/ActivityState;
    :catch_0
    move-exception v1

    .line 95
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 106
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #state:Lcom/miui/gallery/app/ActivityState;
    :cond_2
    iget-object v3, v2, Lcom/miui/gallery/app/ActivityState;->mResult:Lcom/miui/gallery/app/ActivityState$ResultEntry;

    iput-object v3, p0, Lcom/miui/gallery/app/StateManager;->mResult:Lcom/miui/gallery/app/ActivityState$ResultEntry;

    goto :goto_0
.end method

.method public tryDestroyCloudPages()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 333
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiui/provider/GalleryCloudUtils;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    invoke-static {}, Lcom/miui/gallery/app/Config$GlobalConfig;->get()Lcom/miui/gallery/app/Config$GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/app/Config$GlobalConfig;->onlyShowCloud()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 339
    iget-object v1, p0, Lcom/miui/gallery/app/StateManager;->mContext:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 340
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v1, "com.xiaomi"

    iget-object v5, p0, Lcom/miui/gallery/app/StateManager;->mContext:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v5, Landroid/app/Activity;

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v10

    .line 343
    .local v10, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    iget-object v1, p0, Lcom/miui/gallery/app/StateManager;->mContext:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 346
    .end local v0           #accountManager:Landroid/accounts/AccountManager;
    .end local v10           #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :cond_2
    const-string v1, "StateManager"

    const-string v2, "destroy cloud pages"

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v11, 0x0

    .line 351
    .local v11, hasCloudPage:Z
    iget-object v1, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/app/StateManager$StateEntry;

    .line 352
    .local v9, entry:Lcom/miui/gallery/app/StateManager$StateEntry;
    iget-object v1, v9, Lcom/miui/gallery/app/StateManager$StateEntry;->activityState:Lcom/miui/gallery/app/ActivityState;

    instance-of v1, v1, Lcom/miui/gallery/cloud/CloudAlbumSetPage;

    if-eqz v1, :cond_3

    .line 353
    const/4 v11, 0x1

    .line 359
    .end local v9           #entry:Lcom/miui/gallery/app/StateManager$StateEntry;
    :cond_4
    if-eqz v11, :cond_0

    .line 360
    :cond_5
    iget-object v1, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 361
    iget-object v1, p0, Lcom/miui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/app/StateManager$StateEntry;

    iget-object v8, v1, Lcom/miui/gallery/app/StateManager$StateEntry;->activityState:Lcom/miui/gallery/app/ActivityState;

    .line 362
    .local v8, activityState:Lcom/miui/gallery/app/ActivityState;
    invoke-virtual {v8}, Lcom/miui/gallery/app/ActivityState;->onDestroy()V

    .line 364
    instance-of v1, v8, Lcom/miui/gallery/cloud/CloudAlbumSetPage;

    if-eqz v1, :cond_5

    .line 368
    .end local v8           #activityState:Lcom/miui/gallery/app/ActivityState;
    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gallery/app/StateManager;->mTopIsThirdParty:Z

    goto :goto_0
.end method
