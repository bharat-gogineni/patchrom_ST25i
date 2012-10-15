.class Lcom/miui/home/launcher/Launcher$AppWidgetResetObserver;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppWidgetResetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1
    .parameter

    .prologue
    .line 1837
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$AppWidgetResetObserver;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 1838
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1839
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$AppWidgetResetObserver;->this$0:Lcom/miui/home/launcher/Launcher;

    #calls: Lcom/miui/home/launcher/Launcher;->onAppWidgetReset()V
    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$1300(Lcom/miui/home/launcher/Launcher;)V

    .line 1844
    return-void
.end method
