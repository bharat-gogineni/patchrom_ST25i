.class Lcom/android/phone/MiuiCallFeaturesSetting$2;
.super Lmiui/os/AsyncTaskWithProgress;
.source "MiuiCallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiCallFeaturesSetting;->showRebuildT9IndexDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/os/AsyncTaskWithProgress",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiCallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiCallFeaturesSetting;Landroid/content/Context;IIZ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/phone/MiuiCallFeaturesSetting$2;->this$0:Lcom/android/phone/MiuiCallFeaturesSetting;

    invoke-direct {p0, p2, p3, p4, p5}, Lmiui/os/AsyncTaskWithProgress;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 511
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiCallFeaturesSetting$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 514
    iget-object v0, p0, Lcom/android/phone/MiuiCallFeaturesSetting$2;->this$0:Lcom/android/phone/MiuiCallFeaturesSetting;

    invoke-virtual {v0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraContacts$SmartDialer;->CONTENT_REBUILDT9_URI:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 516
    return-object v3
.end method
