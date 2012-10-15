.class public Lcom/miui/player/ui/menu/ArtistBrowserMenu$ContextInfo;
.super Ljava/lang/Object;
.source "ArtistBrowserMenu.java"

# interfaces
.implements Lcom/miui/player/ui/menu/common/MenuContextInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/menu/ArtistBrowserMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContextInfo"
.end annotation


# instance fields
.field public mCursor:Landroid/database/Cursor;

.field public mHeaderCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/player/ui/menu/ArtistBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
