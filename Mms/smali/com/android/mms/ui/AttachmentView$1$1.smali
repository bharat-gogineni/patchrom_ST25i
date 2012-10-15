.class Lcom/android/mms/ui/AttachmentView$1$1;
.super Ljava/lang/Object;
.source "AttachmentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AttachmentView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/AttachmentView$1;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AttachmentView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentView$1$1;->this$1:Lcom/android/mms/ui/AttachmentView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentView$1$1;->this$1:Lcom/android/mms/ui/AttachmentView$1;

    iget-object v0, v0, Lcom/android/mms/ui/AttachmentView$1;->this$0:Lcom/android/mms/ui/AttachmentView;

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentView;->dismissPopup()V

    .line 155
    return-void
.end method
