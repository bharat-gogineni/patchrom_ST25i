.class public Lcom/miui/player/ui/MediaEditDialog;
.super Ljava/lang/Object;
.source "MediaEditDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAlbumEditText:Landroid/widget/EditText;

.field private mAlbumTextView:Landroid/widget/TextView;

.field private mArtistEditText:Landroid/widget/EditText;

.field private mArtistTextView:Landroid/widget/TextView;

.field private final mBundle:Landroid/os/Bundle;

.field private final mCallback:Lcom/miui/player/ui/DialogCallback;

.field private mId3EditCheckBox:Landroid/widget/CheckBox;

.field private mRawAlbumName:Ljava/lang/String;

.field private mRawArtistName:Ljava/lang/String;

.field private mRawTrackName:Ljava/lang/String;

.field private final mRequestCode:I

.field private final mTrace:Landroid/os/Parcelable;

.field private mTrackEditText:Landroid/widget/EditText;

.field private mTrackTextView:Landroid/widget/TextView;

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/player/ui/DialogCallback;I)V
    .locals 2
    .parameter "activity"
    .parameter "intent"
    .parameter "callback"
    .parameter "requestCode"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/player/ui/MediaEditDialog;->mRawTrackName:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/player/ui/MediaEditDialog;->mRawArtistName:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/player/ui/MediaEditDialog;->mRawAlbumName:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/miui/player/ui/MediaEditDialog;->mActivity:Landroid/app/Activity;

    .line 66
    iput-object p2, p0, Lcom/miui/player/ui/MediaEditDialog;->mBundle:Landroid/os/Bundle;

    .line 67
    const-string v0, "trace"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/MediaEditDialog;->mTrace:Landroid/os/Parcelable;

    .line 68
    iget-object v0, p0, Lcom/miui/player/ui/MediaEditDialog;->mActivity:Landroid/app/Activity;

    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/MediaEditDialog;->mUnknownArtist:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/miui/player/ui/MediaEditDialog;->mActivity:Landroid/app/Activity;

    const v1, 0x7f09005d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/MediaEditDialog;->mUnknownAlbum:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/miui/player/ui/MediaEditDialog;->mCallback:Lcom/miui/player/ui/DialogCallback;

    .line 72
    iput p4, p0, Lcom/miui/player/ui/MediaEditDialog;->mRequestCode:I

    .line 73
    return-void
.end method

.method private bindDialog(Landroid/view/View;)V
    .locals 6
    .parameter "dialog"

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x8

    .line 90
    iget-object v0, p0, Lcom/miui/player/ui/MediaEditDialog;->mBundle:Landroid/os/Bundle;

    .line 92
    .local v0, bundle:Landroid/os/Bundle;
    const v2, 0x7f0c0073

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mTrackTextView:Landroid/widget/TextView;

    .line 93
    const v2, 0x7f0c0074

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mTrackEditText:Landroid/widget/EditText;

    .line 94
    const v2, 0x7f0c0075

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mArtistTextView:Landroid/widget/TextView;

    .line 95
    const v2, 0x7f0c0076

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mArtistEditText:Landroid/widget/EditText;

    .line 96
    const v2, 0x7f0c0005

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mAlbumTextView:Landroid/widget/TextView;

    .line 97
    const v2, 0x7f0c0077

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mAlbumEditText:Landroid/widget/EditText;

    .line 98
    const v2, 0x7f0c0078

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mId3EditCheckBox:Landroid/widget/CheckBox;

    .line 100
    const-string v2, "modify_id3_enabled"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 101
    .local v1, modifyId3Enabled:Z
    if-eqz v1, :cond_0

    .line 102
    iget-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mId3EditCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 103
    iget-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mId3EditCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 108
    :goto_0
    const-string v2, "raw_track_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    const-string v2, "raw_track_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mRawTrackName:Ljava/lang/String;

    .line 110
    iget-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mTrackEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/miui/player/ui/MediaEditDialog;->mRawTrackName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mTrackEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/miui/player/ui/MediaEditDialog;->mTrackEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 117
    :goto_1
    const-string v2, "raw_artist_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    const-string v2, "raw_artist_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mRawArtistName:Ljava/lang/String;

    .line 119
    iget-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mArtistEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/miui/player/ui/MediaEditDialog;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/miui/player/ui/MediaEditDialog;->mRawArtistName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/miui/player/meta/MetaManager;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mArtistEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/miui/player/ui/MediaEditDialog;->mArtistEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 126
    :goto_2
    const-string v2, "raw_album_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    const-string v2, "raw_album_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mRawAlbumName:Ljava/lang/String;

    .line 128
    iget-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mAlbumEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/miui/player/ui/MediaEditDialog;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/miui/player/ui/MediaEditDialog;->mRawAlbumName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/miui/player/meta/MetaManager;->getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mAlbumEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/miui/player/ui/MediaEditDialog;->mAlbumEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 134
    :goto_3
    return-void

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mId3EditCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_0

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mTrackTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mTrackEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1

    .line 122
    :cond_2
    iget-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mArtistTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mArtistEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2

    .line 131
    :cond_3
    iget-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mAlbumTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mAlbumEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_3
