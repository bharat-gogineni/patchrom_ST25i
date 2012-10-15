.class Lcom/android/phone/MiuiEditFdnContactScreen$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MiuiEditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiEditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiEditFdnContactScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/MiuiEditFdnContactScreen;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/phone/MiuiEditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    .line 364
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 365
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 389
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    #calls: Lcom/android/phone/MiuiEditFdnContactScreen;->dismissProgress()V
    invoke-static {v0}, Lcom/android/phone/MiuiEditFdnContactScreen;->access$700(Lcom/android/phone/MiuiEditFdnContactScreen;)V

    .line 390
    iget-object v2, p0, Lcom/android/phone/MiuiEditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    sget-object v3, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;->Delete:Lcom/android/phone/MiuiEditFdnContactScreen$Actions;

    if-lez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/android/phone/MiuiEditFdnContactScreen;->handleResult(Lcom/android/phone/MiuiEditFdnContactScreen$Actions;ZZ)V
    invoke-static {v2, v3, v0, v1}, Lcom/android/phone/MiuiEditFdnContactScreen;->access$800(Lcom/android/phone/MiuiEditFdnContactScreen;Lcom/android/phone/MiuiEditFdnContactScreen$Actions;ZZ)V

    .line 391
    return-void

    :cond_0
    move v0, v1

    .line 390
    goto :goto_0
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 375
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    #calls: Lcom/android/phone/MiuiEditFdnContactScreen;->dismissProgress()V
    invoke-static {v0}, Lcom/android/phone/MiuiEditFdnContactScreen;->access$700(Lcom/android/phone/MiuiEditFdnContactScreen;)V

    .line 376
    iget-object v2, p0, Lcom/android/phone/MiuiEditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    sget-object v3, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;->Insert:Lcom/android/phone/MiuiEditFdnContactScreen$Actions;

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/android/phone/MiuiEditFdnContactScreen;->handleResult(Lcom/android/phone/MiuiEditFdnContactScreen$Actions;ZZ)V
    invoke-static {v2, v3, v0, v1}, Lcom/android/phone/MiuiEditFdnContactScreen;->access$800(Lcom/android/phone/MiuiEditFdnContactScreen;Lcom/android/phone/MiuiEditFdnContactScreen$Actions;ZZ)V

    .line 377
    return-void

    :cond_0
    move v0, v1

    .line 376
    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 369
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 382
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    #calls: Lcom/android/phone/MiuiEditFdnContactScreen;->dismissProgress()V
    invoke-static {v0}, Lcom/android/phone/MiuiEditFdnContactScreen;->access$700(Lcom/android/phone/MiuiEditFdnContactScreen;)V

    .line 383
    iget-object v2, p0, Lcom/android/phone/MiuiEditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    sget-object v3, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;->Update:Lcom/android/phone/MiuiEditFdnContactScreen$Actions;

    if-lez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/android/phone/MiuiEditFdnContactScreen;->handleResult(Lcom/android/phone/MiuiEditFdnContactScreen$Actions;ZZ)V
    invoke-static {v2, v3, v0, v1}, Lcom/android/phone/MiuiEditFdnContactScreen;->access$800(Lcom/android/phone/MiuiEditFdnContactScreen;Lcom/android/phone/MiuiEditFdnContactScreen$Actions;ZZ)V

    .line 384
    return-void

    :cond_0
    move v0, v1

    .line 383
    goto :goto_0
.end method
