.class Lcom/android/phone/InCallScreen$10;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->handleMissingVoiceMailNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2458
    iput-object p1, p0, Lcom/android/phone/InCallScreen$10;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$10;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 2461
    iget-object v0, p0, Lcom/android/phone/InCallScreen$10;->val$msg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2462
    iget-object v0, p0, Lcom/android/phone/InCallScreen$10;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 2463
    return-void
.end method
