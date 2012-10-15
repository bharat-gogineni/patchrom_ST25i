.class public Lcom/miui/gallery/data/DBCloud;
.super Ljava/lang/Object;
.source "DBCloud.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/DBCloud$ExifDataConst;
    }
.end annotation


# static fields
.field public static final sExifDataConst:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/DBCloud$ExifDataConst;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDateModified:J

.field private mDatetaken:J

.field private mDescription:Ljava/lang/String;

.field private mDownloadFile:Ljava/lang/String;

.field private mDuration:I

.field private mExifInfo:Lorg/json/JSONObject;

.field private mFileName:Ljava/lang/String;

.field private mGroupId:J

.field private mId:Ljava/lang/String;

.field private mLocalFile:Ljava/lang/String;

.field private mLocalFlag:I

.field private mMicroThumbFile:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mServerId:Ljava/lang/String;

.field private mServerStatus:Ljava/lang/String;

.field private mServerTag:J

.field private mServerType:Ljava/lang/String;

.field private mSha1:Ljava/lang/String;

.field private mSize:J

.field private mThumbnailFile:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/gallery/data/DBCloud;->sExifDataConst:Ljava/util/ArrayList;

    .line 71
    sget-object v0, Lcom/miui/gallery/data/DBCloud;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;

    const/16 v2, 0xe

    const-string v3, "imageWidth"

    invoke-direct {v1, v2, v3, v5}, Lcom/miui/gallery/data/DBCloud$ExifDataConst;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/miui/gallery/data/DBCloud;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;

    const/16 v2, 0xf

    const-string v3, "imageLength"

    invoke-direct {v1, v2, v3, v5}, Lcom/miui/gallery/data/DBCloud$ExifDataConst;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/miui/gallery/data/DBCloud;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;

    const/16 v2, 0x10

    const-string v3, "orientation"

    invoke-direct {v1, v2, v3, v5}, Lcom/miui/gallery/data/DBCloud$ExifDataConst;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/miui/gallery/data/DBCloud;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;

    const/16 v2, 0x11

    const-string v3, "GPSLatitude"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/data/DBCloud$ExifDataConst;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/miui/gallery/data/DBCloud;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;

    const/16 v2, 0x12

    const-string v3, "GPSLongitude"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/data/DBCloud$ExifDataConst;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/miui/gallery/data/DBCloud;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;

    const/16 v2, 0x13

    const-string v3, "make"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/data/DBCloud$ExifDataConst;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/miui/gallery/data/DBCloud;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;

    const/16 v2, 0x14

    const-string v3, "model"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/data/DBCloud$ExifDataConst;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/miui/gallery/data/DBCloud;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;

    const/16 v2, 0x15

    const-string v3, "flash"

    invoke-direct {v1, v2, v3, v5}, Lcom/miui/gallery/data/DBCloud$ExifDataConst;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/miui/gallery/data/DBCloud;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;

    const/16 v2, 0x16

    const-string v3, "GPSLatitudeRef"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/data/DBCloud$ExifDataConst;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/miui/gallery/data/DBCloud;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;

    const/16 v2, 0x17

    const-string v3, "GPSLongitudeRef"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/data/DBCloud$ExifDataConst;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/miui/gallery/data/DBCloud;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;

    const/16 v2, 0x18

    const-string v3, "exposureTime"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/data/DBCloud$ExifDataConst;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/miui/gallery/data/DBCloud;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;

    const/16 v2, 0x19

    const-string v3, "FNumber"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/data/DBCloud$ExifDataConst;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/miui/gallery/data/DBCloud;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;

    const/16 v2, 0x1a

    const-string v3, "ISOSpeedRatings"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/data/DBCloud$ExifDataConst;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/miui/gallery/data/DBCloud;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;

    const/16 v2, 0x1b

    const-string v3, "GPSAltitude"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/data/DBCloud$ExifDataConst;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/miui/gallery/data/DBCloud;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;

    const/16 v2, 0x1c

    const-string v3, "GPSAltitudeRef"

    invoke-direct {v1, v2, v3, v5}, Lcom/miui/gallery/data/DBCloud$ExifDataConst;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/miui/gallery/data/DBCloud;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;

    const/16 v2, 0x1d

    const-string v3, "GPSTimeStamp"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/data/DBCloud$ExifDataConst;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/miui/gallery/data/DBCloud;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;

    const/16 v2, 0x1e

    const-string v3, "GPSDateStamp"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/data/DBCloud$ExifDataConst;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/miui/gallery/data/DBCloud;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;

    const/16 v2, 0x1f

    const-string v3, "whiteBalance"

    invoke-direct {v1, v2, v3, v5}, Lcom/miui/gallery/data/DBCloud$ExifDataConst;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/miui/gallery/data/DBCloud;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;

    const/16 v2, 0x20

    const-string v3, "focalLength"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/data/DBCloud$ExifDataConst;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/miui/gallery/data/DBCloud;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;

    const/16 v2, 0x21

    const-string v3, "GPSProcessingMethod"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/data/DBCloud$ExifDataConst;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/miui/gallery/data/DBCloud;->sExifDataConst:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;

    const/16 v2, 0x22

    const-string v3, "dateTime"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/data/DBCloud$ExifDataConst;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/DBCloud;->mExifInfo:Lorg/json/JSONObject;

    .line 99
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/DBCloud;->reloadData(Landroid/database/Cursor;)Z

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "serverId"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/DBCloud;->mExifInfo:Lorg/json/JSONObject;

    .line 95
    iput-object p1, p0, Lcom/miui/gallery/data/DBCloud;->mServerId:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public getDateModified()J
    .locals 2

    .prologue
    .line 313
    iget-wide v0, p0, Lcom/miui/gallery/data/DBCloud;->mDateModified:J

    return-wide v0
