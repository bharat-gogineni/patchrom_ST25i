.class Lcom/android/mms/ui/NewMessagePopupActivity$2;
.super Ljava/lang/Object;
.source "NewMessagePopupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessagePopupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewMessagePopupActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/mms/ui/NewMessagePopupActivity$2;->this$0:Lcom/android/mms/ui/NewMessagePopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity$2;->this$0:Lcom/android/mms/ui/NewMessagePopupActivity;

    #calls: Lcom/android/mms/ui/NewMessagePopupActivity;->dismissMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/NewMessagePopupActivity;->access$100(Lcom/android/mms/ui/NewMessagePopupActivity;)V

    .line 158
    return-void
.end method
