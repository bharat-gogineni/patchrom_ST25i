.class Lcom/android/phone/MiuiSimContacts$4;
.super Ljava/lang/Object;
.source "MiuiSimContacts.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiSimContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiSimContacts;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiSimContacts;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/phone/MiuiSimContacts$4;->this$0:Lcom/android/phone/MiuiSimContacts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 251
    const-string v0, "ADNList"

    const-string v1, "SimContactService connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    check-cast p2, Lcom/android/phone/MiuiSimContactService$MyBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/android/phone/MiuiSimContactService$MyBinder;->getService()Lcom/android/phone/MiuiSimContactService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MiuiSimContacts;->access$002(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContactService;

    .line 253
    invoke-static {}, Lcom/android/phone/MiuiSimContacts;->access$000()Lcom/android/phone/MiuiSimContactService;

    move-result-object v0

    new-instance v1, Lcom/android/phone/MiuiSimContacts$4$1;

    invoke-direct {v1, p0}, Lcom/android/phone/MiuiSimContacts$4$1;-><init>(Lcom/android/phone/MiuiSimContacts$4;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiSimContactService;->setProgressListener(Lcom/android/phone/MiuiSimContactService$ProgressListener;)V

    .line 310
    invoke-static {}, Lcom/android/phone/MiuiSimContacts;->access$000()Lcom/android/phone/MiuiSimContactService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/MiuiSimContactService;->switchToForeground()V

    .line 311
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/MiuiSimContacts;->access$002(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContactService;

    .line 315
    return-void
.end method
