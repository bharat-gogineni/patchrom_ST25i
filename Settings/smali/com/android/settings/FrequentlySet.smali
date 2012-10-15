.class public Lcom/android/settings/FrequentlySet;
.super Ljava/lang/Object;
.source "FrequentlySet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/FrequentlySet$HeaderItem;
    }
.end annotation


# static fields
.field private static sAllHeaderItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/FrequentlySet$HeaderItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sHeaderId2Index:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sKey2Index:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSearchHeaderItemIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSearchKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/FrequentlySet;->sKey2Index:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/FrequentlySet;->sHeaderId2Index:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/FrequentlySet;->sSearchKeys:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/FrequentlySet;->sSearchHeaderItemIndex:Ljava/util/ArrayList;

    .line 29
    const-string v0, "airplane_mode_settings"

    const v1, 0x7f050008

    const v2, 0x7f080206

    const v3, 0x7f0b00ea

    const v4, 0x7f0b05e9

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 30
    const-string v0, "mobile_network_settings"

    const v1, 0x7f05002d

    const v2, 0x7f080211

    const v3, 0x7f0b0333

    const v4, 0x7f0b05ea

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 31
    const-string v0, "wifi_settings"

    const v1, 0x7f05005c

    const v2, 0x7f080215

    const v3, 0x7f0b01b2

    const v4, 0x7f0b05eb

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 32
    const-string v0, "bluetooth_settings"

    const v1, 0x7f050011

    const v2, 0x7f080209

    const v3, 0x7f0b0160

    const v4, 0x7f0b05ec

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 33
    const-string v0, "android_beam_settings"

    const v1, 0x7f050009

    const v2, 0x7f080207

    const v3, 0x7f0b01a8

    const v4, 0x7f0b05ed

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 34
    const-string v0, "vpn_settings"

    const v1, 0x7f050055

    const v2, 0x7f08022a

    const v3, 0x7f0b04dc

    const v4, 0x7f0b05ee

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 35
    const-string v0, "tether_settings"

    const v1, 0x7f05004e

    const v2, 0x7f080228

    const v3, 0x7f0b0322

    const v4, 0x7f0b05ef

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 36
    const-string v0, "brightness"

    const v1, 0x7f050013

    const v2, 0x7f08020a

    const v3, 0x7f0b026f

    const v4, 0x7f0b05f0

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 37
    const-string v0, "wallpaper"

    const v1, 0x7f050057

    const v2, 0x7f08022b

    const v3, 0x7f0b0273

    const v4, 0x7f0b05f1

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 38
    const-string v0, "launcher_settings"

    const v1, 0x7f050027

    const v2, 0x7f08020f

    const v3, 0x7f0b0624

    const v4, 0x7f0b05f2

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 39
    const-string v0, "accelerometer"

    const v1, 0x7f050001

    const v2, 0x7f080204

    const v3, 0x7f0b026c

    const v4, 0x7f0b05f3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 40
    const-string v0, "screen_timeout"

    const v1, 0x7f050033

    const v2, 0x7f080214

    const v3, 0x7f0b0625

    const v4, 0x7f0b05f4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 41
    const-string v0, "ring_volume"

    const v1, 0x7f050031

    const v2, 0x7f080212

    const v3, 0x7f0b0246

    const v4, 0x7f0b05f5

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 42
    const-string v0, "ringtone"

    const v1, 0x7f050032

    const v2, 0x7f080213

    const v3, 0x7f0b0242

    const v4, 0x7f0b05f6

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 43
    const-string v0, "sms_received_sound"

    const v1, 0x7f050046

    const v2, 0x7f080227

    const v3, 0x7f0b0611

    const v4, 0x7f0b05f7

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 44
    const-string v0, "silent_mode"

    const v1, 0x7f050044

    const v2, 0x7f080226

    const v3, 0x7f0b0241

    const v4, 0x7f0b05f8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 45
    const-string v0, "unlock_set_or_change"

    const v1, 0x7f050053

    const v2, 0x7f080229

    const v3, 0x7f0b0129

    const v4, 0x7f0b05f9

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 46
    const-string v0, "access_control_settings"

    const v1, 0x7f050003

    const v2, 0x7f080205

    const v3, 0x7f0b0616

    const v4, 0x7f0b05fa

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 47
    const-string v0, "location_gps"

    const v1, 0x7f050020

    const v2, 0x7f08020c

    const v3, 0x7f0b0338

    const v4, 0x7f0b05fb

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 48
    const-string v0, "status_bar_settings"

    const v1, 0x7f05004a

    const v2, 0x7f08021a

    const v3, 0x7f0b0648

    const v4, 0x7f0b05fc

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 49
    const-string v0, "sync_settings"

    const v1, 0x7f05004b

    const v2, 0x7f08021d

    const v3, 0x7f0b0268

    const v4, 0x7f0b05fd

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 50
    const-string v0, "battery_indicator_style"

    const v1, 0x7f05000e

    const v2, 0x7f080208

    const v3, 0x7f0b064d

    const v4, 0x7f0b05fe

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 51
    const-string v0, "key_settings"

    const v1, 0x7f050023

    const v2, 0x7f08020d

    const v3, 0x7f0b0628

    const v4, 0x7f0b05ff

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 52
    const-string v0, "led_settings"

    const v1, 0x7f050028

    const v2, 0x7f080210

    const v3, 0x7f0b0665

    const v4, 0x7f0b0600

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 53
    const-string v0, "date_time_settings"

    const v1, 0x7f050014

    const v2, 0x7f08020b

    const v3, 0x7f0b00f7

    const v4, 0x7f0b0601

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 54
    const-string v0, "language_settings"

    const v1, 0x7f050025

    const v2, 0x7f08020e

    const v3, 0x7f0b03f0

    const v4, 0x7f0b0602

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 55
    const-string v0, "about_settings"

    const/high16 v1, 0x7f05

    const v2, 0x7f080203

    const v3, 0x7f0b033f

    const v4, 0x7f0b0269

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    return-void
.end method

