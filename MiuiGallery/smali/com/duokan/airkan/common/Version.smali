.class public Lcom/duokan/airkan/common/Version;
.super Ljava/lang/Object;
.source "Version.java"


# instance fields
.field private mText:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/high16 v0, 0x100

    iput v0, p0, Lcom/duokan/airkan/common/Version;->mVersion:I

    .line 5
    const-string v0, "Airkan Protocol Version 1.0"

    iput-object v0, p0, Lcom/duokan/airkan/common/Version;->mText:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/duokan/airkan/common/Version;->mText:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 15
    iput p1, p0, Lcom/duokan/airkan/common/Version;->mVersion:I

    .line 16
    return-void
.end method
