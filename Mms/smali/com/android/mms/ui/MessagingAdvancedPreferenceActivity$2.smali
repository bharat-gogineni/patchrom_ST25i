.class Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity$2;
.super Ljava/lang/Object;
.source "MessagingAdvancedPreferenceActivity.java"

# interfaces
.implements Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumberSet(I)V
    .locals 2
    .parameter "limit"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->access$200(Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;)Lcom/android/mms/util/Recycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/util/Recycler;->setMessageLimit(Landroid/content/Context;I)V

    .line 176
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;

    #calls: Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->setMmsDisplayLimit()V
    invoke-static {v0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->access$300(Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;)V

    .line 177
    return-void
.end method
