.class final enum Lcom/android/mms/ui/MessageListItem$Style;
.super Ljava/lang/Enum;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/ui/MessageListItem$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/ui/MessageListItem$Style;

.field public static final enum bubble:Lcom/android/mms/ui/MessageListItem$Style;

.field public static final enum list:Lcom/android/mms/ui/MessageListItem$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    new-instance v0, Lcom/android/mms/ui/MessageListItem$Style;

    const-string v1, "bubble"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageListItem$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MessageListItem$Style;->bubble:Lcom/android/mms/ui/MessageListItem$Style;

    .line 172
    new-instance v0, Lcom/android/mms/ui/MessageListItem$Style;

    const-string v1, "list"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/ui/MessageListItem$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MessageListItem$Style;->list:Lcom/android/mms/ui/MessageListItem$Style;

    .line 170
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/mms/ui/MessageListItem$Style;

    sget-object v1, Lcom/android/mms/ui/MessageListItem$Style;->bubble:Lcom/android/mms/ui/MessageListItem$Style;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/ui/MessageListItem$Style;->list:Lcom/android/mms/ui/MessageListItem$Style;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/ui/MessageListItem$Style;->$VALUES:[Lcom/android/mms/ui/MessageListItem$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/ui/MessageListItem$Style;
    .locals 1
    .parameter

    .prologue
    .line 170
    const-class v0, Lcom/android/mms/ui/MessageListItem$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListItem$Style;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/ui/MessageListItem$Style;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/mms/ui/MessageListItem$Style;->$VALUES:[Lcom/android/mms/ui/MessageListItem$Style;

    invoke-virtual {v0}, [Lcom/android/mms/ui/MessageListItem$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/ui/MessageListItem$Style;

    return-object v0
.end method
