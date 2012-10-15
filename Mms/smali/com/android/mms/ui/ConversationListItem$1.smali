.class Lcom/android/mms/ui/ConversationListItem$1;
.super Ljava/lang/Object;
.source "ConversationListItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListItem;->onUpdate(Lcom/android/mms/data/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListItem$1;->this$0:Lcom/android/mms/ui/ConversationListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem$1;->this$0:Lcom/android/mms/ui/ConversationListItem;

    #calls: Lcom/android/mms/ui/ConversationListItem;->updateFromView()V
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListItem;->access$000(Lcom/android/mms/ui/ConversationListItem;)V

    .line 193
    return-void
.end method
