.class public Lcom/miui/gallery/data/MtpContext;
.super Ljava/lang/Object;
.source "MtpContext.java"

# interfaces
.implements Lcom/miui/gallery/data/MtpClient$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/MtpContext$ScannerClient;
    }
.end annotation


# instance fields
.field private mClient:Lcom/miui/gallery/data/MtpClient;

.field private mContext:Landroid/content/Context;

.field private mScannerClient:Lcom/miui/gallery/data/MtpContext$ScannerClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/miui/gallery/data/MtpContext;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/miui/gallery/data/MtpContext$ScannerClient;

    invoke-direct {v0, p1}, Lcom/miui/gallery/data/MtpContext$ScannerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/data/MtpContext;->mScannerClient:Lcom/miui/gallery/data/MtpContext$ScannerClient;

    .line 71
    new-instance v0, Lcom/miui/gallery/data/MtpClient;

    iget-object v1, p0, Lcom/miui/gallery/data/MtpContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/gallery/data/MtpClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/data/MtpContext;->mClient:Lcom/miui/gallery/data/MtpClient;

    .line 72
    return-void
.end method

.method private notifyDirty()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/gallery/data/MtpContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mtp://"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 95
    return-void
.end method

.method private showToast(I)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/gallery/data/MtpContext;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 99
    return-void
.end method


# virtual methods
.method public copyAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 10
    .parameter "deviceName"
    .parameter "albumName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, children:Ljava/util/List;,"Ljava/util/List<Landroid/mtp/MtpObjectInfo;>;"
    const/4 v7, 0x0

    .line 125
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 126
    .local v1, dest:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    .end local v1           #dest:Ljava/io/File;
    .local v2, dest:Ljava/io/File;
    invoke-static {v2, v7}, Lcom/miui/gallery/util/GalleryUtils;->createFolder(Ljava/io/File;Z)Z

    .line 128
    const/4 v6, 0x0

    .line 129
    .local v6, success:I
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpObjectInfo;

    .line 130
    .local v0, child:Landroid/mtp/MtpObjectInfo;
    invoke-virtual {v0}, Landroid/mtp/MtpObjectInfo;->getCompressedSize()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v8, v9}, Lcom/miui/gallery/util/GalleryUtils;->hasSpaceForSize(J)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 132
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Landroid/mtp/MtpObjectInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    .local v4, importedFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, path:Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/gallery/data/MtpContext;->mClient:Lcom/miui/gallery/data/MtpClient;

    invoke-virtual {v0}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v9

    invoke-virtual {v8, p1, v9, v5}, Lcom/miui/gallery/data/MtpClient;->importFile(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 135
    iget-object v8, p0, Lcom/miui/gallery/data/MtpContext;->mScannerClient:Lcom/miui/gallery/data/MtpContext$ScannerClient;

    invoke-virtual {v8, v5}, Lcom/miui/gallery/data/MtpContext$ScannerClient;->scanPath(Ljava/lang/String;)V

    .line 136
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 139
    .end local v0           #child:Landroid/mtp/MtpObjectInfo;
    .end local v4           #importedFile:Ljava/io/File;
    .end local v5           #path:Ljava/lang/String;
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-ne v6, v8, :cond_2

    const/4 v7, 0x1

    :cond_2
    return v7
.end method

.method public copyFile(Ljava/lang/String;Landroid/mtp/MtpObjectInfo;)Z
    .locals 8
    .parameter "deviceName"
    .parameter "objInfo"

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getCompressedSize()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/miui/gallery/util/GalleryUtils;->hasSpaceForSize(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 107
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 108
    .local v0, dest:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v5, "Imported"

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .end local v0           #dest:Ljava/io/File;
    .local v1, dest:Ljava/io/File;
    invoke-static {v1, v4}, Lcom/miui/gallery/util/GalleryUtils;->createFolder(Ljava/io/File;Z)Z

    .line 110
    new-instance v5, Ljava/io/File;

    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, destPath:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v3

    .line 112
    .local v3, objectId:I
    iget-object v5, p0, Lcom/miui/gallery/data/MtpContext;->mClient:Lcom/miui/gallery/data/MtpClient;

    invoke-virtual {v5, p1, v3, v2}, Lcom/miui/gallery/data/MtpClient;->importFile(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    iget-object v4, p0, Lcom/miui/gallery/data/MtpContext;->mScannerClient:Lcom/miui/gallery/data/MtpContext$ScannerClient;

    invoke-virtual {v4, v2}, Lcom/miui/gallery/data/MtpContext$ScannerClient;->scanPath(Ljava/lang/String;)V

    .line 114
    const/4 v4, 0x1

    .line 120
    .end local v1           #dest:Ljava/io/File;
    .end local v2           #destPath:Ljava/lang/String;
    .end local v3           #objectId:I
    :cond_0
    :goto_0
    return v4

    .line 117
    :cond_1
    const-string v5, "MtpContext"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No space to import "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " whose size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getCompressedSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deviceAdded(Landroid/mtp/MtpDevice;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/miui/gallery/data/MtpContext;->notifyDirty()V

    .line 85
    const v0, 0x7f0d00a0

    invoke-direct {p0, v0}, Lcom/miui/gallery/data/MtpContext;->showToast(I)V

    .line 86
    return-void
.end method

.method public deviceRemoved(Landroid/mtp/MtpDevice;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/miui/gallery/data/MtpContext;->notifyDirty()V

    .line 90
    const v0, 0x7f0d00a1

    invoke-direct {p0, v0}, Lcom/miui/gallery/data/MtpContext;->showToast(I)V

    .line 91
    return-void
.end method

.method public getMtpClient()Lcom/miui/gallery/data/MtpClient;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/gallery/data/MtpContext;->mClient:Lcom/miui/gallery/data/MtpClient;

    return-object v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/data/MtpContext;->mClient:Lcom/miui/gallery/data/MtpClient;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/data/MtpClient;->removeListener(Lcom/miui/gallery/data/MtpClient$Listener;)V

    .line 76
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/gallery/data/MtpContext;->mClient:Lcom/miui/gallery/data/MtpClient;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/data/MtpClient;->addListener(Lcom/miui/gallery/data/MtpClient$Listener;)V

    .line 80
    invoke-direct {p0}, Lcom/miui/gallery/data/MtpContext;->notifyDirty()V

    .line 81
    return-void
.end method
