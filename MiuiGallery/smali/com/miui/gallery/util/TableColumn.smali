.class public Lcom/miui/gallery/util/TableColumn;
.super Ljava/lang/Object;
.source "TableColumn.java"


# instance fields
.field public final mColumType:Ljava/lang/String;

.field public final mIndex:I

.field public final mName:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "index"
    .parameter "name"
    .parameter "columType"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/miui/gallery/util/TableColumn;->mIndex:I

    .line 10
    iput-object p2, p0, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/miui/gallery/util/TableColumn;->mColumType:Ljava/lang/String;

    .line 12
    return-void
.end method
