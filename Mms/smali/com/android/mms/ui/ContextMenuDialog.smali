.class public Lcom/android/mms/ui/ContextMenuDialog;
.super Ljava/lang/Object;
.source "ContextMenuDialog.java"


# instance fields
.field mBuilder:Lcom/android/internal/view/menu/ContextMenuBuilder;

.field private final mContext:Landroid/content/Context;

.field private final mMenuRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog;->mMenuRunnables:Ljava/util/ArrayList;

    .line 29
    iput-object p1, p0, Lcom/android/mms/ui/ContextMenuDialog;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Lcom/android/internal/view/menu/ContextMenuBuilder;

    iget-object v1, p0, Lcom/android/mms/ui/ContextMenuDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog;->mBuilder:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 31
    iget-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog;->mBuilder:Lcom/android/internal/view/menu/ContextMenuBuilder;

    new-instance v1, Lcom/android/mms/ui/ContextMenuDialog$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ContextMenuDialog$1;-><init>(Lcom/android/mms/ui/ContextMenuDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ContextMenuDialog;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog;->mMenuRunnables:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addMenuItem(ILjava/lang/Runnable;)V
    .locals 1
    .parameter "title"
    .parameter "onClick"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method

.method public addMenuItem(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "title"
    .parameter "onClick"

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog;->mBuilder:Lcom/android/internal/view/menu/ContextMenuBuilder;

    iget-object v1, p0, Lcom/android/mms/ui/ContextMenuDialog;->mMenuRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, p1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 57
    iget-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog;->mMenuRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "title"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog;->mBuilder:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 53
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog;->mBuilder:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 49
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog;->mBuilder:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0, v1, v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 66
    return-void
.end method
