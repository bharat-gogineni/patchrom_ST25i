.class Lcom/android/mms/ui/SearchActivity$3$1$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivity$3$1;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/ui/SearchActivity$3$1;

.field final synthetic val$rowid:J

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity$3$1;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$3$1$1;->this$2:Lcom/android/mms/ui/SearchActivity$3$1;

    iput-wide p2, p0, Lcom/android/mms/ui/SearchActivity$3$1$1;->val$threadId:J

    iput-wide p4, p0, Lcom/android/mms/ui/SearchActivity$3$1$1;->val$rowid:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 330
    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$3$1$1;->this$2:Lcom/android/mms/ui/SearchActivity$3$1;

    iget-object v1, v1, Lcom/android/mms/ui/SearchActivity$3$1;->this$1:Lcom/android/mms/ui/SearchActivity$3;

    iget-object v1, v1, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-wide v2, p0, Lcom/android/mms/ui/SearchActivity$3$1$1;->val$threadId:J

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 331
    .local v0, onClickIntent:Landroid/content/Intent;
    const-string v1, "highlight"

    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity$3$1$1;->this$2:Lcom/android/mms/ui/SearchActivity$3$1;

    iget-object v2, v2, Lcom/android/mms/ui/SearchActivity$3$1;->this$1:Lcom/android/mms/ui/SearchActivity$3;

    iget-object v2, v2, Lcom/android/mms/ui/SearchActivity$3;->val$searchString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v1, "select_id"

    iget-wide v2, p0, Lcom/android/mms/ui/SearchActivity$3$1$1;->val$rowid:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 333
    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$3$1$1;->this$2:Lcom/android/mms/ui/SearchActivity$3$1;

    iget-object v1, v1, Lcom/android/mms/ui/SearchActivity$3$1;->this$1:Lcom/android/mms/ui/SearchActivity$3;

    iget-object v1, v1, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->route(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 334
    return-void
.end method
