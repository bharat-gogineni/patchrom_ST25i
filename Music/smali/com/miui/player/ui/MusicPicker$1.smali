.class Lcom/miui/player/ui/MusicPicker$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MusicPicker;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MusicPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 780
    iput-object p1, p0, Lcom/miui/player/ui/MusicPicker$1;->this$0:Lcom/miui/player/ui/MusicPicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 784
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker$1;->this$0:Lcom/miui/player/ui/MusicPicker;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/ui/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    .line 785
    return-void
.end method
