.class Lcom/android/mms/ui/MessageListItem$16;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$info:Lcom/android/mms/ui/MessageListItem$UriInfo;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$16;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$16;->val$info:Lcom/android/mms/ui/MessageListItem$UriInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$16;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$16;->val$info:Lcom/android/mms/ui/MessageListItem$UriInfo;

    #calls: Lcom/android/mms/ui/MessageListItem;->performUriOperation(Lcom/android/mms/ui/MessageListItem$UriInfo;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageListItem;->access$1400(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    .line 1129
    return-void
.end method
