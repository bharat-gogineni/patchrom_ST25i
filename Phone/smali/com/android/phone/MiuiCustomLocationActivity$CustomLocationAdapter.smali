.class public Lcom/android/phone/MiuiCustomLocationActivity$CustomLocationAdapter;
.super Landroid/widget/CursorAdapter;
.source "MiuiCustomLocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiCustomLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomLocationAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiCustomLocationActivity;


# direct methods
.method public constructor <init>(Lcom/android/phone/MiuiCustomLocationActivity;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "c"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/phone/MiuiCustomLocationActivity$CustomLocationAdapter;->this$0:Lcom/android/phone/MiuiCustomLocationActivity;

    .line 75
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 76
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MiuiCustomLocationActivity$ItemView;

    .line 88
    .local v0, item:Lcom/android/phone/MiuiCustomLocationActivity$ItemView;
    iget-object v2, v0, Lcom/android/phone/MiuiCustomLocationActivity$ItemView;->location:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v2, v0, Lcom/android/phone/MiuiCustomLocationActivity$ItemView;->number:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const/4 v2, 0x3

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 91
    .local v1, type:I
    packed-switch v1, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 93
    :pswitch_0
    iget-object v2, v0, Lcom/android/phone/MiuiCustomLocationActivity$ItemView;->type:Landroid/widget/TextView;

    const v3, 0x7f0c0347

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v2, v0, Lcom/android/phone/MiuiCustomLocationActivity$ItemView;->type:Landroid/widget/TextView;

    const v3, 0x7f0c0346

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 99
    :pswitch_2
    iget-object v2, v0, Lcom/android/phone/MiuiCustomLocationActivity$ItemView;->type:Landroid/widget/TextView;

    const v3, 0x7f0c0344

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 80
    iget-object v1, p0, Lcom/android/phone/MiuiCustomLocationActivity$CustomLocationAdapter;->this$0:Lcom/android/phone/MiuiCustomLocationActivity;

    #getter for: Lcom/android/phone/MiuiCustomLocationActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/android/phone/MiuiCustomLocationActivity;->access$000(Lcom/android/phone/MiuiCustomLocationActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04000d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/android/phone/MiuiCustomLocationActivity$ItemView;

    invoke-direct {v1, v0}, Lcom/android/phone/MiuiCustomLocationActivity$ItemView;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    return-object v0
.end method
