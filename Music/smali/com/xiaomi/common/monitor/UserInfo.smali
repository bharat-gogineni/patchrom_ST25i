.class public Lcom/xiaomi/common/monitor/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.xiaomi.common.UserInfo"

.field private static final LastRefreshTimeKey:Ljava/lang/String; = "last_refresh"

.field private static final LocationKey:Ljava/lang/String; = "location"

.field private static final PhoneInfoKey:Ljava/lang/String; = "phone_info"

.field private static final Preference_Name:Ljava/lang/String; = "XiaoMi User Info"

.field private static final UserIdKey:Ljava/lang/String; = "user_id"

.field private static final WidgetPositionKey:Ljava/lang/String; = "wdiget_pos"

.field private static preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 48
    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 50
    .local v0, telephonyMgr:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 54
    .end local v0           #telephonyMgr:Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    .line 52
    :catch_0
    move-exception v1

    .line 54
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method public static getLastRefreshTime(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 180
    invoke-static {p0}, Lcom/xiaomi/common/monitor/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_refresh"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLocation(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 201
    invoke-static {p0}, Lcom/xiaomi/common/monitor/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "location"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 111
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 112
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Ljava/io/StringWriter;-><init>(I)V

    .line 115
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 116
    const-string v3, ""

    const-string v4, "root"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    invoke-static {p0}, Lcom/xiaomi/common/monitor/UserInfo;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 119
    const-string v3, "IMEI"

    const-string v4, "0"

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/monitor/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    const-string v3, "Build.BOARD"

    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/monitor/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v3, "Build.BRAND"

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/monitor/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v3, "Build.DEVICE"

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/monitor/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v3, "Build.DISPLAY"

    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/monitor/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v3, "Build.FINGERPRINT"

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/monitor/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v3, "Build.HOST"

    sget-object v4, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/monitor/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v3, "Build.ID"

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/monitor/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v3, "Build.MODEL"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/monitor/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v3, "Build.PRODUCT"

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/monitor/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v3, "Build.TAGS"

    sget-object v4, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/monitor/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v3, "Build.TYPE"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/monitor/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v3, "Build.USER"

    sget-object v4, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/monitor/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v3, "Build.VERSION.INCREMENTAL"

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/monitor/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v3, "Build.VERSION.RELEASE"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/monitor/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v3, "Build.VERSION.SDK"

    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/monitor/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v3, ""

    const-string v4, "root"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 161
    :goto_1
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 121
    :cond_0
    :try_start_1
    const-string v3, "IMEI"

    invoke-static {p0}, Lcom/xiaomi/common/monitor/UserInfo;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/xiaomi/common/monitor/UserInfo;->setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 154
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 157
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 159
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 214
    sget-object v0, Lcom/xiaomi/common/monitor/UserInfo;->preferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 215
    const-string v0, "XiaoMi User Info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/monitor/UserInfo;->preferences:Landroid/content/SharedPreferences;

    .line 218
    :cond_0
    sget-object v0, Lcom/xiaomi/common/monitor/UserInfo;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 30
    invoke-static {p0}, Lcom/xiaomi/common/monitor/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "user_id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, userId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v1, "user_id"

    invoke-static {p0, v1, v0}, Lcom/xiaomi/common/monitor/UserInfo;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    return-object v0
.end method

.method public static getUserIdQueryString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 63
    const-string v0, "uuid=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/xiaomi/common/monitor/UserInfo;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWidgetIconPosition(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/common/monitor/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wdiget_pos"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isPhoneInfoSent(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 94
    invoke-static {p0}, Lcom/xiaomi/common/monitor/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "phone_info"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static markPhoneInfoSent(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "isSent"

    .prologue
    .line 102
    const-string v0, "phone_info"

    invoke-static {p0, v0, p1}, Lcom/xiaomi/common/monitor/UserInfo;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 103
    return-void
.end method

.method private static setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 228
    invoke-static {p0}, Lcom/xiaomi/common/monitor/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 229
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 231
    return-void
.end method

.method private static setInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 222
    invoke-static {p0}, Lcom/xiaomi/common/monitor/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 223
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 224
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    return-void
.end method

.method public static setLastRefreshTime(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "time"

    .prologue
    .line 190
    invoke-static {p0}, Lcom/xiaomi/common/monitor/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_refresh"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 193
    return-void
.end method

.method public static setLocation(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "city"

    .prologue
    .line 210
    const-string v0, "location"

    invoke-static {p0, v0, p1}, Lcom/xiaomi/common/monitor/UserInfo;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public static setPhoneInfo(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "status"

    .prologue
    .line 170
    const-string v0, "phone_info"

    invoke-static {p0, v0, p1}, Lcom/xiaomi/common/monitor/UserInfo;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 171
    return-void
.end method

.method private static setSerializerKeyValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "serializer"
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    const-string v0, ""

    const-string v1, "item"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    const-string v0, ""

    const-string v1, "key"

    invoke-interface {p0, v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    invoke-interface {p0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 245
    const-string v0, ""

    const-string v1, "item"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 246
    return-void
.end method

.method private static setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 234
    invoke-static {p0}, Lcom/xiaomi/common/monitor/UserInfo;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 235
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    return-void
.end method

.method public static setWidgetIconPosition(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "pos"

    .prologue
    .line 83
    if-nez p0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wdiget_pos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/xiaomi/common/monitor/UserInfo;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 86
    return-void
.end method
