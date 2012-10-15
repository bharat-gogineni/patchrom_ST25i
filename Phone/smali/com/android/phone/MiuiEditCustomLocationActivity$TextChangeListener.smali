.class Lcom/android/phone/MiuiEditCustomLocationActivity$TextChangeListener;
.super Ljava/lang/Object;
.source "MiuiEditCustomLocationActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiEditCustomLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiEditCustomLocationActivity;


# direct methods
.method private constructor <init>(Lcom/android/phone/MiuiEditCustomLocationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/phone/MiuiEditCustomLocationActivity$TextChangeListener;->this$0:Lcom/android/phone/MiuiEditCustomLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MiuiEditCustomLocationActivity;Lcom/android/phone/MiuiEditCustomLocationActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiEditCustomLocationActivity$TextChangeListener;-><init>(Lcom/android/phone/MiuiEditCustomLocationActivity;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/phone/MiuiEditCustomLocationActivity$TextChangeListener;->this$0:Lcom/android/phone/MiuiEditCustomLocationActivity;

    #calls: Lcom/android/phone/MiuiEditCustomLocationActivity;->resetDoneButtonEnabled()V
    invoke-static {v0}, Lcom/android/phone/MiuiEditCustomLocationActivity;->access$100(Lcom/android/phone/MiuiEditCustomLocationActivity;)V

    .line 249
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 239
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 244
    return-void
.end method
