.class Lcom/android/mms/ui/MessageListItem$14;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->performUriOperation(Lcom/android/mms/ui/MessageListItem$UriInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$info:Lcom/android/mms/ui/MessageListItem$UriInfo;

.field final synthetic val$insert:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;Lcom/android/mms/ui/MessageListItem$UriInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 986
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$14;->val$insert:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem$14;->val$info:Lcom/android/mms/ui/MessageListItem$UriInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 989
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 990
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 991
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$14;->val$insert:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$14;->val$info:Lcom/android/mms/ui/MessageListItem$UriInfo;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListItem$UriInfo;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 992
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    #calls: Lcom/android/mms/ui/MessageListItem;->startIntent(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageListItem;->access$900(Lcom/android/mms/ui/MessageListItem;Landroid/content/Intent;)V

    .line 993
    return-void
.end method
