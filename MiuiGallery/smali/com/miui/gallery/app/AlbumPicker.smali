.class public Lcom/miui/gallery/app/AlbumPicker;
.super Lcom/miui/gallery/app/PickerActivity;
.source "AlbumPicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/miui/gallery/app/PickerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 31
    invoke-super {p0, p1}, Lcom/miui/gallery/app/PickerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f0d0043

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/AlbumPicker;->setTitle(I)V

    .line 33
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 35
    if-nez v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    :goto_0
    const-string v1, "get-album"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    const-string v1, "media-path"

    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumPicker;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/miui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumPicker;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/app/HomePage;

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 41
    return-void

    .line 35
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method
