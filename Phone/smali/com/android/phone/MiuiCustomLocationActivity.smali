.class public Lcom/android/phone/MiuiCustomLocationActivity;
.super Landroid/app/ListActivity;
.source "MiuiCustomLocationActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiCustomLocationActivity$QueryHandler;,
        Lcom/android/phone/MiuiCustomLocationActivity$LocationQuery;,
        Lcom/android/phone/MiuiCustomLocationActivity$CustomLocationAdapter;,
        Lcom/android/phone/MiuiCustomLocationActivity$ItemView;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Landroid/widget/ListView;

.field private mListAdapter:Lcom/android/phone/MiuiCustomLocationActivity$CustomLocationAdapter;

.field private mQueryHandler:Lcom/android/phone/MiuiCustomLocationActivity$QueryHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiCustomLocationActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/phone/MiuiCustomLocationActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiCustomLocationActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCustomLocationActivity;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 134
    new-instance v0, Lcom/android/phone/MiuiCustomLocationActivity$CustomLocationAdapter;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/phone/MiuiCustomLocationActivity$CustomLocationAdapter;-><init>(Lcom/android/phone/MiuiCustomLocationActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/phone/MiuiCustomLocationActivity;->mListAdapter:Lcom/android/phone/MiuiCustomLocationActivity$CustomLocationAdapter;

    .line 135
    iget-object v0, p0, Lcom/android/phone/MiuiCustomLocationActivity;->mListAdapter:Lcom/android/phone/MiuiCustomLocationActivity$CustomLocationAdapter;

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCustomLocationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    return-void
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Lcom/android/phone/MiuiCustomLocationActivity;->mQueryHandler:Lcom/android/phone/MiuiCustomLocationActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/phone/MiuiCustomLocationActivity$LocationQuery;->COLUMNS:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/MiuiCustomLocationActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v1, 0x7f04000c

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCustomLocationActivity;->setContentView(I)V

    .line 39
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCustomLocationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/phone/MiuiCustomLocationActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    invoke-virtual {p0}, Lcom/android/phone/MiuiCustomLocationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiCustomLocationActivity;->mList:Landroid/widget/ListView;

    .line 41
    iget-object v1, p0, Lcom/android/phone/MiuiCustomLocationActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 42
    iget-object v1, p0, Lcom/android/phone/MiuiCustomLocationActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04000b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, headerView:Landroid/view/View;
    new-instance v1, Lcom/android/phone/MiuiCustomLocationActivity$1;

    invoke-direct {v1, p0}, Lcom/android/phone/MiuiCustomLocationActivity$1;-><init>(Lcom/android/phone/MiuiCustomLocationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v1, p0, Lcom/android/phone/MiuiCustomLocationActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 54
    new-instance v1, Lcom/android/phone/MiuiCustomLocationActivity$QueryHandler;

    invoke-direct {v1, p0, p0}, Lcom/android/phone/MiuiCustomLocationActivity$QueryHandler;-><init>(Lcom/android/phone/MiuiCustomLocationActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/MiuiCustomLocationActivity;->mQueryHandler:Lcom/android/phone/MiuiCustomLocationActivity$QueryHandler;

    .line 55
    invoke-direct {p0}, Lcom/android/phone/MiuiCustomLocationActivity;->startQuery()V

    .line 57
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 58
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/MiuiEditCustomLocationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    const-string v1, "action_edit_custom_location"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object v1, p0, Lcom/android/phone/MiuiCustomLocationActivity;->mListAdapter:Lcom/android/phone/MiuiCustomLocationActivity$CustomLocationAdapter;

    invoke-virtual {v1}, Lcom/android/phone/MiuiCustomLocationActivity$CustomLocationAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 153
    if-eqz v1, :cond_0

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    const-string v2, "_id"

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    const-string v2, "number"

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v2, "location"

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v2, "type"

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCustomLocationActivity;->startActivity(Landroid/content/Intent;)V

    .line 163
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 145
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 142
    :pswitch_0
    const-class v0, Lcom/android/phone/MiuiCallFeaturesSetting;

    invoke-static {p0, v0}, Lcom/android/phone/MiuiPhoneUtils;->goBackToParent(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 143
    const/4 v0, 0x1

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
