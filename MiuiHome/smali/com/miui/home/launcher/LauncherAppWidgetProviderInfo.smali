.class Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;
.super Lcom/miui/home/launcher/ItemInfo;
.source "LauncherAppWidgetProviderInfo.java"


# instance fields
.field providerInfo:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1
    .parameter "providerInfo"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfo;-><init>()V

    .line 32
    const/4 v0, 0x6

    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->itemType:I

    .line 33
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/miui/home/launcher/ItemInfo;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->clone()Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->clone()Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v0

    return-object v0
.end method
