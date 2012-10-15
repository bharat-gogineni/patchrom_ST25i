.class Lcom/android/mms/ui/MessageEditableActivityBase$17;
.super Ljava/lang/Object;
.source "MessageEditableActivityBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageEditableActivityBase;->onMxIdOffline(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

.field final synthetic val$address:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageEditableActivityBase;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 994
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$17;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iput-object p2, p0, Lcom/android/mms/ui/MessageEditableActivityBase$17;->val$address:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 997
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase$17;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 998
    .local v1, recipients:Lcom/android/mms/data/ContactList;
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase$17;->val$address:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 999
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1, v0}, Lcom/android/mms/data/ContactList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1000
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase$17;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    #getter for: Lcom/android/mms/ui/MessageEditableActivityBase;->mOfflinePhones:Ljava/util/Set;
    invoke-static {v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->access$1100(Lcom/android/mms/ui/MessageEditableActivityBase;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase$17;->val$address:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1001
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase$17;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    #calls: Lcom/android/mms/ui/MessageEditableActivityBase;->switchMsgType()V
    invoke-static {v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->access$600(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    .line 1003
    :cond_0
    return-void
.end method
