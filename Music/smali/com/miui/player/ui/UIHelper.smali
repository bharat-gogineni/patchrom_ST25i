.class public Lcom/miui/player/ui/UIHelper;
.super Ljava/lang/Object;
.source "UIHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/UIHelper$CheckBoxItemBinder;,
        Lcom/miui/player/ui/UIHelper$MaskItemBinder;,
        Lcom/miui/player/ui/UIHelper$ImageFactory;,
        Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;
    }
.end annotation


# static fields
.field static final SD_ERROR_INDICATORS:[I

.field static final SD_USABLE_INDICATORS:[I

.field private static final TAG:Ljava/lang/String;

.field private static mLastSdStatus:Ljava/lang/String;

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static final sTimeArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 50
    const-class v0, Lcom/miui/player/ui/UIHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/ui/UIHelper;->TAG:Ljava/lang/String;

    .line 132
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/player/ui/UIHelper;->SD_ERROR_INDICATORS:[I

    .line 139
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/player/ui/UIHelper;->SD_USABLE_INDICATORS:[I

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/miui/player/ui/UIHelper;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 235
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/miui/player/ui/UIHelper;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    sput-object v0, Lcom/miui/player/ui/UIHelper;->sFormatter:Ljava/util/Formatter;

    .line 352
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/miui/player/ui/UIHelper;->sTimeArgs:[Ljava/lang/Object;

    return-void

    .line 132
    nop

    :array_0
    .array-data 0x4
        0x9at 0x0t 0xct 0x7ft
        0x99t 0x0t 0xct 0x7ft
        0x98t 0x0t 0xct 0x7ft
        0x9bt 0x0t 0xct 0x7ft
    .end array-data

    .line 139
    :array_1
    .array-data 0x4
        0xat 0x0t 0x2t 0x1t
        0x17t 0x0t 0xct 0x7ft
        0xa6t 0x0t 0xct 0x7ft
        0x82t 0x0t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    return-void
.end method

.method public static createBinderForGrid(II)Lcom/miui/player/ui/controller/MultiChoiceController$ItemViewBinder;
    .locals 1
    .parameter "checkBoxId"
    .parameter "maskId"

    .prologue
    .line 590
    new-instance v0, Lcom/miui/player/ui/UIHelper$MaskItemBinder;

    invoke-direct {v0, p0, p1}, Lcom/miui/player/ui/UIHelper$MaskItemBinder;-><init>(II)V

    return-object v0
.end method

.method public static createBinderForList(I)Lcom/miui/player/ui/controller/MultiChoiceController$ItemViewBinder;
    .locals 1
    .parameter "checkBoxId"

    .prologue
    .line 586
    new-instance v0, Lcom/miui/player/ui/UIHelper$CheckBoxItemBinder;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/UIHelper$CheckBoxItemBinder;-><init>(I)V

    return-object v0
.end method

.method public static displayDatabaseError(Landroid/app/Activity;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    const v0, 0x7f09005a

    .line 163
    :goto_1
    const-string v3, "shared"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "unmounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 165
    :cond_2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 166
    const v0, 0x7f090058

    move v1, v0

    .line 189
    :goto_2
    sget-object v3, Lcom/miui/player/ui/UIHelper;->SD_ERROR_INDICATORS:[I

    array-length v4, v3

    move v0, v2

    :goto_3
    if-ge v0, v4, :cond_b

    aget v5, v3, v0

    .line 190
    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 191
    if-eqz v5, :cond_3

    .line 192
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 160
    :cond_4
    const v0, 0x7f09005b

    goto :goto_1

    .line 168
    :cond_5
    const v0, 0x7f090059

    move v1, v0

    goto :goto_2

    .line 170
    :cond_6
    const-string v3, "removed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 171
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 172
    const v0, 0x7f090056

    move v1, v0

    goto :goto_2

    .line 174
    :cond_7
    const v0, 0x7f090057

    move v1, v0

    goto :goto_2

    .line 176
    :cond_8
    const-string v3, "mounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 181
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 182
    const-class v3, Lcom/miui/player/ui/ScanningProgress;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 183
    const/16 v3, 0xb

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v0

    .line 184
    goto :goto_2

    :cond_9
    sget-object v3, Lcom/miui/player/ui/UIHelper;->mLastSdStatus:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 185
    sput-object v1, Lcom/miui/player/ui/UIHelper;->mLastSdStatus:Ljava/lang/String;

    .line 186
    sget-object v3, Lcom/miui/player/ui/UIHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sd card: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v1, v0

    goto :goto_2

    .line 196
    :cond_b
    sget-object v3, Lcom/miui/player/ui/UIHelper;->SD_USABLE_INDICATORS:[I

    array-length v4, v3

    move v0, v2

    :goto_4
    if-ge v0, v4, :cond_d

    aget v2, v3, v0

    .line 197
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 198
    if-eqz v2, :cond_c

    .line 199
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 196
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 203
    :cond_d
    const v0, 0x7f0c009a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 204
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "format"
    .parameter "args"

    .prologue
    .line 240
    sget-object v0, Lcom/miui/player/ui/UIHelper;->sFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 241
    sget-object v0, Lcom/miui/player/ui/UIHelper;->sFormatter:Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getActivityHeight(Landroid/app/Activity;)I
    .locals 4
    .parameter "a"

    .prologue
    .line 580
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 581
    .local v0, metric:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 582
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x60a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public static getDescript(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "context"
    .parameter "ar"
    .parameter "al"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 312
    invoke-static {p0, p1}, Lcom/miui/player/meta/MetaManager;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 313
    invoke-static {p0, p2}, Lcom/miui/player/meta/MetaManager;->getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 314
    const-string v2, ""

    .line 315
    .local v2, showName:Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move v1, v3

    .line 316
    .local v1, hasArtist:Z
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v3

    .line 317
    .local v0, hasAlbum:Z
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 318
    const v5, 0x7f0900e6

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v4

    aput-object p2, v6, v3

    invoke-static {v5, v6}, Lcom/miui/player/ui/UIHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 325
    :cond_0
    :goto_2
    return-object v2

    .end local v0           #hasAlbum:Z
    .end local v1           #hasArtist:Z
    :cond_1
    move v1, v4

    .line 315
    goto :goto_0

    .restart local v1       #hasArtist:Z
    :cond_2
    move v0, v4

    .line 316
    goto :goto_1

    .line 319
    .restart local v0       #hasAlbum:Z
    :cond_3
    if-eqz v1, :cond_4

    .line 320
    move-object v2, p1

    goto :goto_2

    .line 321
    :cond_4
    if-eqz v0, :cond_0

    .line 322
    move-object v2, p2

    goto :goto_2
.end method

.method public static getDisplayFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "raw"

    .prologue
    .line 490
    const-string v0, "/mnt/"

    .line 491
    .local v0, PREFIX:Ljava/lang/String;
    const-string v1, "/mnt/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    const-string v1, "/mnt/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 495
    :cond_0
    return-object p0
.end method

.method public static getHomeAsUpWidth(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 560
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 561
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    return v1
.end method

.method public static getListViewFooterCount(Landroid/widget/AdapterView;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, v:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    instance-of v0, p0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 480
    check-cast p0, Landroid/widget/ListView;

    .end local p0           #v:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    .line 483
    :goto_0
    return v0

    .restart local p0       #v:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getListViewHeaderCount(Landroid/widget/AdapterView;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, v:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    instance-of v0, p0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 472
    check-cast p0, Landroid/widget/ListView;

    .end local p0           #v:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 475
    :goto_0
    return v0

    .restart local p0       #v:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hideDatabaseError(Landroid/app/Activity;)V
    .locals 6
    .parameter "a"

    .prologue
    .line 210
    sget-object v0, Lcom/miui/player/ui/UIHelper;->SD_ERROR_INDICATORS:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    .line 211
    .local v2, id:I
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 212
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 213
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 210
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v2           #id:I
    .end local v4           #v:Landroid/view/View;
    :cond_1
    sget-object v0, Lcom/miui/player/ui/UIHelper;->SD_USABLE_INDICATORS:[I

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    aget v2, v0, v1

    .line 218
    .restart local v2       #id:I
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 219
    .restart local v4       #v:Landroid/view/View;
    if-eqz v4, :cond_2

    .line 220
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 223
    .end local v2           #id:I
    .end local v4           #v:Landroid/view/View;
    :cond_3
    return-void
.end method

.method public static makeAlbumsLabel(Landroid/content/Context;IILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "numalbums"
    .parameter "numsongs"
    .parameter "artist"

    .prologue
    const/high16 v10, 0x7f0a

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 253
    const/4 v4, 0x0

    .line 254
    .local v4, songs_albums:Ljava/lang/String;
    invoke-static {p3}, Lcom/miui/player/meta/MetaManager;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 256
    .local v2, isUnknown:Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 257
    .local v3, r:Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 258
    invoke-virtual {v3, v10, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, format:Ljava/lang/String;
    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1, v6}, Lcom/miui/player/ui/UIHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 269
    :goto_0
    return-object v4

    .line 261
    .end local v1           #format:Ljava/lang/String;
    :cond_0
    const v6, 0x7f0a0001

    invoke-virtual {v3, v6, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    .restart local v1       #format:Ljava/lang/String;
    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1, v6}, Lcom/miui/player/ui/UIHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, album:Ljava/lang/String;
    invoke-virtual {v3, v10, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1, v6}, Lcom/miui/player/ui/UIHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, track:Ljava/lang/String;
    const v6, 0x7f090007

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v8

    aput-object v5, v6, v9

    invoke-static {v1, v6}, Lcom/miui/player/ui/UIHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static makeAlbumsSongsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "numalbums"
    .parameter "numsongs"
    .parameter "isUnknown"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v1, songs_albums:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 286
    .local v0, r:Landroid/content/res/Resources;
    if-nez p3, :cond_0

    .line 287
    const v2, 0x7f0a0001

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    const v2, 0x7f0900d8

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_0
    const/high16 v2, 0x7f0a

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static makeImageFactory(Landroid/content/Context;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/drawable/Drawable;)Landroid/widget/ViewSwitcher$ViewFactory;
    .locals 2
    .parameter "context"
    .parameter "width"
    .parameter "height"
    .parameter "scaleType"
    .parameter "exclude"

    .prologue
    const/4 v1, -0x1

    .line 519
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 521
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {p0, v0, p3, p4}, Lcom/miui/player/ui/UIHelper;->makeImageFactory(Landroid/content/Context;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/ImageView$ScaleType;Landroid/graphics/drawable/Drawable;)Landroid/widget/ViewSwitcher$ViewFactory;

    move-result-object v1

    return-object v1
.end method

.method public static makeImageFactory(Landroid/content/Context;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/ImageView$ScaleType;Landroid/graphics/drawable/Drawable;)Landroid/widget/ViewSwitcher$ViewFactory;
    .locals 1
    .parameter "context"
    .parameter "params"
    .parameter "scaleType"
    .parameter "exclude"

    .prologue
    .line 526
    new-instance v0, Lcom/miui/player/ui/UIHelper$ImageFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/player/ui/UIHelper$ImageFactory;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/ImageView$ScaleType;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static makePlaylistMenu(Landroid/content/Context;Landroid/view/Menu;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "sub"
    .parameter "extras"

    .prologue
    .line 127
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/miui/player/ui/UIHelper;->makePlaylistMenu(Landroid/content/Context;Landroid/view/Menu;Landroid/content/Intent;J)V

    .line 128
    return-void
.end method

.method public static makePlaylistMenu(Landroid/content/Context;Landroid/view/Menu;Landroid/content/Intent;J)V
    .locals 8
    .parameter "context"
    .parameter "sub"
    .parameter "extras"
    .parameter "excludeId"

    .prologue
    .line 93
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 94
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    const/16 v1, 0xc

    const/4 v4, 0x0

    const v5, 0x7f090065

    invoke-interface {p1, v0, v1, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 97
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v4, 0x0

    const v5, 0x7f090066

    invoke-interface {p1, v0, v1, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 99
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "name"

    aput-object v1, v2, v0

    .line 104
    .local v2, cols:[Ljava/lang/String;
    const-string v0, "(%s!=\'\') AND (%s=%d) AND (%s!=%d)"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "name"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "list_type"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "_id"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, whereclause:Ljava/lang/String;
    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 110
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 112
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v7, intent:Landroid/content/Intent;
    if-eqz p2, :cond_1

    .line 115
    invoke-virtual {v7, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 117
    :cond_1
    const-string v0, "dst_playlist"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v7, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 118
    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0, v1, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 121
    .end local v7           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_3
    return-void
.end method

.method public static makeSpecialView(Landroid/content/Context;III)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "headerId"
    .parameter "iconId"
    .parameter "textId"

    .prologue
    .line 304
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 305
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0c0069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 306
    const v1, 0x7f0c007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 307
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 308
    return-object v0
.end method

.method public static makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "secs"
    .parameter "formatId"

    .prologue
    const-wide/16 v3, 0xe10

    const-wide/16 v5, 0x3c

    .line 354
    cmp-long v2, p1, v3

    if-gez v2, :cond_0

    .end local p3
    :goto_0
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, durationformat:Ljava/lang/String;
    sget-object v1, Lcom/miui/player/ui/UIHelper;->sTimeArgs:[Ljava/lang/Object;

    .line 356
    .local v1, timeArgs:[Ljava/lang/Object;
    const/4 v2, 0x0

    div-long v3, p1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 357
    const/4 v2, 0x1

    div-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 358
    const/4 v2, 0x2

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 359
    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 360
    const/4 v2, 0x4

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 362
    invoke-static {v0, v1}, Lcom/miui/player/ui/UIHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 354
    .end local v0           #durationformat:Ljava/lang/String;
    .end local v1           #timeArgs:[Ljava/lang/Object;
    .restart local p3
    :cond_0
    const p3, 0x7f0900db

    goto :goto_0
.end method

.method public static notifyAddToPlaylist(Landroid/content/Context;JI)V
    .locals 6
    .parameter "context"
    .parameter "playlistId"
    .parameter "size"

    .prologue
    const/4 v5, 0x0

    .line 226
    invoke-static {p0, p1, p2}, Lcom/miui/player/provider/FavoriteCache;->isFavoritePlaylistId(Landroid/content/Context;J)Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x7f0a000e

    .line 228
    .local v1, msgId:I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, p3, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, message:Ljava/lang/String;
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 232
    return-void

    .line 226
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #msgId:I
    :cond_0
    const v1, 0x7f0a000d

    goto :goto_0
.end method

.method public static sendByChooser(Landroid/content/Context;J)Z
    .locals 12
    .parameter "context"
    .parameter "audioId"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 329
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 330
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "title"

    aput-object v0, v2, v11

    const-string v0, "_size"

    aput-object v0, v2, v6

    .local v2, proj:[Ljava/lang/String;
    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 331
    invoke-static/range {v0 .. v6}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    .line 332
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    move v6, v11

    .line 348
    :goto_0
    return v6

    .line 337
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 340
    const/4 v0, 0x0

    const-string v3, "audio/*"

    invoke-virtual {v8, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/xiaomi/common/util/Strings;->formatSize(J)Ljava/lang/String;

    move-result-object v9

    .line 342
    .local v9, size:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v9, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 343
    .local v10, title:Ljava/lang/String;
    invoke-static {v8, v10}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #size:Ljava/lang/String;
    .end local v10           #title:Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 342
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v9       #size:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 346
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #size:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static setChildEnabled(Landroid/view/ViewGroup;Z)V
    .locals 3
    .parameter "parent"
    .parameter "enabled"

    .prologue
    .line 297
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 298
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 299
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    :cond_0
    return-void
.end method

.method public static setLayoutHeight(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "height"

    .prologue
    .line 574
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 575
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 576
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    return-void
.end method

.method public static setPadding(Landroid/view/View;IIII)V
    .locals 0
    .parameter "v"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 422
    if-ltz p1, :cond_0

    .end local p1
    :goto_0
    if-ltz p2, :cond_1

    .end local p2
    :goto_1
    if-ltz p3, :cond_2

    .end local p3
    :goto_2
    if-ltz p4, :cond_3

    .end local p4
    :goto_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 426
    return-void

    .line 422
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    goto :goto_0

    .end local p1
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    goto :goto_1

    .end local p2
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    goto :goto_2

    .end local p3
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    goto :goto_3
.end method

.method public static setRingtone(Landroid/content/Context;J)V
    .locals 12
    .parameter "context"
    .parameter "id"

    .prologue
    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 372
    .local v9, resolver:Landroid/content/ContentResolver;
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 374
    .local v10, ringUri:Landroid/net/Uri;
    :try_start_0
    new-instance v11, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v11, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 375
    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "is_ringtone"

    const-string v1, "1"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v0, "is_alarm"

    const-string v1, "1"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v9, v10, v11, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "title"

    aput-object v1, v2, v0

    .line 390
    .local v2, cols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 394
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 396
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 397
    const-string v0, "ringtone"

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 398
    const v0, 0x7f090060

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 399
    .local v8, message:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p0, v8, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    .end local v8           #message:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 403
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 406
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v7

    .line 380
    .local v7, ex:Ljava/lang/UnsupportedOperationException;
    sget-object v0, Lcom/miui/player/ui/UIHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t set ringtone flag for id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 402
    .end local v7           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v11       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 403
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static toggleCurrentAudioFavorite(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 504
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentAudioId()J

    move-result-wide v0

    .line 505
    .local v0, audioId:J
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentOnlineId()Ljava/lang/String;

    move-result-object v3

    .line 506
    .local v3, onlineId:Ljava/lang/String;
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->getFavoritePlaylistId(Landroid/content/Context;)J

    move-result-wide v4

    .line 507
    .local v4, plid:J
    invoke-static {p0, v0, v1, v3}, Lcom/miui/player/provider/FavoriteCache;->contains(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    move v2, v6

    .line 508
    .local v2, favorite:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 509
    new-array v8, v6, [J

    aput-wide v0, v8, v7

    invoke-static {p0, v8, v4, v5, v6}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylist(Landroid/content/Context;[JJZ)I

    .line 514
    :goto_1
    return v2

    .end local v2           #favorite:Z
    :cond_0
    move v2, v7

    .line 507
    goto :goto_0

    .line 511
    .restart local v2       #favorite:Z
    :cond_1
    new-array v6, v6, [J

    aput-wide v0, v6, v7

    invoke-static {p0, v6, v4, v5}, Lcom/miui/player/provider/PlaylistHelper;->removeMembers(Landroid/content/Context;[JJ)I

    goto :goto_1
.end method

.method public static unregistBroadcastReceiverSafe(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z
    .locals 1
    .parameter "context"
    .parameter "receiver"

    .prologue
    .line 410
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    const/4 v0, 0x1

    .line 415
    :goto_0
    return v0

    .line 412
    :catch_0
    move-exception v0

    .line 415
    const/4 v0, 0x0

    goto :goto_0
.end method
