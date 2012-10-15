.class public Lcom/miui/home/launcher/upsidescene/SceneData$Screen;
.super Ljava/lang/Object;
.source "SceneData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/SceneData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Screen"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/upsidescene/SceneData$Screen$SpriteComparator;
    }
.end annotation


# instance fields
.field private final SC:Lcom/miui/home/launcher/upsidescene/SceneData$Screen$SpriteComparator;

.field private mHeight:I

.field private mHome:I

.field private mIndex:I

.field private mInteraction:Z

.field private mSortedSprites:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private mSprites:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I

.field private mWidth:I

.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/SceneData;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/upsidescene/SceneData;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 723
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mHome:I

    .line 748
    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mInteraction:Z

    .line 757
    new-instance v0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen$SpriteComparator;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/upsidescene/SceneData$Screen$SpriteComparator;-><init>(Lcom/miui/home/launcher/upsidescene/SceneData$Screen;)V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->SC:Lcom/miui/home/launcher/upsidescene/SceneData$Screen$SpriteComparator;

    .line 758
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mSprites:Ljava/util/LinkedList;

    .line 759
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mSortedSprites:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public calcSize(F)V
    .locals 3
    .parameter "sceneScale"

    .prologue
    .line 869
    iget v2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mWidth:I

    .line 870
    iget v2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mHeight:I

    .line 871
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mSprites:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    .line 872
    .local v1, s:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->calcSize(F)V

    goto :goto_0

    .line 874
    .end local v1           #s:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    :cond_0
    return-void
.end method

.method public checkValidate()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 791
    iget v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mType:I

    if-lt v1, v0, :cond_0

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mType:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    .line 792
    :cond_0
    const/4 v0, 0x0

    .line 794
    :cond_1
    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 778
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mHeight:I

    return v0
.end method

.method public getHome()I
    .locals 1

    .prologue
    .line 770
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mHome:I

    return v0
.end method

.method public getSprites()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 786
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mSortedSprites:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 762
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mType:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 774
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mWidth:I

    return v0
.end method

.method public load(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/BufferedReader;Ljava/util/zip/ZipFile;)Z
    .locals 9
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
    const/4 v8, 0x4

    const/4 v6, 0x1

    .line 801
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_9

    .line 802
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, name:Ljava/lang/String;
    const-string v5, "type"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 804
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 805
    .local v4, type:Ljava/lang/String;
    const-string v5, "drift"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 806
    iput v6, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mType:I

    .line 816
    .end local v4           #type:Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v5, "home"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 817
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mHome:I

    .line 801
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 807
    .restart local v4       #type:Ljava/lang/String;
    :cond_2
    const-string v5, "background"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 808
    const/4 v5, 0x2

    iput v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mType:I

    goto :goto_1

    .line 809
    :cond_3
    const-string v5, "foreground"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 810
    const/4 v5, 0x3

    iput v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mType:I

    goto :goto_1

    .line 811
    :cond_4
    const-string v5, "dock"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 812
    iput v8, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mType:I

    goto :goto_1

    .line 814
    .end local v4           #type:Ljava/lang/String;
    :cond_5
    const-string v5, "index"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 815
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mIndex:I

    goto :goto_1

    .line 818
    :cond_6
    const-string v5, "width"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 819
    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/miui/home/launcher/upsidescene/SceneData;->parseSizeValue(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mWidth:I

    goto :goto_2

    .line 820
    :cond_7
    const-string v5, "height"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 821
    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/miui/home/launcher/upsidescene/SceneData;->parseSizeValue(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mHeight:I

    goto :goto_2

    .line 822
    :cond_8
    const-string v5, "interaction"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 823
    const-string v5, "true"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mInteraction:Z

    goto :goto_2

    .line 826
    .end local v1           #name:Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->checkValidate()Z

    move-result v5

    if-nez v5, :cond_a

    .line 827
    const/4 v5, 0x0

    .line 857
    :goto_3
    return v5

    .line 829
    :cond_a
    :goto_4
    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    invoke-virtual {v5, p1}, Lcom/miui/home/launcher/upsidescene/SceneData;->moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 830
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 832
    .local v3, tag:Ljava/lang/String;
    const/4 v2, 0x0

    .line 833
    .local v2, sprite:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    const-string v5, "sprite"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 834
    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    const-string v7, "type"

    invoke-virtual {v5, p1, v7}, Lcom/miui/home/launcher/upsidescene/SceneData;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 835
    .restart local v4       #type:Ljava/lang/String;
    const-string v5, "picture"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 836
    new-instance v2, Lcom/miui/home/launcher/upsidescene/SceneData$SpritePicture;

    .end local v2           #sprite:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    invoke-direct {v2, v5}, Lcom/miui/home/launcher/upsidescene/SceneData$SpritePicture;-><init>(Lcom/miui/home/launcher/upsidescene/SceneData;)V

    .line 846
    .restart local v2       #sprite:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    :cond_b
    :goto_5
    if-eqz v2, :cond_a

    .line 847
    invoke-virtual {v2, p1, p2, p3}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->load(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/BufferedReader;Ljava/util/zip/ZipFile;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 848
    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mSprites:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 837
    :cond_c
    const-string v5, "shortcut"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 838
    new-instance v2, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    .end local v2           #sprite:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    invoke-direct {v2, v5, v6}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;-><init>(Lcom/miui/home/launcher/upsidescene/SceneData;I)V

    .restart local v2       #sprite:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    goto :goto_5

    .line 839
    :cond_d
    const-string v5, "picture"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 840
    new-instance v2, Lcom/miui/home/launcher/upsidescene/SceneData$SpritePicture;

    .end local v2           #sprite:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    invoke-direct {v2, v5}, Lcom/miui/home/launcher/upsidescene/SceneData$SpritePicture;-><init>(Lcom/miui/home/launcher/upsidescene/SceneData;)V

    .restart local v2       #sprite:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    goto :goto_5

    .line 841
    :cond_e
    const-string v5, "button"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 842
    new-instance v2, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;

    .end local v2           #sprite:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    invoke-direct {v2, v5}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;-><init>(Lcom/miui/home/launcher/upsidescene/SceneData;)V

    .restart local v2       #sprite:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    goto :goto_5

    .line 843
    :cond_f
    const-string v5, "widget"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 844
    new-instance v2, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    .end local v2           #sprite:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    invoke-direct {v2, v5, v8}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;-><init>(Lcom/miui/home/launcher/upsidescene/SceneData;I)V

    .restart local v2       #sprite:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    goto :goto_5

    .line 855
    .end local v2           #sprite:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #type:Ljava/lang/String;
    :cond_10
    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mSprites:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    iput-object v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mSortedSprites:Ljava/util/LinkedList;

    .line 856
    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mSortedSprites:Ljava/util/LinkedList;

    iget-object v7, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->SC:Lcom/miui/home/launcher/upsidescene/SceneData$Screen$SpriteComparator;

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v5, v6

    .line 857
    goto/16 :goto_3
.end method

.method public save(Ljava/io/BufferedWriter;)V
    .locals 3
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 862
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mSprites:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    .line 863
    .local v1, s:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->save(Ljava/io/BufferedWriter;)V

    goto :goto_0

    .line 865
    .end local v1           #s:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screen:type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",interaction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mInteraction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sprites:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->mSprites:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
