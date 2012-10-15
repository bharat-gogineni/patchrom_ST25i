.class public Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;
.super Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
.source "SceneData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/SceneData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpriteCell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;,
        Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;
    }
.end annotation


# instance fields
.field private mCurrentContentType:I

.field private mDefaultContentType:I

.field private mRotation:F

.field private mScale:F

.field private mShortcuts:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;

.field private mShowIcon:Z

.field private mShowTitle:Z

.field private mSpanX:I

.field private mSpanY:I

.field private mWidget:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;

.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/SceneData;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/upsidescene/SceneData;I)V
    .locals 2
    .parameter
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 548
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;-><init>(Lcom/miui/home/launcher/upsidescene/SceneData;)V

    .line 324
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mSpanX:I

    .line 325
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mSpanY:I

    .line 326
    iput-boolean v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mShowTitle:Z

    .line 327
    iput-boolean v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mShowIcon:Z

    .line 328
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mDefaultContentType:I

    .line 329
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mCurrentContentType:I

    .line 330
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mRotation:F

    .line 331
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mScale:F

    .line 549
    iput p2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mDefaultContentType:I

    iput p2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mCurrentContentType:I

    .line 550
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mDefaultContentType:I

    if-ne v0, v1, :cond_0

    .line 551
    iput v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mSpanY:I

    iput v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mSpanX:I

    .line 553
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mShowTitle:Z

    return v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mShowIcon:Z

    return v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 310
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mCurrentContentType:I

    return v0
.end method

.method private ensureContent()V
    .locals 2

    .prologue
    .line 652
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mCurrentContentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mShortcuts:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;

    if-nez v0, :cond_1

    .line 653
    new-instance v0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;-><init>(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;)V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mShortcuts:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mWidget:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;

    if-nez v0, :cond_0

    .line 655
    new-instance v0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;-><init>(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;)V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mWidget:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;

    goto :goto_0
.end method

.method private prepairShortcuts()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 598
    iget v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mSpanX:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mSpanY:I

    if-eq v1, v0, :cond_1

    .line 599
    :cond_0
    const/4 v0, 0x0

    .line 603
    :goto_0
    return v0

    .line 601
    :cond_1
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mCurrentContentType:I

    .line 602
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->ensureContent()V

    goto :goto_0
.end method


