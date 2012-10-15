.class final Lcom/miui/gallery/StorageExplorer/AppHelper$3;
.super Ljava/lang/Object;
.source "AppHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/StorageExplorer/AppHelper;->deleteMediaItems(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$delete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$3;->val$delete:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$3;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    const v2, 0x7f0d00f5

    iget-object v4, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$3;->val$delete:Ljava/lang/Runnable;

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/StorageExplorer/AppHelper;->startProgressDialogTask(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 269
    return-void
.end method
