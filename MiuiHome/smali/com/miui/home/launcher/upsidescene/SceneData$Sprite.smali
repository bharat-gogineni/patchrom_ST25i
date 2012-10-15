.class public abstract Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
.super Ljava/lang/Object;
.source "SceneData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/SceneData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Sprite"
.end annotation


# instance fields
.field protected mBottom:I

.field private mIndex:I

.field private mLeft:I

.field protected mRight:I

.field private mTop:I

.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/SceneData;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/upsidescene/SceneData;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 96
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mLeft:I

    .line 113
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mTop:I

    .line 114
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mRight:I

    .line 115
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mBottom:I

    .line 116
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mIndex:I

    return-void
.end method


# virtual methods
.method public calcSize(F)V
    .locals 1
    .parameter "sceneScale"

    .prologue
    .line 163
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mLeft:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mLeft:I

    .line 164
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mTop:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mTop:I

    .line 165
    return-void
.end method

.method public checkValidate()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 158
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mLeft:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mTop:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mIndex:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBottom()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mBottom:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mIndex:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mLeft:I

    return v0
.end method

.method public getRight()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mRight:I

    return v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mTop:I

    return v0
.end method

.method public abstract getType()I
.end method

.method public load(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/BufferedReader;Ljava/util/zip/ZipFile;)Z
    .locals 3
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
    .line 140
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_3

    .line 141
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, name:Ljava/lang/String;
    const-string v2, "index"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mIndex:I

    .line 146
    :cond_0
    :goto_1
    const-string v2, "top"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mTop:I

    .line 140
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 144
    :cond_2
    const-string v2, "left"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mLeft:I

    goto :goto_1

    .line 150
    .end local v1           #name:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x1

    return v2
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
    .line 154
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",left:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",top:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",right:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mRight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",bottom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->mBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
