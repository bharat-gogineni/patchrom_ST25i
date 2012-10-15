.class Lcom/android/phone/MiuiCallNotifier$2;
.super Ljava/lang/Object;
.source "MiuiCallNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


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
    .line 763
    iput-object p1, p0, Lcom/android/phone/MiuiCallNotifier$2;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier$2;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #calls: Lcom/android/phone/MiuiCallNotifier;->processTelephonyFirewall(Lcom/android/internal/telephony/CallerInfo;)Z
    invoke-static {v0, p3}, Lcom/android/phone/MiuiCallNotifier;->access$1100(Lcom/android/phone/MiuiCallNotifier;Lcom/android/internal/telephony/CallerInfo;)Z

    .line 768
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier$2;->this$0:Lcom/android/phone/MiuiCallNotifier;

    iget-object v0, v0, Lcom/android/phone/MiuiCallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier$2;->this$0:Lcom/android/phone/MiuiCallNotifier;

    new-instance v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier$2;->this$0:Lcom/android/phone/MiuiCallNotifier;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v1, v0, Lcom/android/phone/MiuiCallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 770
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier$2;->this$0:Lcom/android/phone/MiuiCallNotifier;

    iget-object v0, v0, Lcom/android/phone/MiuiCallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier$2;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/MiuiCallNotifier;->showIncomingCall()V

    .line 776
    return-void
.end method
