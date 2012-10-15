.class public Lcom/miui/player/util/FolderProvider$FolderStatus;
.super Ljava/lang/Object;
.source "FolderProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/util/FolderProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderStatus"
.end annotation


# instance fields
.field public final mFolderPath:Ljava/lang/String;

.field public mSelected:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/miui/player/util/FolderProvider$FolderStatus;->mFolderPath:Ljava/lang/String;

    .line 50
    iput-boolean p2, p0, Lcom/miui/player/util/FolderProvider$FolderStatus;->mSelected:Z

    .line 51
    return-void
.end method
