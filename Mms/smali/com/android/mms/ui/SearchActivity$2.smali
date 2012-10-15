.class Lcom/android/mms/ui/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchActivity;

.field final synthetic val$searchString:Ljava/lang/String;

.field final synthetic val$u:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SearchActivity$2;->val$u:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/ui/SearchActivity$2;->val$searchString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 249
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$2;->val$u:Landroid/net/Uri;

    const-string v8, "source_id"

    invoke-virtual {v7, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 250
    .local v1, sourceId:J
    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$2;->val$u:Landroid/net/Uri;

    const-string v8, "which_table"

    invoke-virtual {v7, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 251
    .local v5, whichTable:J
    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    #calls: Lcom/android/mms/ui/SearchActivity;->getThreadId(JJ)J
    invoke-static {v7, v1, v2, v5, v6}, Lcom/android/mms/ui/SearchActivity;->access$100(Lcom/android/mms/ui/SearchActivity;JJ)J

    move-result-wide v3

    .line 253
    .local v3, threadId:J
    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-static {v7, v3, v4}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 254
    .local v0, onClickIntent:Landroid/content/Intent;
    const-string v7, "highlight"

    iget-object v8, p0, Lcom/android/mms/ui/SearchActivity$2;->val$searchString:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v7, "select_id"

    invoke-virtual {v0, v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 256
    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-static {v7, v0}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->route(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 257
    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v7}, Lcom/android/mms/ui/SearchActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v0           #onClickIntent:Landroid/content/Intent;
    .end local v1           #sourceId:J
    .end local v3           #threadId:J
    .end local v5           #whichTable:J
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v7

    goto :goto_0
.end method
