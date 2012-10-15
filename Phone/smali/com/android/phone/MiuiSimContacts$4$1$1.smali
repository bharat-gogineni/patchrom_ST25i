.class Lcom/android/phone/MiuiSimContacts$4$1$1;
.super Ljava/lang/Object;
.source "MiuiSimContacts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiSimContacts$4$1;->onProgress(IIILcom/android/phone/MiuiSimContacts$SimContactOP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/phone/MiuiSimContacts$4$1;

.field final synthetic val$count:I

.field final synthetic val$fMessageId:I

.field final synthetic val$fTitleId:I

.field final synthetic val$max:I


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiSimContacts$4$1;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/phone/MiuiSimContacts$4$1$1;->this$2:Lcom/android/phone/MiuiSimContacts$4$1;

    iput p2, p0, Lcom/android/phone/MiuiSimContacts$4$1$1;->val$fTitleId:I

    iput p3, p0, Lcom/android/phone/MiuiSimContacts$4$1$1;->val$fMessageId:I

    iput p4, p0, Lcom/android/phone/MiuiSimContacts$4$1$1;->val$count:I

    iput p5, p0, Lcom/android/phone/MiuiSimContacts$4$1$1;->val$max:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$4$1$1;->this$2:Lcom/android/phone/MiuiSimContacts$4$1;

    iget-object v0, v0, Lcom/android/phone/MiuiSimContacts$4$1;->this$1:Lcom/android/phone/MiuiSimContacts$4;

    iget-object v0, v0, Lcom/android/phone/MiuiSimContacts$4;->this$0:Lcom/android/phone/MiuiSimContacts;

    invoke-virtual {v0}, Lcom/android/phone/MiuiSimContacts;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$4$1$1;->this$2:Lcom/android/phone/MiuiSimContacts$4$1;

    iget-object v0, v0, Lcom/android/phone/MiuiSimContacts$4$1;->this$1:Lcom/android/phone/MiuiSimContacts$4;

    iget-object v0, v0, Lcom/android/phone/MiuiSimContacts$4;->this$0:Lcom/android/phone/MiuiSimContacts;

    iget v1, p0, Lcom/android/phone/MiuiSimContacts$4$1$1;->val$fTitleId:I

    iget v2, p0, Lcom/android/phone/MiuiSimContacts$4$1$1;->val$fMessageId:I

    iget v3, p0, Lcom/android/phone/MiuiSimContacts$4$1$1;->val$count:I

    iget v4, p0, Lcom/android/phone/MiuiSimContacts$4$1$1;->val$max:I

    #calls: Lcom/android/phone/MiuiSimContacts;->showProgressDialog(IIII)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/phone/MiuiSimContacts;->access$700(Lcom/android/phone/MiuiSimContacts;IIII)V

    .line 275
    :cond_0
    return-void
.end method
