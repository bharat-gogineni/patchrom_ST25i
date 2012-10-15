.class Lcom/android/phone/MiuiBluetoothHandsfree$1;
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
    .line 45
    iput-object p1, p0, Lcom/android/phone/MiuiBluetoothHandsfree$1;->this$0:Lcom/android/phone/MiuiBluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 2
    .parameter "args"

    .prologue
    .line 50
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+XAPL=iPhone,1"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
