.class Lcom/android/mms/ui/MessageListItem$UriInfo;
.super Ljava/lang/Object;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UriInfo"
.end annotation


# instance fields
.field public contact:Lcom/android/mms/data/Contact;

.field public content:Ljava/lang/String;

.field public scheme:I

.field public title:Ljava/lang/String;

.field public uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MessageListItem$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem$UriInfo;-><init>()V

    return-void
.end method
