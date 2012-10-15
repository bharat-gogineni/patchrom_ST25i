.class Lcom/android/mms/ui/NewMessageActivity$7;
.super Landroid/os/AsyncTask;
.source "NewMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessageActivity;->initRecentList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$7;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 364
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/NewMessageActivity$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .parameter "params"

    .prologue
    const/4 v12, 0x0

    .line 367
    const/4 v7, 0x0

    .line 369
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$7;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/NewMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/ui/NewMessageActivity;->access$900()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "number"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 374
    :goto_0
    if-nez v7, :cond_0

    .line 399
    :goto_1
    return-object v12

    .line 371
    :catch_0
    move-exception v8

    .line 372
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "NewMessageActivity"

    const-string v1, "recent contact content provider not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 378
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    const/4 v0, -0x1

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 379
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v10

    .line 380
    .local v10, persons:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$7;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecentContacts:Lcom/android/mms/data/ContactList;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$1000(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 381
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 382
    .local v9, number:Ljava/lang/String;
    invoke-static {v9}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v11

    .line 383
    .local v11, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v11}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v11}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v0

    if-nez v0, :cond_3

    .line 384
    :cond_1
    invoke-virtual {v11}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v11}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v11}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isSmsPrefix()Z

    move-result v0

    if-nez v0, :cond_2

    .line 386
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNumberWithoutPrefix(Z)Ljava/lang/String;

    move-result-object v9

    .line 388
    :cond_2
    const/4 v0, 0x1

    invoke-static {v9, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    .line 389
    .local v6, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getPersonId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 390
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$7;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecentContacts:Lcom/android/mms/data/ContactList;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$1000(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/mms/data/ContactList;->add(Lcom/android/mms/data/Contact;)Z

    .line 391
    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getPersonId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 394
    .end local v6           #c:Lcom/android/mms/data/Contact;
    :cond_3
    invoke-virtual {v11}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 397
    .end local v9           #number:Ljava/lang/String;
    .end local v10           #persons:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v11           #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v10       #persons:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 364
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/NewMessageActivity$7;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 8
    .parameter "result"

    .prologue
    const/4 v7, 0x0

    .line 404
    iget-object v4, p0, Lcom/android/mms/ui/NewMessageActivity$7;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecentContacts:Lcom/android/mms/data/ContactList;
    invoke-static {v4}, Lcom/android/mms/ui/NewMessageActivity;->access$1000(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 405
    .local v0, c:Lcom/android/mms/data/Contact;
    iget-object v4, p0, Lcom/android/mms/ui/NewMessageActivity$7;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/NewMessageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04003d

    iget-object v6, p0, Lcom/android/mms/ui/NewMessageActivity$7;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecentContactGrid:Lcom/android/mms/ui/StaticGridView;
    invoke-static {v6}, Lcom/android/mms/ui/NewMessageActivity;->access$1100(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/ui/StaticGridView;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 406
    .local v3, v:Landroid/view/View;
    const v4, 0x7f1000b8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 407
    .local v2, nameView:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    new-instance v4, Lcom/android/mms/ui/NewMessageActivity$7$1;

    invoke-direct {v4, p0, v0}, Lcom/android/mms/ui/NewMessageActivity$7$1;-><init>(Lcom/android/mms/ui/NewMessageActivity$7;Lcom/android/mms/data/Contact;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget-object v4, p0, Lcom/android/mms/ui/NewMessageActivity$7;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecentContactGrid:Lcom/android/mms/ui/StaticGridView;
    invoke-static {v4}, Lcom/android/mms/ui/NewMessageActivity;->access$1100(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/ui/StaticGridView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/mms/ui/StaticGridView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 417
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v2           #nameView:Landroid/widget/TextView;
    .end local v3           #v:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/NewMessageActivity$7;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #calls: Lcom/android/mms/ui/NewMessageActivity;->updateRecentContactListVisibility()V
    invoke-static {v4}, Lcom/android/mms/ui/NewMessageActivity;->access$1400(Lcom/android/mms/ui/NewMessageActivity;)V

    .line 418
    iget-object v4, p0, Lcom/android/mms/ui/NewMessageActivity$7;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #setter for: Lcom/android/mms/ui/NewMessageActivity;->mIsLoadingRecentContacts:Z
    invoke-static {v4, v7}, Lcom/android/mms/ui/NewMessageActivity;->access$1502(Lcom/android/mms/ui/NewMessageActivity;Z)Z

    .line 419
    return-void
.end method
