.class public abstract Lcom/lidroid/systemui/quickpanel/StateTracker;
.super Ljava/lang/Object;
.source "StateTracker.java"


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mInTransition:Z

    iput-object v1, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mActualState:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iput-boolean v0, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/lidroid/systemui/quickpanel/StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .locals 1

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "StateTracker"

    iget-boolean v0, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mInTransition:Z

    packed-switch p2, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mInTransition:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_1

    const-string v1, "StateTracker"

    const-string v1, "processing deferred state change"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "StateTracker"

    const-string v1, "... but intended state matches, so no changes."

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    iput-boolean v3, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    :cond_1
    return-void

    :pswitch_0
    iput-boolean v3, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mInTransition:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_1
    iput-boolean v3, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mInTransition:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_2
    iput-boolean v4, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mInTransition:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_3
    iput-boolean v4, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mInTransition:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mInTransition:Z

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/lidroid/systemui/quickpanel/StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, p1}, Lcom/lidroid/systemui/quickpanel/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-boolean v2, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mInTransition:Z

    if-eqz v2, :cond_2

    iput-boolean v3, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    :goto_1
    return-void

    :pswitch_1
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v3

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_2

    :cond_2
    iput-boolean v3, p0, Lcom/lidroid/systemui/quickpanel/StateTracker;->mInTransition:Z

    invoke-virtual {p0, p1, v1}, Lcom/lidroid/systemui/quickpanel/StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
