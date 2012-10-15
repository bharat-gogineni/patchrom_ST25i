.class Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;
.super Ljava/lang/Object;
.source "NewMessagePopupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NewMessagePopupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageThread"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public markedRead:Z

.field messageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/ui/NewMessagePopupActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->this$0:Lcom/android/mms/ui/NewMessagePopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/NewMessagePopupActivity;Lcom/android/mms/ui/NewMessagePopupActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;-><init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V

    return-void
.end method
