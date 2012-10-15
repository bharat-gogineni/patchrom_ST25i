.class Lcom/android/phone/MiuiEditFdnContactScreen$2;
.super Ljava/lang/Object;
.source "MiuiEditFdnContactScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiEditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiEditFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiEditFdnContactScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/phone/MiuiEditFdnContactScreen$2;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 334
    const/4 v0, 0x1

    .line 335
    .local v0, enableButton:Z
    iget-object v1, p0, Lcom/android/phone/MiuiEditFdnContactScreen$2;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    #getter for: Lcom/android/phone/MiuiEditFdnContactScreen;->mNameField:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/MiuiEditFdnContactScreen;->access$200(Lcom/android/phone/MiuiEditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 336
    const/4 v0, 0x0

    .line 338
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/MiuiEditFdnContactScreen$2;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    #getter for: Lcom/android/phone/MiuiEditFdnContactScreen;->mNumberField:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/MiuiEditFdnContactScreen;->access$300(Lcom/android/phone/MiuiEditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 340
    const/4 v0, 0x0

    .line 342
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/MiuiEditFdnContactScreen$2;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    #getter for: Lcom/android/phone/MiuiEditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/MiuiEditFdnContactScreen;->access$400(Lcom/android/phone/MiuiEditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 344
    const/4 v0, 0x0

    .line 347
    :cond_2
    iget-object v1, p0, Lcom/android/phone/MiuiEditFdnContactScreen$2;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    #getter for: Lcom/android/phone/MiuiEditFdnContactScreen;->mDeleteButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/MiuiEditFdnContactScreen;->access$500(Lcom/android/phone/MiuiEditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 348
    iget-object v1, p0, Lcom/android/phone/MiuiEditFdnContactScreen$2;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    #getter for: Lcom/android/phone/MiuiEditFdnContactScreen;->mOkButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/MiuiEditFdnContactScreen;->access$600(Lcom/android/phone/MiuiEditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 349
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 330
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 325
    return-void
.end method
