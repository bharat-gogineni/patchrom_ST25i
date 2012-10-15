.class Lcom/android/phone/MiuiAutoIpExceptionSetting$1$1;
.super Ljava/lang/Object;
.source "MiuiAutoIpExceptionSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiAutoIpExceptionSetting$1;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/MiuiAutoIpExceptionSetting$1;

.field final synthetic val$checkedIds:[J


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiAutoIpExceptionSetting$1;[J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$1$1;->this$1:Lcom/android/phone/MiuiAutoIpExceptionSetting$1;

    iput-object p2, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$1$1;->val$checkedIds:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 99
    iget-object v4, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$1$1;->this$1:Lcom/android/phone/MiuiAutoIpExceptionSetting$1;

    iget-object v4, v4, Lcom/android/phone/MiuiAutoIpExceptionSetting$1;->this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;

    #getter for: Lcom/android/phone/MiuiAutoIpExceptionSetting;->mNumbers:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/phone/MiuiAutoIpExceptionSetting;->access$100(Lcom/android/phone/MiuiAutoIpExceptionSetting;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 100
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    const-wide/16 v0, -0x1

    .line 101
    .local v0, count:J
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    iget-object v4, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$1$1;->val$checkedIds:[J

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 102
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 105
    iget-object v4, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$1$1;->val$checkedIds:[J

    aget-wide v4, v4, v2

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 106
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 101
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_2
    iget-object v4, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$1$1;->this$1:Lcom/android/phone/MiuiAutoIpExceptionSetting$1;

    iget-object v4, v4, Lcom/android/phone/MiuiAutoIpExceptionSetting$1;->this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;

    #calls: Lcom/android/phone/MiuiAutoIpExceptionSetting;->saveNumbers()V
    invoke-static {v4}, Lcom/android/phone/MiuiAutoIpExceptionSetting;->access$200(Lcom/android/phone/MiuiAutoIpExceptionSetting;)V

    .line 112
    iget-object v4, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$1$1;->this$1:Lcom/android/phone/MiuiAutoIpExceptionSetting$1;

    iget-object v4, v4, Lcom/android/phone/MiuiAutoIpExceptionSetting$1;->this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;

    #calls: Lcom/android/phone/MiuiAutoIpExceptionSetting;->updateAdapterData()V
    invoke-static {v4}, Lcom/android/phone/MiuiAutoIpExceptionSetting;->access$300(Lcom/android/phone/MiuiAutoIpExceptionSetting;)V

    .line 113
    return-void
.end method
