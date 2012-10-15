.class Lcom/android/phone/MiuiAutoRecordWhiteListSetting$1$1;
.super Ljava/lang/Object;
.source "MiuiAutoRecordWhiteListSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiAutoRecordWhiteListSetting$1;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/MiuiAutoRecordWhiteListSetting$1;

.field final synthetic val$checkedIds:[J


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiAutoRecordWhiteListSetting$1;[J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting$1$1;->this$1:Lcom/android/phone/MiuiAutoRecordWhiteListSetting$1;

    iput-object p2, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting$1$1;->val$checkedIds:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 86
    iget-object v4, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting$1$1;->this$1:Lcom/android/phone/MiuiAutoRecordWhiteListSetting$1;

    iget-object v4, v4, Lcom/android/phone/MiuiAutoRecordWhiteListSetting$1;->this$0:Lcom/android/phone/MiuiAutoRecordWhiteListSetting;

    #getter for: Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->mNumbers:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->access$100(Lcom/android/phone/MiuiAutoRecordWhiteListSetting;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 87
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    const-wide/16 v0, -0x1

    .line 88
    .local v0, count:J
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    iget-object v4, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting$1$1;->val$checkedIds:[J

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 89
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 92
    iget-object v4, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting$1$1;->val$checkedIds:[J

    aget-wide v4, v4, v2

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 93
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 88
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_2
    iget-object v4, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting$1$1;->this$1:Lcom/android/phone/MiuiAutoRecordWhiteListSetting$1;

    iget-object v4, v4, Lcom/android/phone/MiuiAutoRecordWhiteListSetting$1;->this$0:Lcom/android/phone/MiuiAutoRecordWhiteListSetting;

    #calls: Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->saveNumbers()V
    invoke-static {v4}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->access$200(Lcom/android/phone/MiuiAutoRecordWhiteListSetting;)V

    .line 99
    iget-object v4, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting$1$1;->this$1:Lcom/android/phone/MiuiAutoRecordWhiteListSetting$1;

    iget-object v4, v4, Lcom/android/phone/MiuiAutoRecordWhiteListSetting$1;->this$0:Lcom/android/phone/MiuiAutoRecordWhiteListSetting;

    #calls: Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->updateAdapterData()V
    invoke-static {v4}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->access$300(Lcom/android/phone/MiuiAutoRecordWhiteListSetting;)V

    .line 100
    return-void
.end method
