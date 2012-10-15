.class public Lcom/miui/player/plugin/onlinemusic2/SearchSuggestion;
.super Lcom/miui/player/plugin/onlinemusic2/MetaList;
.source "SearchSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/player/plugin/onlinemusic2/MetaList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final mKeywords:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "keywords"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p2, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/miui/player/plugin/onlinemusic2/MetaList;-><init>(Ljava/util/List;)V

    .line 11
    iput-object p1, p0, Lcom/miui/player/plugin/onlinemusic2/SearchSuggestion;->mKeywords:Ljava/lang/String;

    .line 12
    return-void
.end method
