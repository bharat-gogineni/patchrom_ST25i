.class Lcom/miui/home/launcher/LauncherAppWidgetInfo;
.super Lcom/miui/home/launcher/ItemInfo;
.source "LauncherAppWidgetInfo.java"


# instance fields
.field appWidgetId:I

.field hostView:Landroid/appwidget/AppWidgetHostView;

.field packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "appWidgetId"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfo;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 41
    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->itemType:I

    .line 42
    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 43
    return-void
.end method

.method constructor <init>(ILcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V
    .locals 1
    .parameter "appWidgetId"
    .parameter "provider"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 47
    iget v0, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellX:I

    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellX:I

    .line 48
    iget v0, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellY:I

    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellY:I

    .line 49
    iget v0, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    .line 50
    iget v0, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    .line 51
    return-void
.end method


# virtual methods
.method public onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 56
    const-string v0, "appWidgetId"

    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppWidget(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfo;->unbind()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 69
    return-void
.end method
