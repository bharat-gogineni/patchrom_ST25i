.class Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;
.super Ljava/lang/Object;
.source "BaseTrackBrowserMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/menu/BaseTrackBrowserMenu;->showTracksId3EditDialog(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;ILjava/lang/CharSequence;Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$album:Ljava/lang/String;

.field final synthetic val$artist:Ljava/lang/String;

.field final synthetic val$menuType:I

.field final synthetic val$title:Ljava/lang/CharSequence;

.field final synthetic val$trace:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;

.field final synthetic val$track:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/Activity;Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 612
    .local p0, this:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;,"Lcom/miui/player/ui/menu/BaseTrackBrowserMenu.1;"
    iput-object p1, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;->this$0:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu;

    iput p2, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;->val$menuType:I

    iput-object p3, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;->val$album:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;->val$artist:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;->val$track:Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;->val$title:Ljava/lang/CharSequence;

    iput-object p7, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;->val$activity:Landroid/app/Activity;

    iput-object p8, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;->val$trace:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 616
    .local p0, this:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;,"Lcom/miui/player/ui/menu/BaseTrackBrowserMenu.1;"
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 620
    .local v0, bundle:Landroid/os/Bundle;
    iget v2, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;->val$menuType:I

    const/16 v3, 0x16

    if-ne v2, v3, :cond_3

    .line 621
    const-string v2, "raw_album_name"

    iget-object v3, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;->val$album:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 630
    const-string v2, "dialog_title"

    iget-object v3, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;->val$title:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v2, "confirm_text"

    iget-object v3, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;->val$activity:Landroid/app/Activity;

    const v4, 0x7f0900a9

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v2, "trace"

    iget-object v3, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;->val$trace:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 633
    new-instance v1, Lcom/miui/player/ui/MediaEditDialog;

    iget-object v2, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;->this$0:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu;

    iget v4, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;->val$menuType:I

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/miui/player/ui/MediaEditDialog;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/player/ui/DialogCallback;I)V

    .line 634
    .local v1, med:Lcom/miui/player/ui/MediaEditDialog;
    invoke-virtual {v1}, Lcom/miui/player/ui/MediaEditDialog;->show()V

    goto :goto_0

    .line 622
    .end local v1           #med:Lcom/miui/player/ui/MediaEditDialog;
    :cond_3
    iget v2, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;->val$menuType:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_4

    .line 623
    const-string v2, "raw_artist_name"

    iget-object v3, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;->val$artist:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 624
    :cond_4
    iget v2, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;->val$menuType:I

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_2

    .line 625
    const-string v2, "raw_track_name"

    iget-object v3, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;->val$track:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v2, "raw_album_name"

    iget-object v3, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;->val$album:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v2, "raw_artist_name"

    iget-object v3, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$1;->val$artist:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
