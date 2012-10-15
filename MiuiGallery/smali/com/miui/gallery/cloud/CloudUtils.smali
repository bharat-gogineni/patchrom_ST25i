.class public Lcom/miui/gallery/cloud/CloudUtils;
.super Ljava/lang/Object;
.source "CloudUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/CloudUtils$HttpMethod;
    }
.end annotation


# static fields
.field public static final CLOUD_FILE_PATH:Ljava/lang/String;

.field public static final DOWNLOAD_FILE_PATH:Ljava/lang/String;

.field public static final DOWNLOAD_FILE_PATH_CAMERA:Ljava/lang/String;

.field public static final DOWNLOAD_FILE_PATH_SCREENSHOTS:Ljava/lang/String;

.field public static final DOWNLOAD_FILE_PATH_TEMP:Ljava/lang/String;

.field public static final MICRO_THUMBNAIL_FILE_PATH:Ljava/lang/String;

.field public static final MICRO_THUMBNAIL_FILE_PATH_CAMERA:Ljava/lang/String;

.field public static final MICRO_THUMBNAIL_FILE_PATH_SCREENSHOTS:Ljava/lang/String;

.field public static final MICRO_THUMBNAIL_FILE_PATH_TEMP:Ljava/lang/String;

.field public static final PROJECTION_ALL:[Ljava/lang/String;

.field public static final THUMBNAIL_FILE_PATH:Ljava/lang/String;

.field public static final THUMBNAIL_FILE_PATH_CAMERA:Ljava/lang/String;

.field public static final THUMBNAIL_FILE_PATH_SCREENSHOTS:Ljava/lang/String;

.field public static final THUMBNAIL_FILE_PATH_TEMP:Ljava/lang/String;

.field private static sUIDownloadMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, " * "

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->PROJECTION_ALL:[Ljava/lang/String;

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/MIUI/Gallery/cloud/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->CLOUD_FILE_PATH:Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/cloud/CloudUtils;->CLOUD_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".downloadFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->DOWNLOAD_FILE_PATH:Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/cloud/CloudUtils;->CLOUD_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".thumbnailFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->THUMBNAIL_FILE_PATH:Ljava/lang/String;

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/cloud/CloudUtils;->CLOUD_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".microthumbnailFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->MICRO_THUMBNAIL_FILE_PATH:Ljava/lang/String;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/cloud/CloudUtils;->DOWNLOAD_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->DOWNLOAD_FILE_PATH_CAMERA:Ljava/lang/String;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/cloud/CloudUtils;->DOWNLOAD_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Screenshots"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->DOWNLOAD_FILE_PATH_SCREENSHOTS:Ljava/lang/String;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/cloud/CloudUtils;->DOWNLOAD_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->DOWNLOAD_FILE_PATH_TEMP:Ljava/lang/String;

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/cloud/CloudUtils;->THUMBNAIL_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->THUMBNAIL_FILE_PATH_CAMERA:Ljava/lang/String;

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/cloud/CloudUtils;->THUMBNAIL_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Screenshots"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->THUMBNAIL_FILE_PATH_SCREENSHOTS:Ljava/lang/String;

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/cloud/CloudUtils;->THUMBNAIL_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->THUMBNAIL_FILE_PATH_TEMP:Ljava/lang/String;

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/cloud/CloudUtils;->MICRO_THUMBNAIL_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->MICRO_THUMBNAIL_FILE_PATH_CAMERA:Ljava/lang/String;

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/cloud/CloudUtils;->MICRO_THUMBNAIL_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Screenshots"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->MICRO_THUMBNAIL_FILE_PATH_SCREENSHOTS:Ljava/lang/String;

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/cloud/CloudUtils;->MICRO_THUMBNAIL_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudUtils;->MICRO_THUMBNAIL_FILE_PATH_TEMP:Ljava/lang/String;

    .line 221
    sput-boolean v2, Lcom/miui/gallery/cloud/CloudUtils;->sUIDownloadMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    return-void
.end method

.method private static addRetryParameters(Ljava/util/ArrayList;IZLmiui/net/ExtendedAuthToken;)V
    .locals 4
    .parameter
    .parameter "retryTimes"
    .parameter "needReRequest"
    .parameter "extToken"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;IZ",
            "Lmiui/net/ExtendedAuthToken;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 605
    .local p0, parameters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    if-lez p1, :cond_0

    .line 606
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "retry"

    iget-object v2, p3, Lmiui/net/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/cloud/CloudUtils;->encodeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    :cond_0
    if-eqz p2, :cond_1

    .line 611
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "needReRequest"

    iget-object v2, p3, Lmiui/net/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/cloud/CloudUtils;->encodeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_1
    return-void
.end method

.method public static appendUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .parameter "origin"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 660
    .local p1, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-nez p0, :cond_0

    .line 661
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "origin is not allowed null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 664
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 665
    .local v3, urlBuilder:Ljava/lang/StringBuilder;
    const-string v5, "?"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 666
    const-string v5, "?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 670
    if-eqz v0, :cond_2

    .line 671
    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/NameValuePair;

    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    .line 675
    .local v1, name:Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/NameValuePair;

    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 677
    .local v4, value:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 682
    .end local v1           #name:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 684
    .local v2, url:Ljava/lang/String;
    return-object v2
.end method

.method public static canSaveImage(Landroid/content/Context;Z)Z
    .locals 5
    .parameter "context"
    .parameter "isBackGround"

    .prologue
    const/4 v2, 0x1

    .line 808
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    .line 809
    .local v0, freeSpace:J
    const-wide/32 v3, 0x3200000

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1

    .line 810
    if-nez p1, :cond_0

    .line 811
    const v3, 0x7f0d00d4

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 813
    :cond_0
    const-string v2, "CloudUtils"

    const-string v3, "Can\'t save image, sd card has less than 50M space left"

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const/4 v2, 0x0

    .line 817
    :cond_1
    return v2
.end method

.method public static canUpload(Ljava/io/File;I)Z
    .locals 5
    .parameter "file"
    .parameter "cloudGroupId"

    .prologue
    .line 960
    invoke-static {p0}, Lmiui/os/ExtraFileUtils;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 961
    .local v0, suffix:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, v0}, Lcom/miui/gallery/cloud/CloudUtils;->isSuffixNeedScan(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x1e00000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getFilterMinSize()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 964
    const/4 v1, 0x1

    .line 966
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static canUpload(Ljava/lang/String;I)Z
    .locals 1
    .parameter "filePath"
    .parameter "cloudGroupId"

    .prologue
    .line 970
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    const/4 v0, 0x0

    .line 973
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/miui/gallery/cloud/CloudUtils;->canUpload(Ljava/io/File;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static checkNetState(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 693
    invoke-static {p0}, Lcom/miui/gallery/cloud/CloudUtils;->getNetState(Landroid/content/Context;)Lcn/kuaipan/kss/KssDef$NetState;

    move-result-object v0

    .line 694
    .local v0, netState:Lcn/kuaipan/kss/KssDef$NetState;
    if-nez v0, :cond_0

    .line 695
    const v2, 0x7f0d00d2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 696
    const/4 v1, 0x0

    .line 698
    :cond_0
    return v1
.end method

.method public static convertOneDownload(ILjava/lang/String;)I
    .locals 13
    .parameter "groupID"
    .parameter "absoluteDownloadPath"

    .prologue
    const/4 v12, 0x0

    .line 486
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 487
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v11, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 489
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 490
    const/4 v6, 0x0

    .line 533
    :cond_0
    :goto_0
    return v6

    .line 493
    :cond_1
    const/16 v3, 0xfa

    .line 494
    .local v3, microTargetSize:I
    invoke-static {}, Lcom/miui/gallery/app/Config$GlobalConfig;->get()Lcom/miui/gallery/app/Config$GlobalConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/miui/gallery/app/Config$GlobalConfig;->getScreenWidthPixel()I

    move-result v10

    .line 495
    .local v10, width:I
    invoke-static {}, Lcom/miui/gallery/app/Config$GlobalConfig;->get()Lcom/miui/gallery/app/Config$GlobalConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/miui/gallery/app/Config$GlobalConfig;->getScreenHeightPixel()I

    move-result v2

    .line 496
    .local v2, height:I
    if-le v10, v2, :cond_5

    move v9, v10

    .line 498
    .local v9, thumbnailTargetSize:I
    :goto_1
    invoke-static {p0}, Lcom/miui/gallery/cloud/CloudUtils;->getThumbnailFolderPathByCloudGroupId(I)Ljava/lang/String;

    move-result-object v8

    .line 499
    .local v8, thumbnailFolder:Ljava/lang/String;
    invoke-static {p0}, Lcom/miui/gallery/cloud/CloudUtils;->getMicroThumbnailFolderPathByCloudGroupId(I)Ljava/lang/String;

    move-result-object v4

    .line 500
    .local v4, microThumbnailFolder:Ljava/lang/String;
    invoke-static {p1}, Lmiui/os/ExtraFileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 502
    .local v1, fileName:Ljava/lang/String;
    invoke-static {v12, p1, v5, v3}, Lcom/miui/gallery/data/DecodeUtils;->requestDecode(Lcom/miui/gallery/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 505
    .local v0, covertBitmap:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 506
    .local v6, retType:I
    const/4 v7, 0x0

    .line 507
    .local v7, savedFile:Ljava/io/File;
    if-eqz v0, :cond_2

    .line 508
    invoke-static {v0, v4, v1}, Lcom/miui/gallery/cloud/CloudUtils;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 509
    if-eqz v7, :cond_2

    .line 510
    or-int/lit8 v6, v6, 0x1

    .line 514
    :cond_2
    if-eqz v0, :cond_3

    .line 515
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 518
    :cond_3
    invoke-static {v12, p1, v5, v9}, Lcom/miui/gallery/data/DecodeUtils;->requestDecode(Lcom/miui/gallery/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 522
    if-eqz v0, :cond_4

    .line 523
    invoke-static {v0, v8, v1}, Lcom/miui/gallery/cloud/CloudUtils;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 524
    if-eqz v7, :cond_4

    .line 525
    or-int/lit8 v6, v6, 0x2

    .line 529
    :cond_4
    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .end local v0           #covertBitmap:Landroid/graphics/Bitmap;
    .end local v1           #fileName:Ljava/lang/String;
    .end local v4           #microThumbnailFolder:Ljava/lang/String;
    .end local v6           #retType:I
    .end local v7           #savedFile:Ljava/io/File;
    .end local v8           #thumbnailFolder:Ljava/lang/String;
    .end local v9           #thumbnailTargetSize:I
    :cond_5
    move v9, v2

    .line 496
    goto :goto_1
.end method

.method public static copyImage(Landroid/content/Context;Lcom/miui/gallery/data/DBCloud;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .parameter "context"
    .parameter "cloud"
    .parameter "destPath"
    .parameter "destName"

    .prologue
    .line 384
    const-string v11, "CloudUtils"

    const-string v12, "copy image start"

    invoke-static {v11, v12}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 387
    .local v8, startTime:J
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/DBCloud;->getLocalFile()Ljava/lang/String;

    move-result-object v5

    .line 388
    .local v5, localFile:Ljava/lang/String;
    const/4 v3, 0x0

    .line 389
    .local v3, is:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 391
    .local v6, os:Ljava/io/OutputStream;
    const/4 v11, 0x1

    :try_start_0
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/miui/gallery/util/GalleryUtils;->createFolder(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_0

    .line 420
    :goto_0
    return-void

    .line 394
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, destFilePath:Ljava/lang/String;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 397
    .end local v3           #is:Ljava/io/InputStream;
    .local v4, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 399
    .end local v6           #os:Ljava/io/OutputStream;
    .local v7, os:Ljava/io/OutputStream;
    :try_start_2
    invoke-static {v4, v7}, Lcom/miui/gallery/util/GalleryUtils;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 401
    const/16 v11, 0x1b6

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-static {v1, v11, v12, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 403
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 405
    .local v10, values:Landroid/content/ContentValues;
    const-string v11, "microthumbfile"

    invoke-virtual {v10, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v11, "thumbnailFile"

    invoke-virtual {v10, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v11, "downloadFile"

    invoke-virtual {v10, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v11, "fileName"

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 410
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_id = \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/DBCloud;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v10, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v10           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_1
    move-object v6, v7

    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v6       #os:Ljava/io/OutputStream;
    move-object v3, v4

    .line 419
    .end local v1           #destFilePath:Ljava/lang/String;
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :goto_2
    const-string v11, "CloudUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "copy image finish, time:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v8

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 412
    .end local v3           #is:Ljava/io/InputStream;
    .end local v6           #os:Ljava/io/OutputStream;
    .restart local v1       #destFilePath:Ljava/lang/String;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    .restart local v10       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 413
    .local v2, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 416
    .end local v2           #e:Ljava/lang/Exception;
    .end local v10           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v2

    move-object v6, v7

    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v6       #os:Ljava/io/OutputStream;
    move-object v3, v4

    .line 417
    .end local v1           #destFilePath:Ljava/lang/String;
    .end local v4           #is:Ljava/io/InputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v3       #is:Ljava/io/InputStream;
    :goto_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 416
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    goto :goto_3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v1       #destFilePath:Ljava/lang/String;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_3
.end method

.method public static decodeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "security"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 628
    invoke-static {p0, v2}, Lmiui/net/CloudCoder;->newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 629
    .local v0, decoder:Ljavax/crypto/Cipher;
    new-instance v1, Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static deleteDirty(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "id"

    .prologue
    .line 424
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static encodeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "security"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 620
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lmiui/net/CloudCoder;->newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 621
    .local v0, coder:Ljavax/crypto/Cipher;
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCloudGroupIdByFilePath(Ljava/lang/String;)I
    .locals 2
    .parameter "filePath"

    .prologue
    .line 821
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 822
    .local v0, lowFilePath:Ljava/lang/String;
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->EXTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 823
    const/4 v1, 0x1

    .line 828
    :goto_0
    return v1

    .line 824
    :cond_0
    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->EXTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 826
    const/4 v1, 0x2

    goto :goto_0

    .line 828
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getContentValuesForCreated(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 1
    .parameter "schemaJson"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-static {p0}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForDefault(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v0

    .line 364
    .local v0, values:Landroid/content/ContentValues;
    return-object v0
.end method

.method private static getContentValuesForDefault(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 6
    .parameter "schemaJson"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 322
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 324
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "serverId"

    const-string v4, "id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v3, "serverStatus"

    const-string v4, "status"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v3, "serverTag"

    const-string v4, "tag"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 328
    const-string v3, "type"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, serverType:Ljava/lang/String;
    const/4 v1, 0x0

    .line 330
    .local v1, type:I
    const-string v3, "image"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 331
    const/4 v1, 0x1

    .line 339
    :goto_0
    const-string v3, "serverType"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    const-string v3, "sha1"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    const-string v3, "sha1"

    const-string v4, "sha1"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_0
    return-object v2

    .line 332
    :cond_1
    const-string v3, "video"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 333
    const/4 v1, 0x2

    goto :goto_0

    .line 334
    :cond_2
    const-string v3, "group"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 335
    const/4 v1, 0x0

    goto :goto_0

    .line 337
    :cond_3
    const-string v3, "CloudUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error server type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getContentValuesForSync(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 7
    .parameter "schemaJson"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-static {p0}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForDefault(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v3

    .line 254
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "groupId"

    const-string v5, "groupId"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    const-string v4, "fileName"

    const-string v5, "fileName"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v4, "localFlag"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    const-string v4, "thumbnailFile"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 259
    const-string v4, "microthumbfile"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 261
    const-string v4, "size"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 262
    const-string v4, "size"

    const-string v5, "size"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 264
    :cond_0
    const-string v4, "dateModified"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 265
    const-string v4, "dateModified"

    const-string v5, "dateModified"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 268
    :cond_1
    const-string v4, "mimeType"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 269
    const-string v4, "mimeType"

    const-string v5, "mimeType"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_2
    const-string v4, "title"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 273
    const-string v4, "title"

    const-string v5, "title"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_3
    const-string v4, "description"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 276
    const-string v4, "description"

    const-string v5, "description"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_4
    const-string v4, "dateTaken"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 280
    const-string v4, "dateTaken"

    const-string v5, "dateTaken"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 283
    :cond_5
    const-string v4, "duration"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 284
    const-string v4, "duration"

    const-string v5, "duration"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    :cond_6
    const-string v4, "size"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 288
    const-string v4, "size"

    const-string v5, "size"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 292
    :cond_7
    const-string v4, "exifInfo"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 293
    const-string v4, "exifInfo"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 294
    .local v1, exifJson:Lorg/json/JSONObject;
    sget-object v4, Lcom/miui/gallery/data/DBCloud;->sExifDataConst:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_8
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/DBCloud$ExifDataConst;

    .line 295
    .local v0, exifDataConst:Lcom/miui/gallery/data/DBCloud$ExifDataConst;
    iget v4, v0, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->exifValueType:I

    packed-switch v4, :pswitch_data_0

    .line 311
    const-string v4, "CloudUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exifDataConst.exifValueType is wrong: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->exifValueType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 297
    :pswitch_0
    iget-object v4, v0, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->exifTagName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 298
    sget-object v4, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    iget v5, v0, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->columnIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/util/TableColumn;

    iget-object v4, v4, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    iget-object v5, v0, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->exifTagName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 304
    :pswitch_1
    iget-object v4, v0, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->exifTagName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 305
    sget-object v4, Lcom/miui/gallery/util/GalleryDBHelper;->mCloudColumns:Ljava/util/ArrayList;

    iget v5, v0, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->columnIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/util/TableColumn;

    iget-object v4, v4, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    iget-object v5, v0, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->exifTagName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    .end local v0           #exifDataConst:Lcom/miui/gallery/data/DBCloud$ExifDataConst;
    .end local v1           #exifJson:Lorg/json/JSONObject;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_9
    return-object v3

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getContentValuesForUploadDeletePurged(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 3
    .parameter "schemaJson"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 350
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 351
    .local v0, values:Landroid/content/ContentValues;
    if-eqz p0, :cond_1

    .line 352
    const-string v1, "content"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    const-string v1, "content"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 355
    :cond_0
    invoke-static {p0}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForDefault(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v0

    .line 357
    :cond_1
    const-string v1, "localFlag"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    return-object v0
.end method

.method public static getCookies(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;)Lorg/apache/http/Header;
    .locals 4
    .parameter "account"
    .parameter "extToken"

    .prologue
    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "serviceToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    iget-object v1, p1, Lmiui/net/ExtendedAuthToken;->authToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    const-string v1, "; userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    iget-object v1, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Cookie"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getDownloadFolderPathByCloudGroupId(I)Ljava/lang/String;
    .locals 1
    .parameter "cloudGroupId"

    .prologue
    .line 433
    packed-switch p0, :pswitch_data_0

    .line 439
    sget-object v0, Lcom/miui/gallery/cloud/CloudUtils;->DOWNLOAD_FILE_PATH_TEMP:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 435
    :pswitch_0
    sget-object v0, Lcom/miui/gallery/cloud/CloudUtils;->DOWNLOAD_FILE_PATH_CAMERA:Ljava/lang/String;

    goto :goto_0

    .line 437
    :pswitch_1
    sget-object v0, Lcom/miui/gallery/cloud/CloudUtils;->DOWNLOAD_FILE_PATH_SCREENSHOTS:Ljava/lang/String;

    goto :goto_0

    .line 433
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getExternalStoragePathByCloudGroupId(I)Ljava/lang/String;
    .locals 1
    .parameter "cloudGropuId"

    .prologue
    .line 780
    packed-switch p0, :pswitch_data_0

    .line 786
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 787
    const-string v0, ""

    :goto_0
    return-object v0

    .line 782
    :pswitch_0
    sget-object v0, Lcom/miui/gallery/util/AlbumUtils;->EXTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

    goto :goto_0

    .line 784
    :pswitch_1
    sget-object v0, Lcom/miui/gallery/util/AlbumUtils;->EXTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

    goto :goto_0

    .line 780
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getFromXiaomi(Ljava/lang/String;Ljava/util/ArrayList;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;IZ)Lorg/json/JSONObject;
    .locals 5
    .parameter "url"
    .parameter
    .parameter "account"
    .parameter "extToken"
    .parameter "retryTimes"
    .parameter "needReRequest"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Landroid/accounts/Account;",
            "Lmiui/net/ExtendedAuthToken;",
            "IZ)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Lmiui/net/exception/MiCloudServerException;
        }
    .end annotation

    .prologue
    .line 578
    .local p1, parameters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    if-nez p1, :cond_0

    .line 579
    new-instance p1, Ljava/util/ArrayList;

    .end local p1           #parameters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .restart local p1       #parameters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :cond_0
    invoke-static {p1, p4, p5, p3}, Lcom/miui/gallery/cloud/CloudUtils;->addRetryParameters(Ljava/util/ArrayList;IZLmiui/net/ExtendedAuthToken;)V

    .line 584
    sget-object v3, Lcom/miui/gallery/cloud/CloudUtils$HttpMethod;->GET:Lcom/miui/gallery/cloud/CloudUtils$HttpMethod;

    iget-object v4, p3, Lmiui/net/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-static {v3, p0, p1, v4}, Lcom/miui/gallery/cloud/CloudUtils;->getSignature(Lcom/miui/gallery/cloud/CloudUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 585
    .local v2, signature:Ljava/lang/String;
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "signature"

    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    invoke-static {p0, p1}, Lcom/miui/gallery/cloud/CloudUtils;->appendUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    .line 591
    invoke-static {p2, p3}, Lcom/miui/gallery/cloud/CloudUtils;->getCookies(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;)Lorg/apache/http/Header;

    move-result-object v0

    .line 597
    .local v0, cookies:Lorg/apache/http/Header;
    invoke-static {p0, v0}, Lcom/miui/gallery/cloud/Network;->doHttpGet(Ljava/lang/String;Lorg/apache/http/Header;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/cloud/CloudUtils;->getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, resultString:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p3, Lmiui/net/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/miui/gallery/cloud/CloudUtils;->decodeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method public static getItemByServerID(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBCloud;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 875
    .line 877
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/cloud/CloudUtils;->PROJECTION_ALL:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serverId = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 881
    if-eqz v1, :cond_1

    .line 882
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 883
    new-instance v0, Lcom/miui/gallery/data/DBCloud;

    invoke-direct {v0, v1}, Lcom/miui/gallery/data/DBCloud;-><init>(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 889
    if-eqz v1, :cond_0

    .line 890
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 893
    :cond_0
    :goto_0
    return-object v0

    .line 886
    :cond_1
    :try_start_2
    const-string v0, "CloudUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "there isn\'t have any item in local DB for serverId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 889
    :cond_2
    if-eqz v1, :cond_3

    .line 890
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    .line 893
    goto :goto_0

    .line 889
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v6, :cond_4

    .line 890
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 889
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_1
.end method

.method public static getMicroThumbnailFolderPathByCloudGroupId(I)Ljava/lang/String;
    .locals 1
    .parameter "cloudGroupId"

    .prologue
    .line 444
    packed-switch p0, :pswitch_data_0

    .line 450
    sget-object v0, Lcom/miui/gallery/cloud/CloudUtils;->MICRO_THUMBNAIL_FILE_PATH_TEMP:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 446
    :pswitch_0
    sget-object v0, Lcom/miui/gallery/cloud/CloudUtils;->MICRO_THUMBNAIL_FILE_PATH_CAMERA:Ljava/lang/String;

    goto :goto_0

    .line 448
    :pswitch_1
    sget-object v0, Lcom/miui/gallery/cloud/CloudUtils;->MICRO_THUMBNAIL_FILE_PATH_SCREENSHOTS:Ljava/lang/String;

    goto :goto_0

    .line 444
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getNetState(Landroid/content/Context;)Lcn/kuaipan/kss/KssDef$NetState;
    .locals 5
    .parameter "context"

    .prologue
    .line 702
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 705
    .local v0, connManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 707
    :cond_0
    const/4 v4, 0x0

    .line 728
    :goto_0
    return-object v4

    .line 711
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 713
    .local v2, state:Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v2, :cond_2

    .line 714
    sget-object v4, Lcn/kuaipan/kss/KssDef$NetState;->Wifi:Lcn/kuaipan/kss/KssDef$NetState;

    goto :goto_0

    .line 717
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 718
    .local v3, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v1

    .line 719
    .local v1, netWorkClass:I
    packed-switch v1, :pswitch_data_0

    .line 728
    sget-object v4, Lcn/kuaipan/kss/KssDef$NetState;->MN2G:Lcn/kuaipan/kss/KssDef$NetState;

    goto :goto_0

    .line 721
    :pswitch_0
    sget-object v4, Lcn/kuaipan/kss/KssDef$NetState;->MN2G:Lcn/kuaipan/kss/KssDef$NetState;

    goto :goto_0

    .line 725
    :pswitch_1
    sget-object v4, Lcn/kuaipan/kss/KssDef$NetState;->MN3G:Lcn/kuaipan/kss/KssDef$NetState;

    goto :goto_0

    .line 719
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getProxies(Landroid/content/Context;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;)[Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "account"
    .parameter "extToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Lmiui/net/exception/MiCloudServerException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 737
    const-string v2, "http://galleryapi.micloud.xiaomi.net/mic/v1/gallery/user/%s/proxies"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v10, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v10, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 739
    .local v0, getProxiesUrl:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .local v1, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "type"

    iget-object v10, p2, Lmiui/net/ExtendedAuthToken;->security:Ljava/lang/String;

    const/4 v11, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/gallery/cloud/CloudUtils;->encodeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v3, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    const/4 v4, 0x0

    .line 746
    .local v4, retryTimes:I
    const/4 v9, 0x0

    .line 747
    .local v9, resultJson:Lorg/json/JSONObject;
    sget-object v6, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 749
    .local v6, getProxiesResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :goto_0
    const/4 v2, 0x3

    if-ge v4, v2, :cond_0

    move-object v2, p1

    move-object v3, p2

    .line 751
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/cloud/CloudUtils;->getFromXiaomi(Ljava/lang/String;Ljava/util/ArrayList;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v9

    .line 753
    invoke-static {p0, v9, v7}, Lcom/miui/gallery/cloud/CheckResult;->checkXMResultCode(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestItem;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v6

    .line 755
    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-ne v6, v2, :cond_1

    .line 764
    :cond_0
    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq v6, v2, :cond_2

    .line 765
    const-string v2, "CloudUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get proixes error:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :goto_1
    return-object v7

    .line 757
    :cond_1
    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-ne v6, v2, :cond_0

    .line 758
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 769
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "stat"

    const-string v5, "OK"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "proxies"

    const-string v5, "data"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v10, "list"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    .line 772
    .local v8, proxiesJson:Lorg/json/JSONObject;
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuaipan/kss/appmaster/MasterHelper;->parseKssProxiesInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 774
    .local v7, proxies:[Ljava/lang/String;
    goto :goto_1
.end method

.method public static getServerTypeByFilePath(Ljava/lang/String;)I
    .locals 1
    .parameter "filePath"

    .prologue
    .line 852
    invoke-static {p0}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->isImageFromFilePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    const/4 v0, 0x1

    .line 861
    :goto_0
    return v0

    .line 855
    :cond_0
    invoke-static {p0}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->isVideoFromFilePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 856
    const/4 v0, 0x2

    goto :goto_0

    .line 858
    :cond_1
    invoke-static {p0}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->isDirFromFilePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 859
    const/4 v0, 0x0

    goto :goto_0

    .line 861
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getSignature(Lcom/miui/gallery/cloud/CloudUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "httpMethod"
    .parameter "url"
    .parameter
    .parameter "security"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/cloud/CloudUtils$HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 647
    .local p2, paramList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 648
    .local v2, params:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 649
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 650
    .local v1, pair:Lorg/apache/http/NameValuePair;
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 654
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #pair:Lorg/apache/http/NameValuePair;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudUtils$HttpMethod;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1, v2, p3}, Lmiui/net/CloudCoder;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 368
    if-nez p0, :cond_0

    .line 369
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "input stream is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 372
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .local v3, stringBuilder:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 374
    .local v1, bufferedReader:Ljava/io/BufferedReader;
    const/16 v4, 0x400

    new-array v0, v4, [C

    .line 375
    .local v0, buf:[C
    const/4 v2, -0x1

    .line 376
    .local v2, i:I
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 377
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 380
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getThumbnailFolderPathByCloudGroupId(I)Ljava/lang/String;
    .locals 1
    .parameter "cloudGroupId"

    .prologue
    .line 537
    packed-switch p0, :pswitch_data_0

    .line 543
    sget-object v0, Lcom/miui/gallery/cloud/CloudUtils;->THUMBNAIL_FILE_PATH_TEMP:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 539
    :pswitch_0
    sget-object v0, Lcom/miui/gallery/cloud/CloudUtils;->THUMBNAIL_FILE_PATH_CAMERA:Ljava/lang/String;

    goto :goto_0

    .line 541
    :pswitch_1
    sget-object v0, Lcom/miui/gallery/cloud/CloudUtils;->THUMBNAIL_FILE_PATH_SCREENSHOTS:Ljava/lang/String;

    goto :goto_0

    .line 537
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getThumbnailTypeByFilePath(Ljava/lang/String;)I
    .locals 5
    .parameter "filePath"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 833
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 834
    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudUtils;->getExternalStoragePathByCloudGroupId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, cameraExternal:Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/gallery/cloud/CloudUtils;->getExternalStoragePathByCloudGroupId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 836
    .local v1, screenShotExternal:Ljava/lang/String;
    sget-object v4, Lcom/miui/gallery/cloud/CloudUtils;->THUMBNAIL_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 848
    :goto_0
    return v2

    .line 840
    :cond_0
    sget-object v2, Lcom/miui/gallery/cloud/CloudUtils;->MICRO_THUMBNAIL_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 841
    goto :goto_0

    .line 844
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 845
    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    .line 848
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isFileCorrect(Ljava/io/File;JJ)Z
    .locals 1
    .parameter "file"
    .parameter "dateModified"
    .parameter "size"

    .prologue
    .line 945
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    const/4 v0, 0x1

    .line 948
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFileCorrect(Ljava/lang/String;JJ)Z
    .locals 1
    .parameter "filePath"
    .parameter "dateModified"
    .parameter "size"

    .prologue
    .line 952
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    const/4 v0, 0x0

    .line 955
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2, p3, p4}, Lcom/miui/gallery/cloud/CloudUtils;->isFileCorrect(Ljava/io/File;JJ)Z

    move-result v0

    goto :goto_0
.end method

.method public static isFileInCloudDB(Ljava/lang/String;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 920
    .line 923
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(thumbnailFile = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " COLLATE NOCASE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "microthumbfile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " COLLATE NOCASE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "serverStatus"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "custom"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 933
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    .line 937
    if-eqz v1, :cond_0

    .line 938
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v6

    .line 941
    :goto_0
    return v0

    .line 937
    :cond_1
    if-eqz v1, :cond_2

    .line 938
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v7

    .line 941
    goto :goto_0

    .line 937
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_1
    if-eqz v1, :cond_3

    .line 938
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 937
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static isSuffixNeedScan(ILjava/lang/String;)Z
    .locals 3
    .parameter "cloudGroupId"
    .parameter "suffix"

    .prologue
    const/4 v1, 0x1

    .line 792
    const/4 v0, 0x0

    .line 793
    .local v0, needScan:Z
    if-ne p0, v1, :cond_3

    .line 794
    const-string v2, "jpg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "jpeg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 799
    :cond_1
    :goto_0
    return v0

    .line 794
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 795
    :cond_3
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 796
    const-string v1, "png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSuffixNotNeedDelete(Ljava/lang/String;)Z
    .locals 2
    .parameter "suffix"

    .prologue
    .line 803
    const-string v1, "nomedia"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "temp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 804
    .local v0, notNeedDelete:Z
    :goto_0
    return v0

    .line 803
    .end local v0           #notNeedDelete:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized isUIDownloading()Z
    .locals 2

    .prologue
    .line 246
    const-class v0, Lcom/miui/gallery/cloud/CloudUtils;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/miui/gallery/cloud/CloudUtils;->sUIDownloadMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static postToXiaomi(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;IZ)Lorg/json/JSONObject;
    .locals 8
    .parameter "context"
    .parameter "url"
    .parameter "data"
    .parameter "account"
    .parameter "extToken"
    .parameter "retryTimes"
    .parameter "needReRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lmiui/net/exception/MiCloudServerException;
        }
    .end annotation

    .prologue
    .line 552
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 554
    .local v1, parameters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    invoke-static {v1, p5, p6, p4}, Lcom/miui/gallery/cloud/CloudUtils;->addRetryParameters(Ljava/util/ArrayList;IZLmiui/net/ExtendedAuthToken;)V

    .line 556
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "data"

    iget-object v6, p4, Lmiui/net/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/gallery/cloud/CloudUtils;->encodeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    sget-object v4, Lcom/miui/gallery/cloud/CloudUtils$HttpMethod;->POST:Lcom/miui/gallery/cloud/CloudUtils$HttpMethod;

    iget-object v5, p4, Lmiui/net/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-static {v4, p1, v1, v5}, Lcom/miui/gallery/cloud/CloudUtils;->getSignature(Lcom/miui/gallery/cloud/CloudUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, signature:Ljava/lang/String;
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "signature"

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-static {p3, p4}, Lcom/miui/gallery/cloud/CloudUtils;->getCookies(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;)Lorg/apache/http/Header;

    move-result-object v0

    .line 568
    .local v0, cookies:Lorg/apache/http/Header;
    invoke-static {p0, p1, v1, v0}, Lcom/miui/gallery/cloud/Network;->doHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object v2

    .line 570
    .local v2, resultString:Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p4, Lmiui/net/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/miui/gallery/cloud/CloudUtils;->decodeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v4
.end method

.method private static saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .parameter "toSaveBitmap"
    .parameter "directory"
    .parameter "fileName"

    .prologue
    const/4 v4, 0x0

    .line 455
    invoke-static {p2}, Lmiui/os/ExtraFileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, fileExtension:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    .local v0, candidate:Ljava/io/File;
    const/4 v5, 0x1

    :try_start_0
    invoke-static {p1, v5}, Lcom/miui/gallery/util/GalleryUtils;->createFolder(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v0, v4

    .line 482
    .end local v0           #candidate:Ljava/io/File;
    :goto_0
    return-object v0

    .line 463
    .restart local v0       #candidate:Ljava/io/File;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 464
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v0, v4

    .line 465
    goto :goto_0

    .line 469
    :cond_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    .local v3, fos:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    :try_start_1
    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v6

    invoke-static {v5, p0, v6, v3}, Lcom/miui/gallery/util/GalleryUtils;->saveBitmapToOutputStream(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 476
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 477
    .local v1, e:Ljava/io/IOException;
    const-string v5, "CloudUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to save image: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->deleteFile(Ljava/io/File;)V

    move-object v0, v4

    .line 479
    goto :goto_0

    .line 474
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public static declared-synchronized setUIDownloading(Z)V
    .locals 3
    .parameter "uiMode"

    .prologue
    .line 239
    const-class v1, Lcom/miui/gallery/cloud/CloudUtils;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 240
    :try_start_0
    const-string v0, "SyncStateManager"

    const-string v2, "\u9000\u51fa\u524d\u53f0\u4e0b\u8f7d\u6a21\u5f0f"

    invoke-static {v0, v2}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    sput-boolean p0, Lcom/miui/gallery/cloud/CloudUtils;->sUIDownloadMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit v1

    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
