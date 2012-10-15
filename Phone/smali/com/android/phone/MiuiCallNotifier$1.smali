.class Lcom/android/phone/MiuiCallNotifier$1;
.super Ljava/lang/Object;
.source "MiuiCallNotifier.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiCallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiCallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiCallNotifier;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 95
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const/4 v3, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide/high16 v7, 0x401a

    const-wide/high16 v5, -0x3fde

    .line 99
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    iget-object v1, v1, Lcom/android/phone/MiuiCallNotifier;->mRinger:Lcom/android/phone/Ringer;

    check-cast v1, Lcom/android/phone/MiuiRinger;

    invoke-virtual {v1}, Lcom/android/phone/MiuiRinger;->isNowVibrating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$104(Lcom/android/phone/MiuiCallNotifier;)I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #getter for: Lcom/android/phone/MiuiCallNotifier;->mSensorCount:I
    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$100(Lcom/android/phone/MiuiCallNotifier;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 105
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    #setter for: Lcom/android/phone/MiuiCallNotifier;->mStartZ:F
    invoke-static {v1, v2}, Lcom/android/phone/MiuiCallNotifier;->access$202(Lcom/android/phone/MiuiCallNotifier;F)F

    .line 107
    :cond_2
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v1, v3

    .line 108
    .local v0, z:F
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #getter for: Lcom/android/phone/MiuiCallNotifier;->mTurnoverMuteEnable:Z
    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$300(Lcom/android/phone/MiuiCallNotifier;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #getter for: Lcom/android/phone/MiuiCallNotifier;->mTurnoverTriggered:Z
    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$400(Lcom/android/phone/MiuiCallNotifier;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #getter for: Lcom/android/phone/MiuiCallNotifier;->mStartZ:F
    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$200(Lcom/android/phone/MiuiCallNotifier;)F

    move-result v1

    float-to-double v1, v1

    cmpl-double v1, v1, v7

    if-lez v1, :cond_5

    float-to-double v1, v0

    cmpg-double v1, v1, v5

    if-gez v1, :cond_5

    .line 115
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$504(Lcom/android/phone/MiuiCallNotifier;)I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    .line 116
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/MiuiCallNotifier;->silenceRinger()V

    .line 117
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #setter for: Lcom/android/phone/MiuiCallNotifier;->mTurnoverTriggered:Z
    invoke-static {v1, v10}, Lcom/android/phone/MiuiCallNotifier;->access$402(Lcom/android/phone/MiuiCallNotifier;Z)Z

    .line 122
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #getter for: Lcom/android/phone/MiuiCallNotifier;->mHandonRingerEnable:Z
    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$600(Lcom/android/phone/MiuiCallNotifier;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #getter for: Lcom/android/phone/MiuiCallNotifier;->mHandonTriggered:Z
    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$700(Lcom/android/phone/MiuiCallNotifier;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #getter for: Lcom/android/phone/MiuiCallNotifier;->mTurnoverTriggered:Z
    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$400(Lcom/android/phone/MiuiCallNotifier;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #getter for: Lcom/android/phone/MiuiCallNotifier;->mStartZ:F
    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$200(Lcom/android/phone/MiuiCallNotifier;)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4021

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #getter for: Lcom/android/phone/MiuiCallNotifier;->mStartZ:F
    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$200(Lcom/android/phone/MiuiCallNotifier;)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v1, v5

    if-gez v1, :cond_6

    :cond_4
    float-to-double v1, v0

    const-wide/high16 v3, -0x3fe6

    cmpl-double v1, v1, v3

    if-lez v1, :cond_6

    float-to-double v1, v0

    cmpg-double v1, v1, v7

    if-gez v1, :cond_6

    .line 130
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$804(Lcom/android/phone/MiuiCallNotifier;)I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #calls: Lcom/android/phone/MiuiCallNotifier;->decrescendoRingerVolume()V
    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$900(Lcom/android/phone/MiuiCallNotifier;)V

    .line 132
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #setter for: Lcom/android/phone/MiuiCallNotifier;->mHandonTriggered:Z
    invoke-static {v1, v10}, Lcom/android/phone/MiuiCallNotifier;->access$702(Lcom/android/phone/MiuiCallNotifier;Z)Z

    goto/16 :goto_0

    .line 120
    :cond_5
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #setter for: Lcom/android/phone/MiuiCallNotifier;->mTurnoverTiggeringCount:I
    invoke-static {v1, v9}, Lcom/android/phone/MiuiCallNotifier;->access$502(Lcom/android/phone/MiuiCallNotifier;I)I

    goto :goto_1

    .line 135
    :cond_6
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$1;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #setter for: Lcom/android/phone/MiuiCallNotifier;->mHandonTriggeringCount:I
    invoke-static {v1, v9}, Lcom/android/phone/MiuiCallNotifier;->access$802(Lcom/android/phone/MiuiCallNotifier;I)I

    goto/16 :goto_0
.end method
