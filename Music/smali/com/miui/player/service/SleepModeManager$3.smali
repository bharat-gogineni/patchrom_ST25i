.class final Lcom/miui/player/service/SleepModeManager$3;
.super Ljava/lang/Object;
.source "SleepModeManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/service/SleepModeManager;->toggleSleepMode(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$seekbar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Landroid/widget/SeekBar;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/player/service/SleepModeManager$3;->val$seekbar:Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/miui/player/service/SleepModeManager$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v11, 0x0

    .line 50
    iget-object v1, p0, Lcom/miui/player/service/SleepModeManager$3;->val$seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v8, v1, 0x1

    .line 52
    .local v8, progress:I
    iget-object v1, p0, Lcom/miui/player/service/SleepModeManager$3;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v8}, Lcom/miui/player/service/SleepModeManager;->setSelectTime(Landroid/content/Context;I)V

    .line 54
    mul-int/lit8 v1, v8, 0x3c

    mul-int/lit16 v10, v1, 0x3e8

    .line 55
    .local v10, updateTime:I
    new-instance v7, Landroid/content/Intent;

    const-string v1, "com.miui.player.QUIT"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v7, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/player/service/SleepModeManager$3;->val$activity:Landroid/app/Activity;

    const/high16 v2, 0x800

    invoke-static {v1, v11, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 58
    .local v6, sender:Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/miui/player/service/SleepModeManager$3;->val$activity:Landroid/app/Activity;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 60
    .local v0, alarmManager:Landroid/app/AlarmManager;
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, v10

    add-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 63
    iget-object v1, p0, Lcom/miui/player/service/SleepModeManager$3;->val$activity:Landroid/app/Activity;

    const v2, 0x7f09000b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 64
    .local v9, quitWarning:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/player/service/SleepModeManager$3;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v9, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 66
    return-void
.end method
