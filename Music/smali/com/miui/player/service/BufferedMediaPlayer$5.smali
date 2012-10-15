.class Lcom/miui/player/service/BufferedMediaPlayer$5;
.super Ljava/lang/Object;
.source "BufferedMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/service/BufferedMediaPlayer;->setDownloadSuccess(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/service/BufferedMediaPlayer;

.field final synthetic val$args:[Ljava/lang/String;

.field final synthetic val$cv:Landroid/content/ContentValues;

.field final synthetic val$res:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/miui/player/service/BufferedMediaPlayer;Landroid/content/ContentResolver;Landroid/content/ContentValues;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/miui/player/service/BufferedMediaPlayer$5;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iput-object p2, p0, Lcom/miui/player/service/BufferedMediaPlayer$5;->val$res:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/miui/player/service/BufferedMediaPlayer$5;->val$cv:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/miui/player/service/BufferedMediaPlayer$5;->val$args:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$5;->val$res:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer$5;->val$cv:Landroid/content/ContentValues;

    const-string v3, "hint = ?"

    iget-object v4, p0, Lcom/miui/player/service/BufferedMediaPlayer$5;->val$args:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1075
    return-void
.end method
