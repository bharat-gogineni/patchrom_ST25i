.class Lcom/android/phone/MiuiSimContacts$ModeCallback;
.super Landroid/widget/EditableListView$EditableModeCallback;
.source "MiuiSimContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiSimContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModeCallback"
.end annotation


# instance fields
.field private mActivity:Lcom/android/phone/MiuiSimContacts;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/EditableListView;)V
    .locals 0
    .parameter "activity"
    .parameter "editableListView"

    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Landroid/widget/EditableListView$EditableModeCallback;-><init>(Landroid/app/Activity;Landroid/widget/EditableListView;)V

    .line 224
    check-cast p1, Lcom/android/phone/MiuiSimContacts;

    .end local p1
    iput-object p1, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->mActivity:Lcom/android/phone/MiuiSimContacts;

    .line 225
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 229
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->mActivity:Lcom/android/phone/MiuiSimContacts;

    #getter for: Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;
    invoke-static {v0}, Lcom/android/phone/MiuiSimContacts;->access$400(Lcom/android/phone/MiuiSimContacts;)Landroid/widget/EditableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditableListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 244
    :goto_0
    return v1

    .line 233
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 235
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 238
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->mActivity:Lcom/android/phone/MiuiSimContacts;

    #calls: Lcom/android/phone/MiuiSimContacts;->startImportSelected()V
    invoke-static {v0}, Lcom/android/phone/MiuiSimContacts;->access$500(Lcom/android/phone/MiuiSimContacts;)V

    goto :goto_0

    .line 241
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->mActivity:Lcom/android/phone/MiuiSimContacts;

    #calls: Lcom/android/phone/MiuiSimContacts;->showDeleteSelectedDialog()V
    invoke-static {v0}, Lcom/android/phone/MiuiSimContacts;->access$600(Lcom/android/phone/MiuiSimContacts;)V

    goto :goto_0

    .line 233
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0700fa -> :sswitch_1
        0x7f0700fb -> :sswitch_2
    .end sparse-switch
.end method
