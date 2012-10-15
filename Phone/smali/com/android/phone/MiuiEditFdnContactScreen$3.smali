.class Lcom/android/phone/MiuiEditFdnContactScreen$3;
.super Ljava/lang/Object;
.source "MiuiEditFdnContactScreen.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 353
    iput-object p1, p0, Lcom/android/phone/MiuiEditFdnContactScreen$3;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 355
    if-eqz p2, :cond_0

    move-object v0, p1

    .line 356
    check-cast v0, Landroid/widget/TextView;

    .line 357
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 359
    .end local v0           #textView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method
