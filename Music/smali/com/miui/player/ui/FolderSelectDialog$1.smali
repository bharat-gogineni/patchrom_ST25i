.class Lcom/miui/player/ui/FolderSelectDialog$1;
.super Ljava/lang/Object;
.source "FolderSelectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/FolderSelectDialog;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/FolderSelectDialog;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/FolderSelectDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/miui/player/ui/FolderSelectDialog$1;->this$0:Lcom/miui/player/ui/FolderSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/player/ui/FolderSelectDialog$1;->this$0:Lcom/miui/player/ui/FolderSelectDialog;

    iget-object v0, v0, Lcom/miui/player/ui/FolderSelectDialog;->mFolderStatus:[Lcom/miui/player/util/FolderProvider$FolderStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/FolderSelectDialog$1;->this$0:Lcom/miui/player/ui/FolderSelectDialog;

    iget-object v0, v0, Lcom/miui/player/ui/FolderSelectDialog;->mFolderStatus:[Lcom/miui/player/util/FolderProvider$FolderStatus;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/miui/player/ui/FolderSelectDialog$1;->this$0:Lcom/miui/player/ui/FolderSelectDialog;

    iget-object v0, v0, Lcom/miui/player/ui/FolderSelectDialog;->mFolderStatus:[Lcom/miui/player/util/FolderProvider$FolderStatus;

    aget-object v0, v0, p2

    iput-boolean p3, v0, Lcom/miui/player/util/FolderProvider$FolderStatus;->mSelected:Z

    .line 63
    :cond_0
    return-void
.end method
