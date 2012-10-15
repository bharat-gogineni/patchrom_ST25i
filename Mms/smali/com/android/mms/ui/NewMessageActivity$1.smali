.class Lcom/android/mms/ui/NewMessageActivity$1;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessageActivity;->initUserGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewMessageActivity;

.field final synthetic val$pref:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageActivity;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$1;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/NewMessageActivity$1;->val$pref:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 206
    new-instance v1, Lmiui/widget/GuidePopupWindow;

    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$1;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-direct {v1, v2}, Lmiui/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    .line 209
    .local v1, guidePopupWindow:Lmiui/widget/GuidePopupWindow;
    const v2, 0x7f0a019a

    invoke-virtual {v1, v2}, Lmiui/widget/GuidePopupWindow;->setGuideText(I)V

    .line 211
    invoke-virtual {v1, v4}, Lmiui/widget/GuidePopupWindow;->setOutsideTouchable(Z)V

    .line 212
    invoke-virtual {v1, v3}, Lmiui/widget/GuidePopupWindow;->enableOutSideWindowTouchDismiss(Z)V

    .line 214
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lmiui/widget/GuidePopupWindow;->setInputMethodMode(I)V

    .line 216
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$1;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mAddRecipientButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/mms/ui/NewMessageActivity;->access$000(Lcom/android/mms/ui/NewMessageActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3, v4}, Lmiui/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 219
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$1;->val$pref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 220
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "guide_add_recipients"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 221
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 223
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$1;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mAddRecipientButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/mms/ui/NewMessageActivity;->access$000(Lcom/android/mms/ui/NewMessageActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 225
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 229
    return-void
.end method
