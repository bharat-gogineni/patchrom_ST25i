.class Lcom/android/mms/data/Contact$ContactsCache$1;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;ZZZ)Lcom/android/mms/data/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/Contact$ContactsCache;

.field final synthetic val$c:Lcom/android/mms/data/Contact;


# direct methods
.method constructor <init>(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 682
    iput-object p1, p0, Lcom/android/mms/data/Contact$ContactsCache$1;->this$0:Lcom/android/mms/data/Contact$ContactsCache;

    iput-object p2, p0, Lcom/android/mms/data/Contact$ContactsCache$1;->val$c:Lcom/android/mms/data/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$1;->this$0:Lcom/android/mms/data/Contact$ContactsCache;

    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache$1;->val$c:Lcom/android/mms/data/Contact;

    #calls: Lcom/android/mms/data/Contact$ContactsCache;->updateContact(Lcom/android/mms/data/Contact;)V
    invoke-static {v0, v1}, Lcom/android/mms/data/Contact$ContactsCache;->access$500(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;)V

    .line 685
    return-void
.end method
