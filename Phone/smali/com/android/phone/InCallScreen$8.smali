.class Lcom/android/phone/InCallScreen$8;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$c:Lcom/android/internal/telephony/Connection;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2240
    iput-object p1, p0, Lcom/android/phone/InCallScreen$8;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$8;->val$c:Lcom/android/internal/telephony/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 2243
    iget-object v0, p0, Lcom/android/phone/InCallScreen$8;->val$c:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    .line 2244
    iget-object v0, p0, Lcom/android/phone/InCallScreen$8;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 2245
    return-void
.end method
