.class Lcom/miui/gallery/settings/GallerySettings$1;
.super Ljava/lang/Object;
.source "GallerySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/settings/GallerySettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/settings/GallerySettings;


# direct methods
.method constructor <init>(Lcom/miui/gallery/settings/GallerySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/miui/gallery/settings/GallerySettings$1;->this$0:Lcom/miui/gallery/settings/GallerySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 114
    new-instance v4, Lcom/miui/gallery/settings/GallerySettings$1$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/settings/GallerySettings$1$1;-><init>(Lcom/miui/gallery/settings/GallerySettings$1;)V

    .line 121
    .local v4, delete:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/miui/gallery/settings/GallerySettings$1;->this$0:Lcom/miui/gallery/settings/GallerySettings;

    const/4 v1, 0x0

    const v2, 0x7f0d010d

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/StorageExplorer/AppHelper;->startProgressDialogTask(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method
