.class public Lcom/miui/home/launcher/upsidescene/SpriteShortcutIcon;
.super Lcom/miui/home/launcher/ItemIcon;
.source "SpriteShortcutIcon.java"


# instance fields
.field private mShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ItemIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public static fromXml(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/upsidescene/SpriteShortcutIcon;
    .locals 4
    .parameter "context"
    .parameter "iconCache"
    .parameter "group"
    .parameter "shortcutInfo"

    .prologue
    .line 30
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030025

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/SpriteShortcutIcon;

    .line 32
    .local v0, shortcut:Lcom/miui/home/launcher/upsidescene/SpriteShortcutIcon;
    iput-object p3, v0, Lcom/miui/home/launcher/upsidescene/SpriteShortcutIcon;->mShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    .line 33
    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/ShortcutInfo;->getIcon(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/SpriteShortcutIcon;->setIcon(Landroid/graphics/Bitmap;)V

    .line 34
    iget-object v1, p3, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/SpriteShortcutIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    return-object v0
.end method


# virtual methods
.method public performClick()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 45
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SpriteShortcutIcon;->mShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v2, v2, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 46
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 47
    .local v1, pos:[I
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/upsidescene/SpriteShortcutIcon;->getLocationOnScreen([I)V

    .line 48
    new-instance v2, Landroid/graphics/Rect;

    aget v3, v1, v5

    aget v4, v1, v8

    aget v5, v1, v5

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteShortcutIcon;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    aget v6, v1, v8

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteShortcutIcon;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 50
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteShortcutIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/miui/home/launcher/LauncherApplication;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 51
    return v8
.end method

.method public setIconTitleVisible(ZZ)V
    .locals 4
    .parameter "showIcon"
    .parameter "showTitle"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 39
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/SpriteShortcutIcon;->mIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteShortcutIcon;->mTitle:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    return-void

    :cond_0
    move v0, v2

    .line 39
    goto :goto_0

    :cond_1
    move v1, v2

    .line 40
    goto :goto_1
.end method
