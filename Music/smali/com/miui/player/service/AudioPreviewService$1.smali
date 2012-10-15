.class Lcom/miui/player/service/AudioPreviewService$1;
.super Landroid/content/AsyncQueryHandler;
.source "AudioPreviewService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/service/AudioPreviewService;->updateMetaInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/service/AudioPreviewService;


# direct methods
.method constructor <init>(Lcom/miui/player/service/AudioPreviewService;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/miui/player/service/AudioPreviewService$1;->this$0:Lcom/miui/player/service/AudioPreviewService;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 214
    if-eqz p3, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 215
    const-string v3, "title"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 216
    .local v2, titleIdx:I
    const-string v3, "artist"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 217
    .local v0, artistIdx:I
    const-string v3, "_display_name"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 219
    .local v1, displaynameIdx:I
    if-ltz v2, :cond_2

    .line 220
    iget-object v3, p0, Lcom/miui/player/service/AudioPreviewService$1;->this$0:Lcom/miui/player/service/AudioPreviewService;

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/player/service/AudioPreviewService;->mPrimaryText:Ljava/lang/String;

    .line 221
    if-ltz v0, :cond_0

    .line 222
    iget-object v3, p0, Lcom/miui/player/service/AudioPreviewService$1;->this$0:Lcom/miui/player/service/AudioPreviewService;

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/player/service/AudioPreviewService;->mSecondaryText:Ljava/lang/String;

    .line 234
    .end local v0           #artistIdx:I
    .end local v1           #displaynameIdx:I
    .end local v2           #titleIdx:I
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 235
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_1
    iget-object v3, p0, Lcom/miui/player/service/AudioPreviewService$1;->this$0:Lcom/miui/player/service/AudioPreviewService;

    invoke-virtual {v3}, Lcom/miui/player/service/AudioPreviewService;->setNames()V

    .line 239
    return-void

    .line 224
    .restart local v0       #artistIdx:I
    .restart local v1       #displaynameIdx:I
    .restart local v2       #titleIdx:I
    :cond_2
    if-ltz v1, :cond_3

    .line 225
    iget-object v3, p0, Lcom/miui/player/service/AudioPreviewService$1;->this$0:Lcom/miui/player/service/AudioPreviewService;

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/player/service/AudioPreviewService;->mPrimaryText:Ljava/lang/String;

    goto :goto_0

    .line 228
    :cond_3
    sget-object v3, Lcom/miui/player/service/AudioPreviewService;->TAG:Ljava/lang/String;

    const-string v4, "Cursor had no names for us"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    .end local v0           #artistIdx:I
    .end local v1           #displaynameIdx:I
    .end local v2           #titleIdx:I
    :cond_4
    sget-object v3, Lcom/miui/player/service/AudioPreviewService;->TAG:Ljava/lang/String;

    const-string v4, "empty cursor"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
