.class Lcom/miui/gallery/app/AlbumSetPage$1;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/miui/gallery/ui/ActionModeHandler$ActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/AlbumSetPage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/AlbumSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetPage$1;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage$1;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/AlbumSetPage;->onItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
