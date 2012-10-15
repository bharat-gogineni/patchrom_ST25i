.class Lcom/android/mms/ui/NewMessageActivity$SendIgnoreInvalidRecipientListener;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NewMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendIgnoreInvalidRecipientListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewMessageActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/NewMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/NewMessageActivity;Lcom/android/mms/ui/NewMessageActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1007
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NewMessageActivity$SendIgnoreInvalidRecipientListener;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/NewMessageActivity;->checkAndSendMessage(Z)V

    .line 1010
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1011
    return-void
.end method
