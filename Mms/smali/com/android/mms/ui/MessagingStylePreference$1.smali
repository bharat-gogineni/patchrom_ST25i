.class Lcom/android/mms/ui/MessagingStylePreference$1;
.super Ljava/lang/Object;
.source "MessagingStylePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingStylePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingStylePreference;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingStylePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/mms/ui/MessagingStylePreference$1;->this$0:Lcom/android/mms/ui/MessagingStylePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    iget-object v0, p0, Lcom/android/mms/ui/MessagingStylePreference$1;->this$0:Lcom/android/mms/ui/MessagingStylePreference;

    #getter for: Lcom/android/mms/ui/MessagingStylePreference;->mStyleListText:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingStylePreference;->access$100(Lcom/android/mms/ui/MessagingStylePreference;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/android/mms/ui/MessagingStylePreference$1;->this$0:Lcom/android/mms/ui/MessagingStylePreference;

    #getter for: Lcom/android/mms/ui/MessagingStylePreference;->mStyleList:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingStylePreference;->access$000(Lcom/android/mms/ui/MessagingStylePreference;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 38
    iget-object v0, p0, Lcom/android/mms/ui/MessagingStylePreference$1;->this$0:Lcom/android/mms/ui/MessagingStylePreference;

    #getter for: Lcom/android/mms/ui/MessagingStylePreference;->mStyleBubbleText:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingStylePreference;->access$300(Lcom/android/mms/ui/MessagingStylePreference;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/ui/MessagingStylePreference$1;->this$0:Lcom/android/mms/ui/MessagingStylePreference;

    #getter for: Lcom/android/mms/ui/MessagingStylePreference;->mStyleBubble:Landroid/view/View;
    invoke-static {v3}, Lcom/android/mms/ui/MessagingStylePreference;->access$200(Lcom/android/mms/ui/MessagingStylePreference;)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 39
    iget-object v0, p0, Lcom/android/mms/ui/MessagingStylePreference$1;->this$0:Lcom/android/mms/ui/MessagingStylePreference;

    #calls: Lcom/android/mms/ui/MessagingStylePreference;->setSettingsFromUI()V
    invoke-static {v0}, Lcom/android/mms/ui/MessagingStylePreference;->access$400(Lcom/android/mms/ui/MessagingStylePreference;)V

    .line 40
    return-void

    :cond_0
    move v0, v2

    .line 37
    goto :goto_0

    :cond_1
    move v1, v2

    .line 38
    goto :goto_1
.end method
