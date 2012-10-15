.class public Lcom/miui/player/model/FolderListAdapter;
.super Lcom/miui/player/model/SectionCursorAdapter;
.source "FolderListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/FolderListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final FOLDER_COLUMNS:[Ljava/lang/String;

.field public static final SORT_KEY_IDX:I


# instance fields
.field private final mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

.field private mCountIdx:I

.field private final mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/ui/controller/MultiChoiceController",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPathIdx:I

.field private mTitleIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/miui/player/util/FolderProvider$Columns;->ALL_COLUMNS:[Ljava/lang/String;

    sput-object v0, Lcom/miui/player/model/FolderListAdapter;->FOLDER_COLUMNS:[Ljava/lang/String;

    .line 21
    sget v0, Lcom/miui/player/util/FolderProvider$Columns;->SORT_KEY_IDX:I

    sput v0, Lcom/miui/player/model/FolderListAdapter;->SORT_KEY_IDX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/player/ui/FolderBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[ILmiui/widget/AlphabetFastIndexer;Lcom/miui/player/ui/controller/MultiChoiceController;)V
    .locals 9
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "fastIndexer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/player/ui/FolderBrowserActivity;",
            "I",
            "Landroid/database/Cursor;",
            "[",
            "Ljava/lang/String;",
            "[I",
            "Lmiui/widget/AlphabetFastIndexer;",
            "Lcom/miui/player/ui/controller/MultiChoiceController",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p8, controller:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<Ljava/lang/String;>;"
    const-string v8, "title"

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lcom/miui/player/model/SectionCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILmiui/widget/AlphabetFastIndexer;Ljava/lang/String;)V

    .line 40
    iput-object p2, p0, Lcom/miui/player/model/FolderListAdapter;->mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

    .line 41
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/miui/player/model/FolderListAdapter;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    .line 42
    invoke-direct {p0, p4}, Lcom/miui/player/model/FolderListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 43
    return-void
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 46
    if-eqz p1, :cond_0

    .line 47
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/FolderListAdapter;->mTitleIdx:I

    .line 48
    const-string v0, "path"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/FolderListAdapter;->mPathIdx:I

    .line 49
    const-string v0, "count"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/FolderListAdapter;->mCountIdx:I

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/miui/player/model/SectionCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/model/FolderListAdapter$ViewHolder;

    .line 68
    .local v2, vh:Lcom/miui/player/model/FolderListAdapter$ViewHolder;
    iget-object v3, v2, Lcom/miui/player/model/FolderListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget v4, p0, Lcom/miui/player/model/FolderListAdapter;->mTitleIdx:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget v3, p0, Lcom/miui/player/model/FolderListAdapter;->mCountIdx:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 70
    .local v0, count:I
    iget-object v3, v2, Lcom/miui/player/model/FolderListAdapter$ViewHolder;->count:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/player/model/FolderListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0900e5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget v3, p0, Lcom/miui/player/model/FolderListAdapter;->mPathIdx:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, path:Ljava/lang/String;
    iget-object v3, v2, Lcom/miui/player/model/FolderListAdapter$ViewHolder;->path:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/miui/player/ui/UIHelper;->getDisplayFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v3, p0, Lcom/miui/player/model/FolderListAdapter;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/miui/player/ui/controller/MultiChoiceController;->bindItemView(Landroid/view/View;I)V

    .line 75
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/player/model/FolderListAdapter;->mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/FolderBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 80
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 81
    const/4 p1, 0x0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/miui/player/model/FolderListAdapter;->mActivity:Lcom/miui/player/ui/FolderBrowserActivity;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/FolderBrowserActivity;->swapCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-direct {p0, p1}, Lcom/miui/player/model/FolderListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 86
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/player/model/SectionCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 87
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/miui/player/model/SectionCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/miui/player/model/FolderListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/miui/player/model/FolderListAdapter$ViewHolder;-><init>()V

    .line 57
    .local v1, vh:Lcom/miui/player/model/FolderListAdapter$ViewHolder;
    const v2, 0x7f0c0007

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/player/model/FolderListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 58
    const v2, 0x7f0c0019

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/player/model/FolderListAdapter$ViewHolder;->path:Landroid/widget/TextView;

    .line 59
    const v2, 0x7f0c006a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/player/model/FolderListAdapter$ViewHolder;->count:Landroid/widget/TextView;

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    return-object v0
.end method
