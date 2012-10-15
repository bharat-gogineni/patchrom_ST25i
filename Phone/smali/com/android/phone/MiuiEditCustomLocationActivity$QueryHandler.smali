.class Lcom/android/phone/MiuiEditCustomLocationActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MiuiEditCustomLocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiEditCustomLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiEditCustomLocationActivity;


# direct methods
.method public constructor <init>(Lcom/android/phone/MiuiEditCustomLocationActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/phone/MiuiEditCustomLocationActivity$QueryHandler;->this$0:Lcom/android/phone/MiuiEditCustomLocationActivity;

    .line 218
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 219
    return-void
.end method


# virtual methods
.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 223
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    .line 224
    iget-object v0, p0, Lcom/android/phone/MiuiEditCustomLocationActivity$QueryHandler;->this$0:Lcom/android/phone/MiuiEditCustomLocationActivity;

    invoke-virtual {v0}, Lcom/android/phone/MiuiEditCustomLocationActivity;->finish()V

    .line 225
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 229
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onUpdateComplete(ILjava/lang/Object;I)V

    .line 230
    iget-object v0, p0, Lcom/android/phone/MiuiEditCustomLocationActivity$QueryHandler;->this$0:Lcom/android/phone/MiuiEditCustomLocationActivity;

    invoke-virtual {v0}, Lcom/android/phone/MiuiEditCustomLocationActivity;->finish()V

    .line 231
    return-void
.end method
