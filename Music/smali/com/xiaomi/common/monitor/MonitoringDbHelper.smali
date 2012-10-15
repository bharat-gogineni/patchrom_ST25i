.class public Lcom/xiaomi/common/monitor/MonitoringDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MonitoringDbHelper.java"


# static fields
.field public static final COLUMN_RECORD_KEY:Ljava/lang/String; = "key"

.field public static final COLUMN_RECORD_SCHEDULE:Ljava/lang/String; = "schedule"

.field public static final COLUMN_RECORD_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final COLUMN_RECORD_VALUE:Ljava/lang/String; = "value"

.field public static final DB_NAME:Ljava/lang/String; = "stat.db"

.field public static final DB_TABLE_RECORD:Ljava/lang/String; = "record"

.field private static final DB_VERSION:I = 0x1

.field public static final RecordStatus_Sent:I = 0x1

.field public static final RecordStatus_Waiting:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 26
    const-string v0, "stat.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 27
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 62
    :try_start_0
    const-string v1, "CREATE TABLE record (_id INTEGER PRIMARY KEY AUTOINCREMENT,key TEXT,value TEXT,timestamp INTEGER,schedule INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, ex:Landroid/database/SQLException;
    const-string v1, "com.xiaomi.common.Monitoring"

    const-string v2, "couldn\'t create table in stat database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    throw v0
.end method

.method private dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 80
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS record"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, ex:Landroid/database/SQLException;
    const-string v1, "com.xiaomi.common.Monitoring"

    const-string v2, "couldn\'t drop table in stat database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 34
    const-string v0, "com.xiaomi.common.Monitoring"

    const-string v1, "creating new database"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaomi/common/monitor/MonitoringDbHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 36
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 47
    if-lt p2, p3, :cond_0

    .line 55
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v0, "com.xiaomi.common.Monitoring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading downloads database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {p0, p1}, Lcom/xiaomi/common/monitor/MonitoringDbHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaomi/common/monitor/MonitoringDbHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method
