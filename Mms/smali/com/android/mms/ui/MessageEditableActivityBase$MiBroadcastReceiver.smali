.class Lcom/android/mms/ui/MessageEditableActivityBase$MiBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessageEditableActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageEditableActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageEditableActivityBase;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 1794
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$MiBroadcastReceiver;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MessageEditableActivityBase;Lcom/android/mms/ui/MessageEditableActivityBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1794
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase$MiBroadcastReceiver;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$MiBroadcastReceiver;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onPushStatusChanged()V

    .line 1799
    return-void
.end method
