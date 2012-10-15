.class public Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
.super Ljava/lang/Object;
.source "ScanWorkerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/ScanWorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScanFileDB"
.end annotation


# instance fields
.field public canFoundInDB:Z

.field public dateModified:J

.field public fileName:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public microThumbnailFile:Ljava/lang/String;

.field recordID:J

.field public size:J

.field final synthetic this$0:Lcom/miui/gallery/cloud/ScanWorkerThread;

.field public thumbnailFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/cloud/ScanWorkerThread;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->this$0:Lcom/miui/gallery/cloud/ScanWorkerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