.method private static addHeaderItem(Ljava/lang/String;IIII)V
    .locals 6
    .parameter "key"
    .parameter "headerFileId"
    .parameter "headerId"
    .parameter "showStringId"
    .parameter "searchKeyId"

    .prologue
    .line 59
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 60
    return-void
.end method

.method private static addHeaderItem(Ljava/lang/String;IIIIZ)V
    .locals 9
    .parameter "key"
    .parameter "headerFileId"
    .parameter "headerId"
    .parameter "showStringId"
    .parameter "searchKeyId"
    .parameter "isDefault"

    .prologue
    .line 63
    sget-object v0, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 64
    .local v7, index:I
    sget-object v0, Lcom/android/settings/FrequentlySet;->sKey2Index:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/settings/FrequentlySet;->sHeaderId2Index:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v8, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/FrequentlySet$HeaderItem;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/FrequentlySet$HeaderItem;-><init>(Ljava/lang/String;IIIIZ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-static {p4}, Lcom/android/settings/FrequentlySet;->filterSearchKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lcom/android/settings/FrequentlySet;->sSearchKeys:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/android/settings/FrequentlySet;->sSearchHeaderItemIndex:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    return-void
.end method

.method private static filterSearchKey(I)Z
    .locals 2
    .parameter "searchKeyId"

    .prologue
    const/4 v0, 0x0

    .line 75
    const v1, 0x7f0b05ed

    if-ne v1, p0, :cond_0

    .line 76
    invoke-static {}, Lcom/android/settings/FrequentlySet;->hasNfcFeature()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 79
    :cond_0
    return v0
.end method

.method public static getDefaultKeys()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v0, defaultKeyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/FrequentlySet$HeaderItem;

    .line 115
    .local v1, headerItem:Lcom/android/settings/FrequentlySet$HeaderItem;
    iget-boolean v3, v1, Lcom/android/settings/FrequentlySet$HeaderItem;->isDefaultKey:Z

    if-eqz v3, :cond_0

    .line 116
    iget-object v3, v1, Lcom/android/settings/FrequentlySet$HeaderItem;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    .end local v1           #headerItem:Lcom/android/settings/FrequentlySet$HeaderItem;
    :cond_1
    return-object v0
.end method

.method public static getHeaderIds()[I
    .locals 4

    .prologue
    .line 140
    sget-object v3, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 141
    .local v2, size:I
    new-array v0, v2, [I

    .line 142
    .local v0, headerFileIds:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 143
    sget-object v3, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/FrequentlySet$HeaderItem;

    iget v3, v3, Lcom/android/settings/FrequentlySet$HeaderItem;->headerFileId:I

    aput v3, v0, v1

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_0
    return-object v0
.end method

.method public static getHeaderIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 95
    sget-object v1, Lcom/android/settings/FrequentlySet;->sKey2Index:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 96
    .local v0, index:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getKey(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, key:Ljava/lang/String;
    sget-object v1, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 102
    sget-object v1, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/FrequentlySet$HeaderItem;

    iget-object v0, v1, Lcom/android/settings/FrequentlySet$HeaderItem;->key:Ljava/lang/String;

    .line 104
    :cond_0
    return-object v0
.end method

.method public static getKeyIndex(I)I
    .locals 3
    .parameter "headerId"

    .prologue
    .line 108
    sget-object v1, Lcom/android/settings/FrequentlySet;->sHeaderId2Index:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 109
    .local v0, index:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getSearchKeys()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    sget-object v0, Lcom/android/settings/FrequentlySet;->sSearchKeys:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getShowIndex(I)I
    .locals 2
    .parameter "index"

    .prologue
    const/4 v0, -0x1

    .line 127
    if-le p0, v0, :cond_0

    sget-object v1, Lcom/android/settings/FrequentlySet;->sSearchHeaderItemIndex:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 128
    sget-object v0, Lcom/android/settings/FrequentlySet;->sSearchHeaderItemIndex:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 130
    :cond_0
    return v0
.end method

.method public static getShowStringId(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 134
    invoke-static {p0}, Lcom/android/settings/FrequentlySet;->getShowIndex(I)I

    move-result v0

    .line 135
    .local v0, i:I
    sget-object v2, Lcom/android/settings/FrequentlySet;->sHeaderId2Index:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    .line 136
    .local v1, size:I
    if-ge v0, v1, :cond_0

    sget-object v2, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/FrequentlySet$HeaderItem;

    iget v2, v2, Lcom/android/settings/FrequentlySet$HeaderItem;->showId:I

    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private static hasNfcFeature()Z
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 85
    .local v1, pm:Landroid/content/pm/IPackageManager;
    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "android.hardware.nfc"

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const/4 v2, 0x1

    .line 91
    :goto_0
    return v2

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 91
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
