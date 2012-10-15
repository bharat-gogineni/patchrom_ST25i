.class Lcom/android/phone/MiuiSimContacts$3;
.super Ljava/lang/Object;
.source "MiuiSimContacts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiSimContacts;->showDeleteAllDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiSimContacts;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiSimContacts;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/phone/MiuiSimContacts$3;->this$0:Lcom/android/phone/MiuiSimContacts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 178
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts$3;->this$0:Lcom/android/phone/MiuiSimContacts;

    #getter for: Lcom/android/phone/MiuiSimContacts;->mAdapter:Landroid/widget/SimpleCursorAdapter;
    invoke-static {v2}, Lcom/android/phone/MiuiSimContacts;->access$200(Lcom/android/phone/MiuiSimContacts;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts$3;->this$0:Lcom/android/phone/MiuiSimContacts;

    #getter for: Lcom/android/phone/MiuiSimContacts;->mAdapter:Landroid/widget/SimpleCursorAdapter;
    invoke-static {v2}, Lcom/android/phone/MiuiSimContacts;->access$200(Lcom/android/phone/MiuiSimContacts;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SimpleCursorAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 179
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 180
    .local v1, list:Landroid/util/SparseBooleanArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts$3;->this$0:Lcom/android/phone/MiuiSimContacts;

    #getter for: Lcom/android/phone/MiuiSimContacts;->mAdapter:Landroid/widget/SimpleCursorAdapter;
    invoke-static {v2}, Lcom/android/phone/MiuiSimContacts;->access$200(Lcom/android/phone/MiuiSimContacts;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SimpleCursorAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 181
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts$3;->this$0:Lcom/android/phone/MiuiSimContacts;

    #calls: Lcom/android/phone/MiuiSimContacts;->startDeleteAll(Landroid/util/SparseBooleanArray;)V
    invoke-static {v2, v1}, Lcom/android/phone/MiuiSimContacts;->access$300(Lcom/android/phone/MiuiSimContacts;Landroid/util/SparseBooleanArray;)V

    .line 185
    .end local v0           #i:I
    .end local v1           #list:Landroid/util/SparseBooleanArray;
    :cond_1
    return-void
.end method
