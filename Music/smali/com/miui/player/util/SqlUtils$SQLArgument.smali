.class public Lcom/miui/player/util/SqlUtils$SQLArgument;
.super Ljava/lang/Object;
.source "SqlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/util/SqlUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SQLArgument"
.end annotation


# instance fields
.field public final mArgs:[Ljava/lang/String;

.field public final mSelection:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "selection"
    .parameter "args"

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/miui/player/util/SqlUtils$SQLArgument;->mSelection:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lcom/miui/player/util/SqlUtils$SQLArgument;->mArgs:[Ljava/lang/String;

    .line 136
    return-void
.end method
