.class final Lcom/miui/player/meta/MediaFileManager$1;
.super Landroid/os/AsyncTask;
.source "MediaFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/meta/MediaFileManager;->batchCorretId3Async(Landroid/content/Context;[Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final mArgs:[Ljava/lang/String;

.field final mValues:Landroid/content/ContentValues;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$editInfo:[Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;


# direct methods
.method constructor <init>([Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/miui/player/meta/MediaFileManager$1;->val$editInfo:[Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;

    iput-object p2, p0, Lcom/miui/player/meta/MediaFileManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 148
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/miui/player/meta/MediaFileManager$1;->mValues:Landroid/content/ContentValues;

    .line 149
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/player/meta/MediaFileManager$1;->mArgs:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/meta/MediaFileManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    .line 153
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/miui/player/meta/MediaFileManager$1;->val$editInfo:[Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 154
    iget-object v3, p0, Lcom/miui/player/meta/MediaFileManager$1;->val$editInfo:[Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;

    aget-object v2, v3, v1

    .line 155
    .local v2, info:Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;
    new-instance v0, Ljava/io/File;

    iget-object v3, v2, Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;->mPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, f:Ljava/io/File;
    iget-object v3, v2, Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;->mNewTitle:Ljava/lang/String;

    iget-object v4, v2, Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;->mNewArtist:Ljava/lang/String;

    iget-object v5, v2, Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;->mNewAlbum:Ljava/lang/String;

    invoke-static {v0, v3, v4, v5}, Lcom/miui/player/meta/MediaFileManager;->doCorrect(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 157
    invoke-static {v0}, Lcom/miui/player/meta/MediaFileManager;->getMIMEType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 158
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {p0, v3}, Lcom/miui/player/meta/MediaFileManager$1;->publishProgress([Ljava/lang/Object;)V

    .line 153
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v0           #f:Ljava/io/File;
    .end local v2           #info:Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method protected varargs onProgressUpdate([Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;)V
    .locals 8
    .parameter "infoArr"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 166
    if-eqz p1, :cond_3

    array-length v4, p1

    if-lez v4, :cond_3

    .line 167
    aget-object v0, p1, v7

    .line 168
    .local v0, info:Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;
    new-array v4, v6, [Ljava/lang/String;

    iget-object v5, v0, Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;->mPath:Ljava/lang/String;

    aput-object v5, v4, v7

    new-array v5, v6, [Ljava/lang/String;

    iget-object v6, v0, Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;->mPath:Ljava/lang/String;

    invoke-static {v6}, Lcom/miui/player/meta/MediaFileManager;->getMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/miui/player/service/ServiceHelper;->scanFiles([Ljava/lang/String;[Ljava/lang/String;)Z

    .line 170
    new-instance v4, Ljava/io/File;

    iget-object v5, v0, Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;->mPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 173
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/miui/player/meta/MediaFileManager$1;->mValues:Landroid/content/ContentValues;

    .line 174
    .local v2, v:Landroid/content/ContentValues;
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 175
    iget-object v4, v0, Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;->mNewTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 176
    const-string v4, "title"

    iget-object v5, v0, Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;->mNewTitle:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    iget-object v4, v0, Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;->mNewAlbum:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 179
    const-string v4, "album"

    iget-object v5, v0, Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;->mNewAlbum:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_1
    iget-object v4, v0, Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;->mNewArtist:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 182
    const-string v4, "artist"

    iget-object v5, v0, Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;->mNewArtist:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_2
    const-string v3, "_data=?"

    .line 186
    .local v3, where:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/player/meta/MediaFileManager$1;->mArgs:[Ljava/lang/String;

    iget-object v5, v0, Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;->mPath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 187
    iget-object v4, p0, Lcom/miui/player/meta/MediaFileManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/miui/player/meta/MediaFileManager$1;->mArgs:[Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 190
    .end local v0           #info:Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #v:Landroid/content/ContentValues;
    .end local v3           #where:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 147
    check-cast p1, [Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/meta/MediaFileManager$1;->onProgressUpdate([Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;)V

    return-void
.end method
