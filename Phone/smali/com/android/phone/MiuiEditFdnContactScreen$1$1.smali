.class Lcom/android/phone/MiuiEditFdnContactScreen$1$1;
.super Ljava/lang/Object;
.source "MiuiEditFdnContactScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiEditFdnContactScreen$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/MiuiEditFdnContactScreen$1;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiEditFdnContactScreen$1;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/phone/MiuiEditFdnContactScreen$1$1;->this$1:Lcom/android/phone/MiuiEditFdnContactScreen$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen$1$1;->this$1:Lcom/android/phone/MiuiEditFdnContactScreen$1;

    iget-object v0, v0, Lcom/android/phone/MiuiEditFdnContactScreen$1;->this$0:Lcom/android/phone/MiuiEditFdnContactScreen;

    sget-object v1, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;->Delete:Lcom/android/phone/MiuiEditFdnContactScreen$Actions;

    #calls: Lcom/android/phone/MiuiEditFdnContactScreen;->performActions(Lcom/android/phone/MiuiEditFdnContactScreen$Actions;)V
    invoke-static {v0, v1}, Lcom/android/phone/MiuiEditFdnContactScreen;->access$000(Lcom/android/phone/MiuiEditFdnContactScreen;Lcom/android/phone/MiuiEditFdnContactScreen$Actions;)V

    .line 308
    return-void
.end method
