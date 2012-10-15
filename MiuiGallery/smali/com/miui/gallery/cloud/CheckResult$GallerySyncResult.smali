.class public final enum Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
.super Ljava/lang/Enum;
.source "CheckResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/CheckResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GallerySyncResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

.field public static final enum Cancel:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

.field public static final enum NeedReRequest:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

.field public static final enum NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

.field public static final enum Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

.field public static final enum RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    const-string v1, "Ok"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 43
    new-instance v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    const-string v1, "Cancel"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Cancel:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 45
    new-instance v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    const-string v1, "RetryError"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 46
    new-instance v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    const-string v1, "NotRetryError"

    invoke-direct {v0, v1, v5}, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 47
    new-instance v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    const-string v1, "NeedReRequest"

    invoke-direct {v0, v1, v6}, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NeedReRequest:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v1, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Cancel:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NeedReRequest:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->$VALUES:[Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 1
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->$VALUES:[Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    invoke-virtual {v0}, [Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    return-object v0
.end method
