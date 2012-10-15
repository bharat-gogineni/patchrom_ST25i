.class Lcom/miui/gallery/app/AlbumPageBase$5;
.super Ljava/lang/Object;
.source "AlbumPageBase.java"

# interfaces
.implements Lcom/miui/gallery/ui/ActionModeHandler$ActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/AlbumPageBase;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/AlbumPageBase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/AlbumPageBase;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumPageBase$5;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase$5;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/AlbumPageBase;->onItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
