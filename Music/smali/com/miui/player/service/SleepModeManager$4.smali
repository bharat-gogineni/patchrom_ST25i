.class final Lcom/miui/player/service/SleepModeManager$4;
.super Ljava/lang/Object;
.source "SleepModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/service/SleepModeManager;->toggleSleepMode(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/miui/player/service/SleepModeManager$OnSeekBarSleepModeListener;


# direct methods
.method constructor <init>(Lcom/miui/player/service/SleepModeManager$OnSeekBarSleepModeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/miui/player/service/SleepModeManager$4;->val$listener:Lcom/miui/player/service/SleepModeManager$OnSeekBarSleepModeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/miui/player/service/SleepModeManager$4;->val$listener:Lcom/miui/player/service/SleepModeManager$OnSeekBarSleepModeListener;

    invoke-virtual {v0}, Lcom/miui/player/service/SleepModeManager$OnSeekBarSleepModeListener;->refreshPopUpTime()V

    .line 87
    return-void
.end method
