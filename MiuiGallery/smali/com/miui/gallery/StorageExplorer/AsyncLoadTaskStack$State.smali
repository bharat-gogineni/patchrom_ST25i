.class final enum Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;
.super Ljava/lang/Enum;
.source "AsyncLoadTaskStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;

.field public static final enum RUNNING:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;

.field public static final enum STOPPED:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;->RUNNING:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;

    new-instance v0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;->STOPPED:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;

    sget-object v1, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;->RUNNING:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;->STOPPED:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;->$VALUES:[Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;
    .locals 1
    .parameter

    .prologue
    .line 12
    const-class v0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;->$VALUES:[Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;

    invoke-virtual {v0}, [Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack$State;

    return-object v0
.end method