.end method

.method public getDatetaken()J
    .locals 2

    .prologue
    .line 345
    iget-wide v0, p0, Lcom/miui/gallery/data/DBCloud;->mDatetaken:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/miui/gallery/data/DBCloud;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/miui/gallery/data/DBCloud;->mDownloadFile:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/miui/gallery/data/DBCloud;->mDuration:I

    return v0
.end method

.method public getExifInfo()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/miui/gallery/data/DBCloud;->mExifInfo:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/miui/gallery/data/DBCloud;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 241
    iget-wide v0, p0, Lcom/miui/gallery/data/DBCloud;->mGroupId:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/miui/gallery/data/DBCloud;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/miui/gallery/data/DBCloud;->mLocalFile:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalFlag()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/miui/gallery/data/DBCloud;->mLocalFlag:I

    return v0
.end method

.method public getMicroThumbnailFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/miui/gallery/data/DBCloud;->mMicroThumbFile:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/miui/gallery/data/DBCloud;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/miui/gallery/data/DBCloud;->mServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/miui/gallery/data/DBCloud;->mServerStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTag()J
    .locals 2

    .prologue
    .line 369
    iget-wide v0, p0, Lcom/miui/gallery/data/DBCloud;->mServerTag:J

    return-wide v0
.end method

.method public getServerType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/miui/gallery/data/DBCloud;->mServerType:Ljava/lang/String;

    return-object v0
.end method

.method public getSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/miui/gallery/data/DBCloud;->mSha1:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 305
    iget-wide v0, p0, Lcom/miui/gallery/data/DBCloud;->mSize:J

    return-wide v0
.end method