.end method

.method private isAllTextEmpty()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/miui/player/ui/MediaEditDialog;->mTrackEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/MediaEditDialog;->mArtistEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/MediaEditDialog;->mAlbumEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTrackTextValid()Z
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/miui/player/ui/MediaEditDialog;->mTrackEditText:Landroid/widget/EditText;

    .line 201
    .local v0, editText:Landroid/widget/EditText;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-direct {p0}, Lcom/miui/player/ui/MediaEditDialog;->isTrackTextValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/miui/player/ui/MediaEditDialog;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0900b0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 141
    iget-object v0, p0, Lcom/miui/player/ui/MediaEditDialog;->mId3EditCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 143
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x0

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, confirm:Z
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v2, intent:Landroid/content/Intent;
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/miui/player/ui/MediaEditDialog;->isTrackTextValid()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/miui/player/ui/MediaEditDialog;->mId3EditCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 151
    iget-object v4, p0, Lcom/miui/player/ui/MediaEditDialog;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0900b0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 153
    iget-object v4, p0, Lcom/miui/player/ui/MediaEditDialog;->mId3EditCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 188
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/miui/player/ui/MediaEditDialog;->mCallback:Lcom/miui/player/ui/DialogCallback;

    if-eqz v4, :cond_1

    .line 189
    iget-object v4, p0, Lcom/miui/player/ui/MediaEditDialog;->mCallback:Lcom/miui/player/ui/DialogCallback;

    iget v5, p0, Lcom/miui/player/ui/MediaEditDialog;->mRequestCode:I

    invoke-interface {v4, v5, v0, v2}, Lcom/miui/player/ui/DialogCallback;->onDialogResult(IZLandroid/content/Intent;)V

    .line 191
    :cond_1
    return-void

    .line 154
    :cond_2
    invoke-direct {p0}, Lcom/miui/player/ui/MediaEditDialog;->isAllTextEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 155
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 156
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/miui/player/ui/MediaEditDialog;->mTrackEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/miui/player/ui/MediaEditDialog;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 158
    :cond_3
    const-string v1, ""

    .line 160
    :cond_4
    const-string v4, "new_track_name"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    iget-object v4, p0, Lcom/miui/player/ui/MediaEditDialog;->mAlbumEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/miui/player/ui/MediaEditDialog;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 164
    :cond_5
    const-string v1, ""

    .line 166
    :cond_6
    const-string v4, "new_album_name"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    iget-object v4, p0, Lcom/miui/player/ui/MediaEditDialog;->mArtistEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/miui/player/ui/MediaEditDialog;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 170
    :cond_7
    const-string v1, ""

    .line 172
    :cond_8
    const-string v4, "new_artist_name"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object v4, p0, Lcom/miui/player/ui/MediaEditDialog;->mId3EditCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 175
    .local v3, needModifyId3:Z
    const-string v4, "modify_id3"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    const-string v4, "raw_track_name"

    iget-object v5, p0, Lcom/miui/player/ui/MediaEditDialog;->mRawTrackName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v4, "raw_album_name"

    iget-object v5, p0, Lcom/miui/player/ui/MediaEditDialog;->mRawAlbumName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v4, "raw_artist_name"

    iget-object v5, p0, Lcom/miui/player/ui/MediaEditDialog;->mRawArtistName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v4, "raw_path"

    iget-object v5, p0, Lcom/miui/player/ui/MediaEditDialog;->mBundle:Landroid/os/Bundle;

    const-string v6, "raw_path"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v4, "trace"

    iget-object v5, p0, Lcom/miui/player/ui/MediaEditDialog;->mTrace:Landroid/os/Parcelable;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 184
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public show()V
    .locals 6

    .prologue
    .line 76
    iget-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030020

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, view:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/miui/player/ui/MediaEditDialog;->bindDialog(Landroid/view/View;)V

    .line 79
    iget-object v2, p0, Lcom/miui/player/ui/MediaEditDialog;->mBundle:Landroid/os/Bundle;

    const-string v3, "confirm_text"

    iget-object v4, p0, Lcom/miui/player/ui/MediaEditDialog;->mActivity:Landroid/app/Activity;

    const/high16 v5, 0x7f09

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, confirm:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/player/ui/MediaEditDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090001

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/player/ui/MediaEditDialog;->mBundle:Landroid/os/Bundle;

    const-string v4, "dialog_title"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 87
    return-void
.end method
