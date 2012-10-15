.class public Lcom/miui/player/service/SleepModeManager;
.super Ljava/lang/Object;
.source "SleepModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/service/SleepModeManager$OnSeekBarSleepModeListener;
    }
.end annotation


# static fields
.field private static sSleepModeTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/miui/player/service/SleepModeManager;->sSleepModeTime:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method public static deleteTimer(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 98
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.miui.player.QUIT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x800

    invoke-static {p0, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 101
    .local v2, sender:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 102
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 103
    sput v4, Lcom/miui/player/service/SleepModeManager;->sSleepModeTime:I

    .line 104
    return-void
.end method

.method public static isSleepModeEnabled()Z
    .locals 1

    .prologue
    .line 107
    sget v0, Lcom/miui/player/service/SleepModeManager;->sSleepModeTime:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSelectTime(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "progress"

    .prologue
    .line 93
    sput p1, Lcom/miui/player/service/SleepModeManager;->sSleepModeTime:I

    .line 94
    return-void
.end method

.method public static toggleSleepMode(Landroid/app/Activity;)V
    .locals 9
    .parameter "activity"

    .prologue
    const/4 v8, 0x0

    .line 32
    sget v6, Lcom/miui/player/service/SleepModeManager;->sSleepModeTime:I

    if-lez v6, :cond_0

    .line 33
    invoke-static {p0, v8}, Lcom/miui/player/service/SleepModeManager;->setSelectTime(Landroid/content/Context;I)V

    .line 34
    invoke-static {p0}, Lcom/miui/player/service/SleepModeManager;->deleteTimer(Landroid/content/Context;)V

    .line 35
    const v6, 0x7f090009

    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 90
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 39
    .local v1, mInflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030038

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 40
    .local v5, view:Landroid/view/View;
    const v6, 0x7f0c0056

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 41
    .local v3, seekbar:Landroid/widget/SeekBar;
    const/16 v6, 0x1d

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 42
    const v6, 0x7f0c009f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 43
    .local v2, popupText:Landroid/widget/TextView;
    new-instance v0, Lcom/miui/player/service/SleepModeManager$OnSeekBarSleepModeListener;

    invoke-direct {v0, v3, v2}, Lcom/miui/player/service/SleepModeManager$OnSeekBarSleepModeListener;-><init>(Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    .line 45
    .local v0, listener:Lcom/miui/player/service/SleepModeManager$OnSeekBarSleepModeListener;
    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 47
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f09000a

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x7f09

    new-instance v8, Lcom/miui/player/service/SleepModeManager$3;

    invoke-direct {v8, v3, p0}, Lcom/miui/player/service/SleepModeManager$3;-><init>(Landroid/widget/SeekBar;Landroid/app/Activity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f090001

    new-instance v8, Lcom/miui/player/service/SleepModeManager$2;

    invoke-direct {v8, p0}, Lcom/miui/player/service/SleepModeManager$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/miui/player/service/SleepModeManager$1;

    invoke-direct {v7, p0}, Lcom/miui/player/service/SleepModeManager$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 81
    .local v4, timeSelector:Landroid/app/Dialog;
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 82
    new-instance v6, Lcom/miui/player/service/SleepModeManager$4;

    invoke-direct {v6, v0}, Lcom/miui/player/service/SleepModeManager$4;-><init>(Lcom/miui/player/service/SleepModeManager$OnSeekBarSleepModeListener;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
