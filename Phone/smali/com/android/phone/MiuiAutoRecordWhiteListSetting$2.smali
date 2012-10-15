.class Lcom/android/phone/MiuiAutoRecordWhiteListSetting$2;
.super Landroid/widget/SimpleAdapter;
.source "MiuiAutoRecordWhiteListSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->updateAdapterData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiAutoRecordWhiteListSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiAutoRecordWhiteListSetting;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "x0"
    .parameter
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 230
    .local p3, x1:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object p1, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting$2;->this$0:Lcom/android/phone/MiuiAutoRecordWhiteListSetting;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x1

    return v0
.end method
