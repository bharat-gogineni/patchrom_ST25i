.class Lcom/android/mms/ui/MessageEditableActivityBase$10;
.super Ljava/lang/Object;
.source "MessageEditableActivityBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageEditableActivityBase;->checkAndSendMessage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

.field final synthetic val$bCheckEcmMode:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageEditableActivityBase;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 762
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$10;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iput-boolean p2, p0, Lcom/android/mms/ui/MessageEditableActivityBase$10;->val$bCheckEcmMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$10;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$10;->val$bCheckEcmMode:Z

    #calls: Lcom/android/mms/ui/MessageEditableActivityBase;->sendMessage(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->access$200(Lcom/android/mms/ui/MessageEditableActivityBase;Z)V

    .line 768
    return-void
.end method
