.class public Lcom/miui/home/launcher/ResConfig;
.super Ljava/lang/Object;
.source "ResConfig.java"


# static fields
.field private static mCellCountX:I

.field private static mCellCountY:I

.field private static mCustomizedDefaultWorkspacePath:Ljava/lang/String;

.field private static mDefaultWorkspaceId:I

.field private static mDefaultWorkspaceName:Ljava/lang/String;

.field private static mHotseatCount:I

.field private static mIconHeight:I

.field private static mIconWidth:I

.field private static mLauncherDatabaseName:Ljava/lang/String;

.field private static mWidgetCellMeasureHeight:I

.field private static mWidgetCellMeasureWidth:I

.field private static mWidgetCellMinHeight:I

.field private static mWidgetCellMinWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 12
    sput v0, Lcom/miui/home/launcher/ResConfig;->mIconWidth:I

    .line 13
    sput v0, Lcom/miui/home/launcher/ResConfig;->mIconHeight:I

    .line 14
    sput v0, Lcom/miui/home/launcher/ResConfig;->mCellCountX:I

    .line 15
    sput v0, Lcom/miui/home/launcher/ResConfig;->mCellCountY:I

    .line 16
    sput v0, Lcom/miui/home/launcher/ResConfig;->mHotseatCount:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static Init(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x2

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 37
    .local v2, res:Landroid/content/res/Resources;
    const/high16 v5, 0x7f0a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/ResConfig;->mIconWidth:I

    .line 38
    const v5, 0x7f0a0001

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/ResConfig;->mIconHeight:I

    .line 39
    const/high16 v5, 0x7f0b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/ResConfig;->mCellCountX:I

    .line 40
    const v5, 0x7f0b0001

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/ResConfig;->mCellCountY:I

    .line 41
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 42
    .local v4, sp:Landroid/content/SharedPreferences;
    sget v5, Lcom/miui/home/launcher/ResConfig;->mCellCountX:I

    if-ne v5, v6, :cond_0

    sget v5, Lcom/miui/home/launcher/ResConfig;->mCellCountY:I

    if-eq v5, v6, :cond_2

    .line 43
    :cond_0
    const-string v5, "pref_key_cell_layout_size"

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, cellSize:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 45
    const/16 v5, 0x78

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 46
    .local v3, sepPos:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 47
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/ResConfig;->mCellCountX:I

    .line 48
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/ResConfig;->mCellCountY:I

    .line 49
    sget v5, Lcom/miui/home/launcher/ResConfig;->mCellCountX:I

    if-lt v5, v7, :cond_1

    sget v5, Lcom/miui/home/launcher/ResConfig;->mCellCountY:I

    if-ge v5, v7, :cond_2

    .line 50
    :cond_1
    sput v8, Lcom/miui/home/launcher/ResConfig;->mCellCountY:I

    sput v8, Lcom/miui/home/launcher/ResConfig;->mCellCountX:I

    .line 55
    .end local v1           #cellSize:Ljava/lang/String;
    .end local v3           #sepPos:I
    :cond_2
    sget v5, Lcom/miui/home/launcher/ResConfig;->mCellCountX:I

    sget v6, Lcom/miui/home/launcher/ResConfig;->mCellCountX:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sput v5, Lcom/miui/home/launcher/ResConfig;->mHotseatCount:I

    .line 56
    sget v5, Lcom/miui/home/launcher/ResConfig;->mCellCountX:I

    if-ne v5, v8, :cond_4

    sget v5, Lcom/miui/home/launcher/ResConfig;->mCellCountY:I

    if-ne v5, v8, :cond_4

    .line 57
    const-string v5, "launcher.db"

    sput-object v5, Lcom/miui/home/launcher/ResConfig;->mLauncherDatabaseName:Ljava/lang/String;

    .line 58
    const-string v5, "default_workspace"

    sput-object v5, Lcom/miui/home/launcher/ResConfig;->mDefaultWorkspaceName:Ljava/lang/String;

    .line 64
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/media/customized/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/miui/home/launcher/ResConfig;->mDefaultWorkspaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/miui/home/launcher/ResConfig;->mCustomizedDefaultWorkspacePath:Ljava/lang/String;

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":xml/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/miui/home/launcher/ResConfig;->mDefaultWorkspaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/miui/home/launcher/ResConfig;->mDefaultWorkspaceName:Ljava/lang/String;

    .line 66
    sget-object v5, Lcom/miui/home/launcher/ResConfig;->mDefaultWorkspaceName:Ljava/lang/String;

    invoke-virtual {v2, v5, v9, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/ResConfig;->mDefaultWorkspaceId:I

    .line 67
    sget v5, Lcom/miui/home/launcher/ResConfig;->mDefaultWorkspaceId:I

    if-nez v5, :cond_3

    .line 68
    const v5, 0x7f050003

    sput v5, Lcom/miui/home/launcher/ResConfig;->mDefaultWorkspaceId:I

    .line 71
    :cond_3
    const v5, 0x7f0a0013

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/ResConfig;->mWidgetCellMeasureWidth:I

    .line 72
    const v5, 0x7f0a0014

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/ResConfig;->mWidgetCellMeasureHeight:I

    .line 73
    const v5, 0x7f0a001e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/ResConfig;->mWidgetCellMinWidth:I

    .line 74
    const v5, 0x7f0a001f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/ResConfig;->mWidgetCellMinHeight:I

    .line 75
    return-void

    .line 60
    :cond_4
    sget v5, Lcom/miui/home/launcher/ResConfig;->mCellCountX:I

    sget v6, Lcom/miui/home/launcher/ResConfig;->mCellCountY:I

    invoke-static {v5, v6}, Lcom/miui/home/launcher/ResConfig;->getCellSizeVal(II)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, cellCountPostfix:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launcher"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".db"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/miui/home/launcher/ResConfig;->mLauncherDatabaseName:Ljava/lang/String;

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "default_workspace"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/miui/home/launcher/ResConfig;->mDefaultWorkspaceName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static final calcWidgetSpans(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-static {v0}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanX(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    .line 123
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-static {v0}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanY(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    .line 124
    return-void
.end method

.method public static final getCellCountX()I
    .locals 1

    .prologue
    .line 86
    sget v0, Lcom/miui/home/launcher/ResConfig;->mCellCountX:I

    return v0
.end method

.method public static final getCellCountY()I
    .locals 1

    .prologue
    .line 90
    sget v0, Lcom/miui/home/launcher/ResConfig;->mCellCountY:I

    return v0
.end method

.method public static final getCellSizeVal(II)Ljava/lang/String;
    .locals 2
    .parameter "cx"
    .parameter "cy"

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getCustomizedDefaultWorkspaceXmlPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/miui/home/launcher/ResConfig;->mCustomizedDefaultWorkspacePath:Ljava/lang/String;

    return-object v0
.end method

.method public static final getDefaultWorkspaceXmlId()I
    .locals 1

    .prologue
    .line 110
    sget v0, Lcom/miui/home/launcher/ResConfig;->mDefaultWorkspaceId:I

    return v0
.end method

.method public static final getHotseatCount()I
    .locals 1

    .prologue
    .line 98
    sget v0, Lcom/miui/home/launcher/ResConfig;->mHotseatCount:I

    return v0
.end method

.method public static final getIconHeight()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/miui/home/launcher/ResConfig;->mIconHeight:I

    return v0
.end method

.method public static final getIconWidth()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/miui/home/launcher/ResConfig;->mIconWidth:I

    return v0
.end method

.method public static final getLauncherDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/miui/home/launcher/ResConfig;->mLauncherDatabaseName:Ljava/lang/String;

    return-object v0
.end method

.method public static final getWidgetCellMinHeight()I
    .locals 1

    .prologue
    .line 131
    sget v0, Lcom/miui/home/launcher/ResConfig;->mWidgetCellMinHeight:I

    return v0
.end method

.method public static final getWidgetCellMinWidth()I
    .locals 1

    .prologue
    .line 127
    sget v0, Lcom/miui/home/launcher/ResConfig;->mWidgetCellMinWidth:I

    return v0
.end method

.method public static final getWidgetSpanX(I)I
    .locals 2
    .parameter "minWidth"

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/home/launcher/Utilities;->getDipPixelSize(I)I

    move-result v0

    add-int/2addr v0, p0

    sget v1, Lcom/miui/home/launcher/ResConfig;->mWidgetCellMeasureWidth:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    sget v1, Lcom/miui/home/launcher/ResConfig;->mCellCountX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static final getWidgetSpanY(I)I
    .locals 2
    .parameter "minHeight"

    .prologue
    .line 118
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/home/launcher/Utilities;->getDipPixelSize(I)I

    move-result v0

    add-int/2addr v0, p0

    sget v1, Lcom/miui/home/launcher/ResConfig;->mWidgetCellMeasureHeight:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    sget v1, Lcom/miui/home/launcher/ResConfig;->mCellCountY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
