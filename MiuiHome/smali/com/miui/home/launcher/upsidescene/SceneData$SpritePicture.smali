.class public Lcom/miui/home/launcher/upsidescene/SceneData$SpritePicture;
.super Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
.source "SceneData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/SceneData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpritePicture"
.end annotation


# instance fields
.field private mPicture:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/SceneData;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/upsidescene/SceneData;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpritePicture;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;-><init>(Lcom/miui/home/launcher/upsidescene/SceneData;)V

    return-void
.end method


# virtual methods
.method public calcSize(F)V
    .locals 2
    .parameter "sceneScale"

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->calcSize(F)V

    .line 211
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpritePicture;->mPicture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpritePicture;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpritePicture;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpritePicture;->mRight:I

    .line 213
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpritePicture;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpritePicture;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpritePicture;->mBottom:I

    .line 215
    :cond_0
    return-void
.end method

.method public checkValidate()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 202
    invoke-super {p0}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->checkValidate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpritePicture;->mPicture:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 205
    :cond_0
    return v0
.end method

.method public getPicture()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpritePicture;->mPicture:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public load(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/BufferedReader;Ljava/util/zip/ZipFile;)Z
    .locals 2
    .parameter "parser"
    .parameter "settings"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpritePicture;->mPicture:Landroid/graphics/Bitmap;

    .line 183
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->load(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/BufferedReader;Ljava/util/zip/ZipFile;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, pic:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 186
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpritePicture;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    invoke-virtual {v1, v0, p3}, Lcom/miui/home/launcher/upsidescene/SceneData;->decodeBitmapFromZip(Ljava/lang/String;Ljava/util/zip/ZipFile;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpritePicture;->mPicture:Landroid/graphics/Bitmap;

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpritePicture;->checkValidate()Z

    move-result v1

    .line 190
    .end local v0           #pic:Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

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
    .line 194
    invoke-super {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->save(Ljava/io/BufferedWriter;)V

    .line 195
    return-void
.end method
