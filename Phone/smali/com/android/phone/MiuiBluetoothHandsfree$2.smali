.class Lcom/android/phone/MiuiBluetoothHandsfree$2;
.super Landroid/bluetooth/AtCommandHandler;
.source "MiuiBluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiBluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiBluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiBluetoothHandsfree;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/phone/MiuiBluetoothHandsfree$2;->this$0:Lcom/android/phone/MiuiBluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 4
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 60
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 61
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 65
    iget-object v1, p0, Lcom/android/phone/MiuiBluetoothHandsfree$2;->this$0:Lcom/android/phone/MiuiBluetoothHandsfree;

    #getter for: Lcom/android/phone/MiuiBluetoothHandsfree;->mNotificationMgr:Lcom/android/phone/MiuiNotificationMgr;
    invoke-static {v1}, Lcom/android/phone/MiuiBluetoothHandsfree;->access$000(Lcom/android/phone/MiuiBluetoothHandsfree;)Lcom/android/phone/MiuiNotificationMgr;

    move-result-object v2

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x2

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/phone/MiuiNotificationMgr;->notifyBluetoothBattery(I)V

    .line 68
    :cond_0
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v1

    .line 60
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
