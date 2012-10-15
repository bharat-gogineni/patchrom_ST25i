.class public Lcom/miui/player/ui/OperationDialog;
.super Ljava/lang/Object;
.source "OperationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/OperationDialog$EqualizerBuilder;,
        Lcom/miui/player/ui/OperationDialog$NewPlaylistBuilder;,
        Lcom/miui/player/ui/OperationDialog$PlaylistRenameBuilder;,
        Lcom/miui/player/ui/OperationDialog$RenameBuilder;,
        Lcom/miui/player/ui/OperationDialog$DialogBuilder;
    }
.end annotation


# instance fields
.field final mActivity:Landroid/app/Activity;

.field final mBuilder:Lcom/miui/player/ui/OperationDialog$DialogBuilder;

.field final mCallbackIntent:Landroid/content/Intent;

.field private mConfirmClicked:Landroid/content/DialogInterface$OnClickListener;

.field mInput:Landroid/widget/EditText;

.field final mListener:Lcom/miui/player/ui/DialogCallback;

.field final mRequestCode:I

.field mSaveButton:Landroid/widget/Button;

.field private final mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/miui/player/ui/DialogCallback;Lcom/miui/player/ui/OperationDialog$DialogBuilder;ILandroid/content/Intent;)V
    .locals 1
    .parameter "a"
    .parameter "l"
    .parameter "creater"
    .parameter "requestCode"
    .parameter "extras"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/miui/player/ui/OperationDialog$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/OperationDialog$1;-><init>(Lcom/miui/player/ui/OperationDialog;)V

    iput-object v0, p0, Lcom/miui/player/ui/OperationDialog;->mTextWatcher:Landroid/text/TextWatcher;

    .line 89
    new-instance v0, Lcom/miui/player/ui/OperationDialog$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/OperationDialog$2;-><init>(Lcom/miui/player/ui/OperationDialog;)V

    iput-object v0, p0, Lcom/miui/player/ui/OperationDialog;->mConfirmClicked:Landroid/content/DialogInterface$OnClickListener;

    .line 41
    iput-object p1, p0, Lcom/miui/player/ui/OperationDialog;->mActivity:Landroid/app/Activity;

    .line 42
    iput-object p2, p0, Lcom/miui/player/ui/OperationDialog;->mListener:Lcom/miui/player/ui/DialogCallback;

    .line 43
    iput p4, p0, Lcom/miui/player/ui/OperationDialog;->mRequestCode:I

    .line 44
    iput-object p3, p0, Lcom/miui/player/ui/OperationDialog;->mBuilder:Lcom/miui/player/ui/OperationDialog$DialogBuilder;

    .line 45
    iput-object p5, p0, Lcom/miui/player/ui/OperationDialog;->mCallbackIntent:Landroid/content/Intent;

    .line 46
    return-void
.end method