.method public getThumbnailFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/miui/gallery/data/DBCloud;->mThumbnailFile:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/miui/gallery/data/DBCloud;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public reloadData(Landroid/database/Cursor;)Z
    .locals 14
    .parameter "c"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 103
    const/4 v4, 0x0

    .line 104
    .local v4, isUpdated:Z
    new-instance v6, Lcom/miui/gallery/util/UpdateHelper;

    invoke-direct {v6}, Lcom/miui/gallery/util/UpdateHelper;-><init>()V

    .line 106
    .local v6, uh:Lcom/miui/gallery/util/UpdateHelper;
    iget-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mId:Ljava/lang/String;

    invoke-static {p1, v8}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mId:Ljava/lang/String;

    .line 107
    iget-wide v10, p0, Lcom/miui/gallery/data/DBCloud;->mGroupId:J

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v6, v10, v11, v12, v13}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/miui/gallery/data/DBCloud;->mGroupId:J

    .line 108
    iget-wide v10, p0, Lcom/miui/gallery/data/DBCloud;->mSize:J

    const/4 v7, 0x2

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v6, v10, v11, v12, v13}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/miui/gallery/data/DBCloud;->mSize:J

    .line 109
    iget-wide v10, p0, Lcom/miui/gallery/data/DBCloud;->mDateModified:J

    const/4 v7, 0x3

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v6, v10, v11, v12, v13}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/miui/gallery/data/DBCloud;->mDateModified:J

    .line 110
    iget-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mMimeType:Ljava/lang/String;

    const/4 v10, 0x4

    invoke-static {p1, v10}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mMimeType:Ljava/lang/String;

    .line 111
    iget-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mTitle:Ljava/lang/String;

    const/4 v10, 0x5

    invoke-static {p1, v10}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mTitle:Ljava/lang/String;

    .line 112
    iget-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mDescription:Ljava/lang/String;

    const/4 v10, 0x6

    invoke-static {p1, v10}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mDescription:Ljava/lang/String;

    .line 113
    iget-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mFileName:Ljava/lang/String;

    const/4 v10, 0x7

    invoke-static {p1, v10}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mFileName:Ljava/lang/String;

    .line 114
    iget-wide v10, p0, Lcom/miui/gallery/data/DBCloud;->mDatetaken:J

    const/16 v7, 0x8

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v6, v10, v11, v12, v13}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/miui/gallery/data/DBCloud;->mDatetaken:J

    .line 115
    iget v7, p0, Lcom/miui/gallery/data/DBCloud;->mDuration:I

    const/16 v10, 0x9

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v6, v7, v10}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v7

    iput v7, p0, Lcom/miui/gallery/data/DBCloud;->mDuration:I

    .line 116
    iget-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mServerId:Ljava/lang/String;

    const/16 v10, 0xa

    invoke-static {p1, v10}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mServerId:Ljava/lang/String;

    .line 117
    iget-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mServerType:Ljava/lang/String;

    const/16 v10, 0xb

    invoke-static {p1, v10}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mServerType:Ljava/lang/String;

    .line 118
    iget-wide v10, p0, Lcom/miui/gallery/data/DBCloud;->mServerTag:J

    const/16 v7, 0xd

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v6, v10, v11, v12, v13}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/miui/gallery/data/DBCloud;->mServerTag:J

    .line 119
    iget-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mServerStatus:Ljava/lang/String;

    const/16 v10, 0xc

    invoke-static {p1, v10}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mServerStatus:Ljava/lang/String;

    .line 120
    iget v7, p0, Lcom/miui/gallery/data/DBCloud;->mLocalFlag:I

    const/16 v10, 0x23

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v6, v7, v10}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v7

    iput v7, p0, Lcom/miui/gallery/data/DBCloud;->mLocalFlag:I

    .line 121
    iget-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mThumbnailFile:Ljava/lang/String;

    const/16 v10, 0x24

    invoke-static {p1, v10}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mThumbnailFile:Ljava/lang/String;

    .line 123
    iget-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mDownloadFile:Ljava/lang/String;

    const/16 v10, 0x25

    invoke-static {p1, v10}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mDownloadFile:Ljava/lang/String;

    .line 124
    iget-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mMicroThumbFile:Ljava/lang/String;

    const/16 v10, 0x29

    invoke-static {p1, v10}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mMicroThumbFile:Ljava/lang/String;

    .line 125
    iget-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mLocalFile:Ljava/lang/String;

    const/16 v10, 0x26

    invoke-static {p1, v10}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mLocalFile:Ljava/lang/String;

    .line 126
    iget-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mSha1:Ljava/lang/String;

    const/16 v10, 0x27

    invoke-static {p1, v10}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mSha1:Ljava/lang/String;

    .line 129
    :try_start_0
    sget-object v7, Lcom/miui/gallery/data/DBCloud;->sExifDataConst:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;

    .line 130
    .local v1, exifDataConst:Lcom/miui/gallery/data/DBCloud$ExifDataConst;
    iget v7, v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->exifValueType:I

    packed-switch v7, :pswitch_data_0

    .line 166
    const-string v7, "DBCloud"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exifDataConst.exifValueType is wrong: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->exifValueType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    .end local v1           #exifDataConst:Lcom/miui/gallery/data/DBCloud$ExifDataConst;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Lorg/json/JSONException;
    const-string v7, "DBCloud"

    const-string v10, "DBCloud(Cursor c): put JSON error"

    invoke-static {v7, v10}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    if-nez v4, :cond_2

    invoke-virtual {v6}, Lcom/miui/gallery/util/UpdateHelper;->isUpdated()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_2
    move v7, v9

    :goto_1
    return v7

    .line 132
    .restart local v1       #exifDataConst:Lcom/miui/gallery/data/DBCloud$ExifDataConst;
    .restart local v2       #i$:Ljava/util/Iterator;
    :pswitch_0
    :try_start_1
    iget v7, v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->columnIndex:I

    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 133
    iget-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mExifInfo:Lorg/json/JSONObject;

    iget-object v10, v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->exifTagName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 134
    const/4 v4, 0x1

    .line 136
    iget-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mExifInfo:Lorg/json/JSONObject;

    iget-object v10, v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->exifTagName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 139
    :cond_3
    iget v7, v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->columnIndex:I

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 140
    .local v3, intValue:I
    iget-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mExifInfo:Lorg/json/JSONObject;

    iget-object v10, v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->exifTagName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 141
    iget-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mExifInfo:Lorg/json/JSONObject;

    iget-object v10, v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->exifTagName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7, v3}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v3

    .line 145
    :goto_2
    iget-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mExifInfo:Lorg/json/JSONObject;

    iget-object v10, v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->exifTagName:Ljava/lang/String;

    invoke-virtual {v7, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 143
    :cond_4
    const/4 v4, 0x1

    goto :goto_2

    .line 149
    .end local v3           #intValue:I
    :pswitch_1
    iget v7, v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->columnIndex:I

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, stringValue:Ljava/lang/String;
    if-nez v5, :cond_5

    .line 151
    iget-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mExifInfo:Lorg/json/JSONObject;

    iget-object v10, v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->exifTagName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 152
    const/4 v4, 0x1

    .line 154
    iget-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mExifInfo:Lorg/json/JSONObject;

    iget-object v10, v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->exifTagName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 157
    :cond_5
    iget-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mExifInfo:Lorg/json/JSONObject;

    iget-object v10, v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->exifTagName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 158
    iget-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mExifInfo:Lorg/json/JSONObject;

    iget-object v10, v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->exifTagName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #stringValue:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 162
    .restart local v5       #stringValue:Ljava/lang/String;
    :goto_3
    iget-object v7, p0, Lcom/miui/gallery/data/DBCloud;->mExifInfo:Lorg/json/JSONObject;

    iget-object v10, v1, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->exifTagName:Ljava/lang/String;

    invoke-virtual {v7, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 160
    :cond_6
    const/4 v4, 0x1

    goto :goto_3

    .end local v1           #exifDataConst:Lcom/miui/gallery/data/DBCloud$ExifDataConst;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #stringValue:Ljava/lang/String;
    :cond_7
    move v7, v8

    .line 174
    goto/16 :goto_1

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDateModified(J)V
    .locals 0
    .parameter "mDateModified"

    .prologue
    .line 317
    iput-wide p1, p0, Lcom/miui/gallery/data/DBCloud;->mDateModified:J

    .line 318
    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0
    .parameter "mServerId"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/miui/gallery/data/DBCloud;->mServerId:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setSha1(Ljava/lang/String;)V
    .locals 0
    .parameter "mSha1"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/miui/gallery/data/DBCloud;->mSha1:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .parameter "mSize"

    .prologue
    .line 309
    iput-wide p1, p0, Lcom/miui/gallery/data/DBCloud;->mSize:J

    .line 310
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 178
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 180
    .local v0, cloudJson:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "groupId"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getGroupId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 181
    const-string v2, "size"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getSize()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 182
    const-string v2, "mimeType"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string v2, "title"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string v2, "description"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v2, "fileName"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v2, "dateTaken"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getDatetaken()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 187
    const-string v2, "dateModified"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getDateModified()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 188
    const-string v2, "sha1"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getSha1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    const-string v2, "id"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getServerStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 193
    const-string v2, "status"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getServerStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getServerTag()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 196
    const-string v2, "tag"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getServerTag()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getServerType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 213
    const-string v2, "DBCloud"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type is invalid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getServerType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    const-string v2, "exifInfo"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getExifInfo()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    :goto_1
    return-object v0

    .line 200
    :pswitch_0
    const-string v2, "type"

    const-string v3, "image"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, e:Lorg/json/JSONException;
    const-string v2, "DBCloud"

    const-string v3, "toJSONObject: get JSON error"

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 204
    .end local v1           #e:Lorg/json/JSONException;
    :pswitch_1
    :try_start_1
    const-string v2, "type"

    const-string v3, "video"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    const-string v2, "duration"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getDuration()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 209
    :pswitch_2
    const-string v2, "type"

    const-string v3, "group"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
