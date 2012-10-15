.class Lcom/android/mms/transaction/MmsSystemEventReceiver$1;
.super Landroid/database/ContentObserver;
.source "MmsSystemEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MmsSystemEventReceiver;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/MmsSystemEventReceiver;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/MmsSystemEventReceiver;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$1;->this$0:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$1;->this$0:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-virtual {v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->updateMmsAvailability()V

    .line 109
    return-void
.end method