.method protected static getSuggestedName(Ljava/lang/String;Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 10
    .parameter "template"
    .parameter "c"
    .parameter "nameIdx"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 314
    if-nez p1, :cond_0

    .line 315
    const/4 v5, 0x0

    .line 343
    :goto_0
    return-object v5

    .line 318
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 320
    .local v4, pos:I
    const/4 v1, 0x1

    .line 321
    .local v1, num:I
    new-array v6, v9, [Ljava/lang/Object;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #num:I
    .local v2, num:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {p0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, suggestedname:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, done:Z
    move v1, v2

    .line 329
    .end local v2           #num:I
    .restart local v1       #num:I
    :cond_1
    if-nez v0, :cond_3

    .line 330
    const/4 v0, 0x1

    .line 331
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 332
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_1

    .line 333
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, playlistname:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 335
    new-array v6, v9, [Ljava/lang/Object;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #num:I
    .restart local v2       #num:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {p0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 336
    const/4 v0, 0x0

    move v1, v2

    .line 338
    .end local v2           #num:I
    .restart local v1       #num:I
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 341
    .end local v3           #playlistname:Ljava/lang/String;
    :cond_3
    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0
.end method

.method public static makeEqualizerConfigCreator(Landroid/app/Activity;Lcom/miui/player/ui/DialogCallback;ILjava/lang/String;Landroid/content/Intent;)Lcom/miui/player/ui/OperationDialog;
    .locals 6
    .parameter "a"
    .parameter "l"
    .parameter "requestCode"
    .parameter "data"
    .parameter "extras"

    .prologue
    .line 354
    new-instance v3, Lcom/miui/player/ui/OperationDialog$EqualizerBuilder;

    invoke-direct {v3, p0, p3}, Lcom/miui/player/ui/OperationDialog$EqualizerBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 355
    .local v3, creator:Lcom/miui/player/ui/OperationDialog$DialogBuilder;
    new-instance v0, Lcom/miui/player/ui/OperationDialog;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/ui/OperationDialog;-><init>(Landroid/app/Activity;Lcom/miui/player/ui/DialogCallback;Lcom/miui/player/ui/OperationDialog$DialogBuilder;ILandroid/content/Intent;)V

    return-object v0
.end method

.method public static makePlaylistCreator(Landroid/app/Activity;Lcom/miui/player/ui/DialogCallback;ILandroid/content/Intent;)Lcom/miui/player/ui/OperationDialog;
    .locals 6
    .parameter "a"
    .parameter "l"
    .parameter "requestCode"
    .parameter "extras"

    .prologue
    .line 348
    new-instance v3, Lcom/miui/player/ui/OperationDialog$NewPlaylistBuilder;

    invoke-direct {v3, p0}, Lcom/miui/player/ui/OperationDialog$NewPlaylistBuilder;-><init>(Landroid/content/Context;)V

    .line 349
    .local v3, creator:Lcom/miui/player/ui/OperationDialog$DialogBuilder;
    new-instance v0, Lcom/miui/player/ui/OperationDialog;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/ui/OperationDialog;-><init>(Landroid/app/Activity;Lcom/miui/player/ui/DialogCallback;Lcom/miui/player/ui/OperationDialog$DialogBuilder;ILandroid/content/Intent;)V

    return-object v0
.end method

.method public static makePlaylistRenamer(Landroid/app/Activity;Lcom/miui/player/ui/DialogCallback;ILandroid/content/Intent;J)Lcom/miui/player/ui/OperationDialog;
    .locals 7
    .parameter "a"
    .parameter "l"
    .parameter "requestCode"
    .parameter "extras"
    .parameter "renameId"

    .prologue
    .line 361
    invoke-static {p0}, Lcom/miui/player/provider/PlaylistHelper;->queryAllPlaylistNameSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v6

    .line 362
    .local v6, existNameSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Lcom/miui/player/ui/OperationDialog$PlaylistRenameBuilder;

    invoke-direct {v3, p0, p4, p5, v6}, Lcom/miui/player/ui/OperationDialog$PlaylistRenameBuilder;-><init>(Landroid/content/Context;JLjava/util/Set;)V

    .line 363
    .local v3, builder:Lcom/miui/player/ui/OperationDialog$DialogBuilder;
    new-instance v0, Lcom/miui/player/ui/OperationDialog;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/ui/OperationDialog;-><init>(Landroid/app/Activity;Lcom/miui/player/ui/DialogCallback;Lcom/miui/player/ui/OperationDialog$DialogBuilder;ILandroid/content/Intent;)V

    return-object v0
.end method


# virtual methods
.method public show()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 49
    iget-object v4, p0, Lcom/miui/player/ui/OperationDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 50
    .local v3, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f030017

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 51
    .local v2, entryView:Landroid/view/View;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/miui/player/ui/OperationDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/player/ui/OperationDialog;->mBuilder:Lcom/miui/player/ui/OperationDialog$DialogBuilder;

    invoke-interface {v5}, Lcom/miui/player/ui/OperationDialog$DialogBuilder;->getPrompt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090001

    iget-object v6, p0, Lcom/miui/player/ui/OperationDialog;->mConfirmClicked:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/player/ui/OperationDialog;->mBuilder:Lcom/miui/player/ui/OperationDialog$DialogBuilder;

    invoke-interface {v5, v7}, Lcom/miui/player/ui/OperationDialog$DialogBuilder;->getConfirm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/player/ui/OperationDialog;->mConfirmClicked:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 59
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 60
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setVolumeControlStream(I)V

    .line 62
    iget-object v4, p0, Lcom/miui/player/ui/OperationDialog;->mBuilder:Lcom/miui/player/ui/OperationDialog$DialogBuilder;

    invoke-interface {v4}, Lcom/miui/player/ui/OperationDialog$DialogBuilder;->getSuggestionName()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, defaultname:Ljava/lang/String;
    const v4, 0x7f0c005a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/miui/player/ui/OperationDialog;->mInput:Landroid/widget/EditText;

    .line 64
    iget-object v4, p0, Lcom/miui/player/ui/OperationDialog;->mInput:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v4, p0, Lcom/miui/player/ui/OperationDialog;->mInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 66
    iget-object v4, p0, Lcom/miui/player/ui/OperationDialog;->mInput:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/miui/player/ui/OperationDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 68
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/player/ui/OperationDialog;->mSaveButton:Landroid/widget/Button;

    .line 69
    return-void
.end method
