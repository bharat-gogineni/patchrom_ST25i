.class public Lcom/android/mms/ui/MessageItem$FailedItem;
.super Ljava/lang/Object;
.source "MessageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FailedItem"
.end annotation


# instance fields
.field public final messageUri:Landroid/net/Uri;

.field public final number:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/MessageItem;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "address"
    .parameter "uri"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem$FailedItem;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/android/mms/ui/MessageItem$FailedItem;->number:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/android/mms/ui/MessageItem$FailedItem;->messageUri:Landroid/net/Uri;

    .line 68
    return-void
.end method