# virtual methods
.method public calcSize(F)V
    .locals 3
    .parameter "sceneScale"

    .prologue
    .line 711
    invoke-super {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->calcSize(F)V

    .line 712
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    iget v2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mSpanX:I

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/upsidescene/SceneData;->getCellWidthByScene(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mRight:I

    .line 713
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    iget v2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mSpanY:I

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/upsidescene/SceneData;->getCellHeightByScene(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mBottom:I

    .line 714
    return-void
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mCurrentContentType:I

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mRotation:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mScale:F

    return v0
.end method

.method public getShortcuts()Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mShortcuts:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;

    return-object v0
.end method

.method public getSpanX()I
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mSpanX:I

    return v0
.end method

.method public getSpanY()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mSpanY:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 573
    const/4 v0, 0x3

    return v0
.end method

.method public getWidget()Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mWidget:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;

    return-object v0
.end method

.method public load(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/BufferedReader;Ljava/util/zip/ZipFile;)Z
    .locals 5
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
    const/4 v2, 0x1

    .line 662
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->load(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/BufferedReader;Ljava/util/zip/ZipFile;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 663
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_6

    .line 664
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 665
    .local v1, name:Ljava/lang/String;
    const-string v3, "spanx"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 666
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mSpanX:I

    .line 663
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 667
    :cond_1
    const-string v3, "spany"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 668
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mSpanY:I

    goto :goto_1

    .line 669
    :cond_2
    const-string v3, "rotation"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 670
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mRotation:F

    goto :goto_1

    .line 671
    :cond_3
    const-string v3, "scale"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 672
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mScale:F

    goto :goto_1

    .line 673
    :cond_4
    const-string v3, "show_title"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 674
    const-string v3, "true"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mShowTitle:Z

    goto :goto_1

    .line 675
    :cond_5
    const-string v3, "show_icon"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 676
    const-string v3, "true"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mShowIcon:Z

    goto :goto_1

    .line 679
    .end local v1           #name:Ljava/lang/String;
    :cond_6
    if-eqz p2, :cond_7

    .line 680
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mCurrentContentType:I

    .line 683
    :cond_7
    iget v3, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mCurrentContentType:I

    if-ne v3, v2, :cond_9

    .line 684
    new-instance v3, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;-><init>(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;)V

    iput-object v3, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mShortcuts:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;

    .line 685
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mShortcuts:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;

    invoke-virtual {v3, p1, p2, p3}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->load(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/BufferedReader;Ljava/util/zip/ZipFile;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 694
    .end local v0           #i:I
    :cond_8
    :goto_2
    return v2

    .line 688
    .restart local v0       #i:I
    :cond_9
    iget v3, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mCurrentContentType:I

    if-eqz v3, :cond_8

    .line 689
    new-instance v2, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;-><init>(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;)V

    iput-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mWidget:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;

    .line 690
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mWidget:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;

    invoke-virtual {v2, p1, p2, p3}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->load(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/BufferedReader;Ljava/util/zip/ZipFile;)Z

    move-result v2

    goto :goto_2

    .line 694
    .end local v0           #i:I
    :cond_a
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public save(Ljava/io/BufferedWriter;)V
    .locals 2
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 699
    invoke-super {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->save(Ljava/io/BufferedWriter;)V

    .line 700
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mCurrentContentType:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 702
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mCurrentContentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 703
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mShortcuts:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->save(Ljava/io/BufferedWriter;)V

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mCurrentContentType:I

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mWidget:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->save(Ljava/io/BufferedWriter;)V

    goto :goto_0
.end method

.method public setEmpty()V
    .locals 2

    .prologue
    .line 589
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mCurrentContentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 590
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mShortcuts:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;

    const/4 v1, 0x0

    #calls: Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->setComponentNames(Ljava/util/Collection;)V
    invoke-static {v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->access$600(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;Ljava/util/Collection;)V

    .line 594
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mCurrentContentType:I

    .line 595
    return-void

    .line 591
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mCurrentContentType:I

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mWidget:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;

    #calls: Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->setEmpty()V
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->access$700(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;)V

    goto :goto_0
.end method

.method public setInternalGadget(I)I
    .locals 2
    .parameter "gadgetType"

    .prologue
    .line 630
    const/4 v1, 0x3

    iput v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mCurrentContentType:I

    .line 631
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->ensureContent()V

    .line 632
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    #calls: Lcom/miui/home/launcher/upsidescene/SceneData;->generateNewId()I
    invoke-static {v1}, Lcom/miui/home/launcher/upsidescene/SceneData;->access$1000(Lcom/miui/home/launcher/upsidescene/SceneData;)I

    move-result v0

    .line 633
    .local v0, newId:I
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mWidget:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;

    #calls: Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->setId(I)V
    invoke-static {v1, v0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->access$900(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;I)V

    .line 634
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mWidget:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;

    #calls: Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->setGadgetType(I)V
    invoke-static {v1, p1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->access$1100(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;I)V

    .line 635
    return v0
.end method

.method public setShortcuts(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ComponentName;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 615
    .local p1, names:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/ComponentName;>;"
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->prepairShortcuts()Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    const/4 v0, 0x0

    .line 619
    :goto_0
    return v0

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mShortcuts:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;

    #calls: Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->setComponentNames(Ljava/util/Collection;)V
    invoke-static {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->access$600(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;Ljava/util/Collection;)V

    .line 619
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSystemWidget(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 623
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mCurrentContentType:I

    .line 624
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->ensureContent()V

    .line 625
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mWidget:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;

    #calls: Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->setId(I)V
    invoke-static {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->access$900(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;I)V

    .line 626
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->spanx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mSpanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",spany:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mSpanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",rotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mRotation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",scale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateInternalGadget(Ljava/lang/String;)Z
    .locals 2
    .parameter "location"

    .prologue
    .line 639
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mCurrentContentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 640
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mWidget:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;

    #calls: Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->setLocation(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->access$1200(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;Ljava/lang/String;)Z

    move-result v0

    .line 642
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
