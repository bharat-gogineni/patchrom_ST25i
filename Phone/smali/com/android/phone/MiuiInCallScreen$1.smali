.class Lcom/android/phone/MiuiInCallScreen$1;
.super Ljava/lang/Object;
.source "MiuiInCallScreen.java"

# interfaces
.implements Lcom/android/phone/MiuiStorageMonitor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiInCallScreen;->startCallRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiInCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiInCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/phone/MiuiInCallScreen$1;->this$0:Lcom/android/phone/MiuiInCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/phone/MiuiInCallScreen$1;->this$0:Lcom/android/phone/MiuiInCallScreen;

    #calls: Lcom/android/phone/MiuiInCallScreen;->stopCallRecord(I)V
    invoke-static {v0, p1}, Lcom/android/phone/MiuiInCallScreen;->access$100(Lcom/android/phone/MiuiInCallScreen;I)V

    .line 352
    return-void
.end method
