.class Lcom/miui/home/launcher/AppWidgetResizeFrame$1;
.super Ljava/lang/Object;
.source "AppWidgetResizeFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/AppWidgetResizeFrame;->commitResizeForDelta(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/AppWidgetResizeFrame;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/AppWidgetResizeFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame$1;->this$0:Lcom/miui/home/launcher/AppWidgetResizeFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame$1;->this$0:Lcom/miui/home/launcher/AppWidgetResizeFrame;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->snapToWidget(Z)V

    .line 302
    return-void
.end method
