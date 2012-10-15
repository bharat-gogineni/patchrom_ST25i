.class public Lcom/android/settings/deviceinfo/LockDeviceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LockDeviceReceiver.java"


# static fields
.field private static sLockPasswordFilename:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private gotoSleep(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 103
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 104
    .local v0, powerManager:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 105
    return-void
.end method

.method private setSalt(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "token"

    .prologue
    .line 109
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 110
    .local v0, lDigest:Ljava/security/MessageDigest;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 111
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    .line 112
    .local v1, salt:J
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen.password_salt"

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v0           #lDigest:Ljava/security/MessageDigest;
    .end local v1           #salt:J
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 39
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, action:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    const-string v11, "miui.intent.action.LOCK_DEVICE"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 46
    const-string v11, "android.intent.extra.lock_password"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 47
    .local v6, password:Ljava/lang/String;
    const-string v11, "android.intent.extra.device_token"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 48
    .local v10, token:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 49
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 50
    .local v5, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 51
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v10}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->setSalt(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->saveLockPassword(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "lockscreen.password_type"

    const-wide/32 v13, 0x20000

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lmiui/provider/ExtraSettings$Secure;->FIND_DEVICE_PIN_LOCK:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 59
    .end local v5           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->gotoSleep(Landroid/content/Context;)V

    goto :goto_0

    .line 60
    .end local v6           #password:Ljava/lang/String;
    .end local v10           #token:Ljava/lang/String;
    :cond_3
    const-string v11, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "LOADED"

    const-string v12, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 63
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lmiui/provider/ExtraSettings$Secure;->REGISTER_FIND_DEVICE_SIM_NUMBER:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, regitsterNumber:Ljava/lang/String;
    const-string v11, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 67
    .local v9, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, currentPhoneNumber:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lmiui/provider/ExtraSettings$Secure;->PERMANENTLY_LOCK_SIM_CHANGE:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 72
    .local v7, permanentlyLockBySimChange:I
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 73
    .restart local v5       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/4 v4, 0x0

    .line 74
    .local v4, isSimChange:Z
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 75
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 76
    const/4 v4, 0x1

    .line 77
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->gotoSleep(Landroid/content/Context;)V

    .line 83
    :cond_5
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lmiui/provider/ExtraSettings$Secure;->PERMANENTLY_LOCK_SIM_CHANGE:Ljava/lang/String;

    if-eqz v4, :cond_7

    const/4 v11, 0x1

    :goto_2
    invoke-static {v12, v13, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 78
    :cond_6
    const/4 v11, 0x1

    if-ne v7, v11, :cond_5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 79
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 80
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->gotoSleep(Landroid/content/Context;)V

    goto :goto_1

    .line 83
    :cond_7
    const/4 v11, 0x0

    goto :goto_2

    .line 87
    .end local v2           #currentPhoneNumber:Ljava/lang/String;
    .end local v4           #isSimChange:Z
    .end local v5           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v7           #permanentlyLockBySimChange:I
    .end local v8           #regitsterNumber:Ljava/lang/String;
    .end local v9           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_8
    const-string v11, "com.xiaomi.action.FIND_DEVICE_STATUS_CHANGED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 88
    const-string v2, ""

    .line 89
    .restart local v2       #currentPhoneNumber:Ljava/lang/String;
    const-string v11, "find_device_enabled"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 90
    .local v3, enabled:Z
    if-eqz v3, :cond_9

    .line 91
    const-string v11, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 92
    .restart local v9       #telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 94
    .end local v9           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_9
    if-eqz v2, :cond_0

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lmiui/provider/ExtraSettings$Secure;->REGISTER_FIND_DEVICE_SIM_NUMBER:Ljava/lang/String;

    invoke-static {v11, v12, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public saveLockPassword(Ljava/lang/String;)V
    .locals 5
    .parameter "password"

    .prologue
    .line 118
    sget-object v2, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->sLockPasswordFilename:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/system/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, dataSystemDirectory:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "password.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->sLockPasswordFilename:Ljava/lang/String;

    .line 125
    .end local v0           #dataSystemDirectory:Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    sget-object v2, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->sLockPasswordFilename:Ljava/lang/String;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .local v1, raf:Ljava/io/RandomAccessFile;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 132
    :goto_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 136
    .end local v1           #raf:Ljava/io/RandomAccessFile;
    :goto_1
    return-void

    .line 130
    .restart local v1       #raf:Ljava/io/RandomAccessFile;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 133
    .end local v1           #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 134
    :catch_1
    move-exception v2

    goto :goto_1
.end method
