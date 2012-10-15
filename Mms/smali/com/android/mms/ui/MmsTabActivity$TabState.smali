.class public final enum Lcom/android/mms/ui/MmsTabActivity$TabState;
.super Ljava/lang/Enum;
.source "MmsTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/ui/MmsTabActivity$TabState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/ui/MmsTabActivity$TabState;

.field public static final enum BOOKMARK:Lcom/android/mms/ui/MmsTabActivity$TabState;

.field public static final enum CONVERSATION:Lcom/android/mms/ui/MmsTabActivity$TabState;

.field public static final enum FESTIVAL:Lcom/android/mms/ui/MmsTabActivity$TabState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/android/mms/ui/MmsTabActivity$TabState;

    const-string v1, "CONVERSATION"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MmsTabActivity$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->CONVERSATION:Lcom/android/mms/ui/MmsTabActivity$TabState;

    .line 76
    new-instance v0, Lcom/android/mms/ui/MmsTabActivity$TabState;

    const-string v1, "BOOKMARK"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/ui/MmsTabActivity$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->BOOKMARK:Lcom/android/mms/ui/MmsTabActivity$TabState;

    .line 77
    new-instance v0, Lcom/android/mms/ui/MmsTabActivity$TabState;

    const-string v1, "FESTIVAL"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/ui/MmsTabActivity$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->FESTIVAL:Lcom/android/mms/ui/MmsTabActivity$TabState;

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/mms/ui/MmsTabActivity$TabState;

    sget-object v1, Lcom/android/mms/ui/MmsTabActivity$TabState;->CONVERSATION:Lcom/android/mms/ui/MmsTabActivity$TabState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/ui/MmsTabActivity$TabState;->BOOKMARK:Lcom/android/mms/ui/MmsTabActivity$TabState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/ui/MmsTabActivity$TabState;->FESTIVAL:Lcom/android/mms/ui/MmsTabActivity$TabState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->$VALUES:[Lcom/android/mms/ui/MmsTabActivity$TabState;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/android/mms/ui/MmsTabActivity$TabState;
    .locals 3
    .parameter "value"

    .prologue
    .line 80
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->CONVERSATION:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 81
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->CONVERSATION:Lcom/android/mms/ui/MmsTabActivity$TabState;

    .line 87
    :goto_0
    return-object v0

    .line 83
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->BOOKMARK:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_1

    .line 84
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->BOOKMARK:Lcom/android/mms/ui/MmsTabActivity$TabState;

    goto :goto_0

    .line 86
    :cond_1
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->FESTIVAL:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_2

    .line 87
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->FESTIVAL:Lcom/android/mms/ui/MmsTabActivity$TabState;

    goto :goto_0

    .line 89
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/ui/MmsTabActivity$TabState;
    .locals 1
    .parameter

    .prologue
    .line 74
    const-class v0, Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MmsTabActivity$TabState;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/ui/MmsTabActivity$TabState;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->$VALUES:[Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, [Lcom/android/mms/ui/MmsTabActivity$TabState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/ui/MmsTabActivity$TabState;

    return-object v0
.end method
