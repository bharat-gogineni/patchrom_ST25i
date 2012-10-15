.class final enum Lcom/android/phone/MiuiEditFdnContactScreen$Actions;
.super Ljava/lang/Enum;
.source "MiuiEditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiEditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Actions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/MiuiEditFdnContactScreen$Actions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/MiuiEditFdnContactScreen$Actions;

.field public static final enum Delete:Lcom/android/phone/MiuiEditFdnContactScreen$Actions;

.field public static final enum Insert:Lcom/android/phone/MiuiEditFdnContactScreen$Actions;

.field public static final enum Update:Lcom/android/phone/MiuiEditFdnContactScreen$Actions;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;

    const-string v1, "Insert"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;->Insert:Lcom/android/phone/MiuiEditFdnContactScreen$Actions;

    .line 74
    new-instance v0, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;

    const-string v1, "Update"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;->Update:Lcom/android/phone/MiuiEditFdnContactScreen$Actions;

    .line 75
    new-instance v0, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;

    const-string v1, "Delete"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;->Delete:Lcom/android/phone/MiuiEditFdnContactScreen$Actions;

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/MiuiEditFdnContactScreen$Actions;

    sget-object v1, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;->Insert:Lcom/android/phone/MiuiEditFdnContactScreen$Actions;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;->Update:Lcom/android/phone/MiuiEditFdnContactScreen$Actions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;->Delete:Lcom/android/phone/MiuiEditFdnContactScreen$Actions;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;->$VALUES:[Lcom/android/phone/MiuiEditFdnContactScreen$Actions;

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
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/MiuiEditFdnContactScreen$Actions;
    .locals 1
    .parameter

    .prologue
    .line 72
    const-class v0, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/MiuiEditFdnContactScreen$Actions;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;->$VALUES:[Lcom/android/phone/MiuiEditFdnContactScreen$Actions;

    invoke-virtual {v0}, [Lcom/android/phone/MiuiEditFdnContactScreen$Actions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/MiuiEditFdnContactScreen$Actions;

    return-object v0
.end method
