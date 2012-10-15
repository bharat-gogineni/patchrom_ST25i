.class public Lcom/miui/gallery/photoeditor/PhotoEditor;
.super Landroid/app/Activity;
.source "PhotoEditor.java"


# instance fields
.field private actionBar:Lcom/miui/gallery/photoeditor/ActionBar;

.field private effectsBar:Lcom/miui/gallery/photoeditor/EffectsBar;

.field private filterStack:Lcom/miui/gallery/photoeditor/FilterStack;

.field private saveUri:Landroid/net/Uri;

.field private sourceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/photoeditor/PhotoEditor;)Lcom/miui/gallery/photoeditor/ActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->actionBar:Lcom/miui/gallery/photoeditor/ActionBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/photoeditor/PhotoEditor;)Lcom/miui/gallery/photoeditor/EffectsBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->effectsBar:Lcom/miui/gallery/photoeditor/EffectsBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/photoeditor/PhotoEditor;)Lcom/miui/gallery/photoeditor/FilterStack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->filterStack:Lcom/miui/gallery/photoeditor/FilterStack;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/photoeditor/PhotoEditor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/photoeditor/PhotoEditor;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/photoeditor/PhotoEditor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->sourceUri:Landroid/net/Uri;

    return-object v0
.end method

.method private createBackRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/miui/gallery/photoeditor/PhotoEditor$6;

    invoke-direct {v0, p0}, Lcom/miui/gallery/photoeditor/PhotoEditor$6;-><init>(Lcom/miui/gallery/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method private createSaveRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/miui/gallery/photoeditor/PhotoEditor$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/photoeditor/PhotoEditor$4;-><init>(Lcom/miui/gallery/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method private createShareRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/miui/gallery/photoeditor/PhotoEditor$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/photoeditor/PhotoEditor$5;-><init>(Lcom/miui/gallery/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method private createUndoRedoRunnable(Z)Ljava/lang/Runnable;
    .locals 1
    .parameter "undo"

    .prologue
    .line 98
    new-instance v0, Lcom/miui/gallery/photoeditor/PhotoEditor$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/photoeditor/PhotoEditor$3;-><init>(Lcom/miui/gallery/photoeditor/PhotoEditor;Z)V

    return-object v0
.end method

.method private openPhoto()V
    .locals 5

    .prologue
    .line 79
    invoke-static {}, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->showDialog()V

    .line 80
    new-instance v0, Lcom/miui/gallery/photoeditor/PhotoEditor$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/photoeditor/PhotoEditor$2;-><init>(Lcom/miui/gallery/photoeditor/PhotoEditor;)V

    .line 94
    .local v0, callback:Lcom/miui/gallery/photoeditor/LoadScreennailTask$Callback;
    new-instance v1, Lcom/miui/gallery/photoeditor/LoadScreennailTask;

    invoke-direct {v1, p0, v0}, Lcom/miui/gallery/photoeditor/LoadScreennailTask;-><init>(Landroid/content/Context;Lcom/miui/gallery/photoeditor/LoadScreennailTask$Callback;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->sourceUri:Landroid/net/Uri;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/miui/gallery/photoeditor/LoadScreennailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->actionBar:Lcom/miui/gallery/photoeditor/ActionBar;

    invoke-virtual {v0}, Lcom/miui/gallery/photoeditor/ActionBar;->clickBack()V

    .line 219
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v1, 0x7f04002b

    invoke-virtual {p0, v1}, Lcom/miui/gallery/photoeditor/PhotoEditor;->setContentView(I)V

    .line 45
    const v1, 0x7f0b008a

    invoke-virtual {p0, v1}, Lcom/miui/gallery/photoeditor/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->initialize(Landroid/view/ViewGroup;)V

    .line 47
    invoke-virtual {p0}, Lcom/miui/gallery/photoeditor/PhotoEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 48
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->sourceUri:Landroid/net/Uri;

    .line 52
    :cond_0
    const v1, 0x7f0b008e

    invoke-virtual {p0, v1}, Lcom/miui/gallery/photoeditor/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/photoeditor/ActionBar;

    iput-object v1, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->actionBar:Lcom/miui/gallery/photoeditor/ActionBar;

    .line 53
    new-instance v4, Lcom/miui/gallery/photoeditor/FilterStack;

    const v1, 0x7f0b008b

    invoke-virtual {p0, v1}, Lcom/miui/gallery/photoeditor/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/photoeditor/PhotoView;

    new-instance v5, Lcom/miui/gallery/photoeditor/PhotoEditor$1;

    invoke-direct {v5, p0}, Lcom/miui/gallery/photoeditor/PhotoEditor$1;-><init>(Lcom/miui/gallery/photoeditor/PhotoEditor;)V

    invoke-direct {v4, v1, v5, p1}, Lcom/miui/gallery/photoeditor/FilterStack;-><init>(Lcom/miui/gallery/photoeditor/PhotoView;Lcom/miui/gallery/photoeditor/FilterStack$StackListener;Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->filterStack:Lcom/miui/gallery/photoeditor/FilterStack;

    .line 61
    if-eqz p1, :cond_1

    .line 62
    const-string v1, "save_uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    .line 63
    iget-object v4, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->actionBar:Lcom/miui/gallery/photoeditor/ActionBar;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/miui/gallery/photoeditor/ActionBar;->updateSave(Z)V

    .line 67
    :cond_1
    const v1, 0x7f0b008c

    invoke-virtual {p0, v1}, Lcom/miui/gallery/photoeditor/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/photoeditor/EffectsBar;

    iput-object v1, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->effectsBar:Lcom/miui/gallery/photoeditor/EffectsBar;

    .line 68
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->effectsBar:Lcom/miui/gallery/photoeditor/EffectsBar;

    iget-object v4, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->filterStack:Lcom/miui/gallery/photoeditor/FilterStack;

    invoke-virtual {v1, v4}, Lcom/miui/gallery/photoeditor/EffectsBar;->initialize(Lcom/miui/gallery/photoeditor/FilterStack;)V

    .line 69
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->effectsBar:Lcom/miui/gallery/photoeditor/EffectsBar;

    invoke-virtual {v1, v3}, Lcom/miui/gallery/photoeditor/EffectsBar;->setEnabled(Z)V

    .line 71
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->actionBar:Lcom/miui/gallery/photoeditor/ActionBar;

    const v4, 0x7f0b007d

    invoke-direct {p0, v2}, Lcom/miui/gallery/photoeditor/PhotoEditor;->createUndoRedoRunnable(Z)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/miui/gallery/photoeditor/ActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 72
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->actionBar:Lcom/miui/gallery/photoeditor/ActionBar;

    const v2, 0x7f0b007e

    invoke-direct {p0, v3}, Lcom/miui/gallery/photoeditor/PhotoEditor;->createUndoRedoRunnable(Z)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/photoeditor/ActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 73
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->actionBar:Lcom/miui/gallery/photoeditor/ActionBar;

    const v2, 0x7f0b0080

    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/PhotoEditor;->createSaveRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/photoeditor/ActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 74
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->actionBar:Lcom/miui/gallery/photoeditor/ActionBar;

    const v2, 0x7f0b0081

    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/PhotoEditor;->createShareRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/photoeditor/ActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 75
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->actionBar:Lcom/miui/gallery/photoeditor/ActionBar;

    const v2, 0x7f0b007c

    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/PhotoEditor;->createBackRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/photoeditor/ActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 76
    return-void

    :cond_2
    move v1, v3

    .line 63
    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 224
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->filterStack:Lcom/miui/gallery/photoeditor/FilterStack;

    invoke-virtual {v0}, Lcom/miui/gallery/photoeditor/FilterStack;->onPause()V

    .line 226
    invoke-static {}, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->dismissDialog()V

    .line 227
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 232
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->filterStack:Lcom/miui/gallery/photoeditor/FilterStack;

    invoke-virtual {v0}, Lcom/miui/gallery/photoeditor/FilterStack;->onResume()V

    .line 233
    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/PhotoEditor;->openPhoto()V

    .line 234
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 212
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->filterStack:Lcom/miui/gallery/photoeditor/FilterStack;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/photoeditor/FilterStack;->saveStacks(Landroid/os/Bundle;)V

    .line 213
    const-string v0, "save_uri"

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 214
    return-void
.end method
