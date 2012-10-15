.class public Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;
.super Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
.source "SceneData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/SceneData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpriteButton"
.end annotation


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mNormal:Landroid/graphics/Bitmap;

.field private mPressed:Landroid/graphics/Bitmap;

.field private mSendBroadcast:Z

.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/SceneData;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/upsidescene/SceneData;)V
    .locals 1
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;-><init>(Lcom/miui/home/launcher/upsidescene/SceneData;)V

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->mSendBroadcast:Z

    return-void
.end method


# virtual methods
.method public calcSize(F)V
    .locals 3
    .parameter "sceneScale"

    .prologue
    .line 294
    invoke-super {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->calcSize(F)V

    .line 295
    const/4 v1, 0x0

    .line 296
    .local v1, width:I
    const/4 v0, 0x0

    .line 297
    .local v0, height:I
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->mNormal:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 298
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->mNormal:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 299
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->mNormal:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->mPressed:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 302
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->mPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 303
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->mPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->mRight:I

    .line 306
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->getTop()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->mBottom:I

    .line 307
    return-void
.end method

.method public checkValidate()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 286
    invoke-super {p0}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->checkValidate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 289
    :cond_0
    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getNormal()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->mNormal:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPressed()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->mPressed:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x2

    return v0
.end method

.method public isBroadcast()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->mSendBroadcast:Z

    return v0
.end method

.method public load(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/BufferedReader;Ljava/util/zip/ZipFile;)Z
    .locals 8
    .parameter "parser"
    .parameter "settings"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 246
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->load(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/BufferedReader;Ljava/util/zip/ZipFile;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 247
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    const-string v5, "normal"

    invoke-virtual {v4, p1, v5}, Lcom/miui/home/launcher/upsidescene/SceneData;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, normal:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    const-string v5, "pressed"

    invoke-virtual {v4, p1, v5}, Lcom/miui/home/launcher/upsidescene/SceneData;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, pressed:Ljava/lang/String;
    const-string v4, "true"

    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    const-string v6, "send_broadcast"

    invoke-virtual {v5, p1, v6}, Lcom/miui/home/launcher/upsidescene/SceneData;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->mSendBroadcast:Z

    .line 250
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    invoke-virtual {v4, v1, p3}, Lcom/miui/home/launcher/upsidescene/SceneData;->decodeBitmapFromZip(Ljava/lang/String;Ljava/util/zip/ZipFile;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->mNormal:Landroid/graphics/Bitmap;

    .line 251
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    invoke-virtual {v4, v2, p3}, Lcom/miui/home/launcher/upsidescene/SceneData;->decodeBitmapFromZip(Ljava/lang/String;Ljava/util/zip/ZipFile;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->mPressed:Landroid/graphics/Bitmap;

    .line 252
    iput-object v7, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->mIntent:Landroid/content/Intent;

    .line 253
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, intent:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 256
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->checkValidate()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 262
    const/4 v3, 0x1

    .line 271
    .end local v0           #intent:Ljava/lang/String;
    .end local v1           #normal:Ljava/lang/String;
    .end local v2           #pressed:Ljava/lang/String;
    :cond_1
    :goto_1
    return v3

    .line 264
    .restart local v0       #intent:Ljava/lang/String;
    .restart local v1       #normal:Ljava/lang/String;
    .restart local v2       #pressed:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/upsidescene/SceneData;->access$000()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 265
    const-string v4, "launcher.UpsideScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalidate button sprite at line:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_3
    iput-object v7, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->mNormal:Landroid/graphics/Bitmap;

    .line 268
    iput-object v7, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->mPressed:Landroid/graphics/Bitmap;

    .line 269
    iput-object v7, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->mIntent:Landroid/content/Intent;

    goto :goto_1

    .line 257
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public save(Ljava/io/BufferedWriter;)V
    .locals 0
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-super {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->save(Ljava/io/BufferedWriter;)V

    .line 277
    return-void
.end method
