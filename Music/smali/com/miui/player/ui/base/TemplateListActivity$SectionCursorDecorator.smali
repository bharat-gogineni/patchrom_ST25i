.class public Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;
.super Ljava/lang/Object;
.source "TemplateListActivity.java"

# interfaces
.implements Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/base/TemplateListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SectionCursorDecorator"
.end annotation


# instance fields
.field private final mConveter:Lcom/miui/player/model/SectionCursor$CursorConverter;

.field protected final mHeaderCount:I


# direct methods
.method public constructor <init>(Lcom/miui/player/model/SectionCursor$CursorConverter;I)V
    .locals 0
    .parameter "converter"
    .parameter "headerCount"

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;->mConveter:Lcom/miui/player/model/SectionCursor$CursorConverter;

    .line 295
    iput p2, p0, Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;->mHeaderCount:I

    .line 296
    return-void
.end method


# virtual methods
.method public decorate(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;->mConveter:Lcom/miui/player/model/SectionCursor$CursorConverter;

    iget v1, p0, Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;->mHeaderCount:I

    invoke-static {p1, v0, v1}, Lcom/miui/player/model/SectionCursor;->wrap(Landroid/database/Cursor;Lcom/miui/player/model/SectionCursor$CursorConverter;I)Lcom/miui/player/model/SectionCursor;

    move-result-object v0

    return-object v0
.end method
