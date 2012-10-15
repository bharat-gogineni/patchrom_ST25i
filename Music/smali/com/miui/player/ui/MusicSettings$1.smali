.class Lcom/miui/player/ui/MusicSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MusicSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MusicSettings;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MusicSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/miui/player/ui/MusicSettings$1;->this$0:Lcom/miui/player/ui/MusicSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 173
    invoke-static {}, Lcom/miui/player/util/Utils;->isExternalStorageMounted()Z

    move-result v0

    .line 174
    .local v0, isExternalStoreageMounted:Z
    iget-object v1, p0, Lcom/miui/player/ui/MusicSettings$1;->this$0:Lcom/miui/player/ui/MusicSettings;

    iget-object v1, v1, Lcom/miui/player/ui/MusicSettings;->mFilterCategoryPref:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 175
    iget-object v1, p0, Lcom/miui/player/ui/MusicSettings$1;->this$0:Lcom/miui/player/ui/MusicSettings;

    iget-object v1, v1, Lcom/miui/player/ui/MusicSettings;->mPlayAndDownload:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 176
    return-void
.end method
