.class public Lcom/miui/home/launcher/gadget/GadgetFactory;
.super Ljava/lang/Object;
.source "GadgetFactory.java"


# static fields
.field private static final DEFAULT_WIDGET_CELL_HEIGHT:I

.field private static final DEFAULT_WIDGET_CELL_WIDTH:I

.field public static final GADGET_ID_LIST:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->GADGET_ID_LIST:[I

    .line 44
    invoke-static {v1}, Lcom/miui/home/launcher/Utilities;->getDipPixelSize(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x50

    invoke-static {v0}, Lcom/miui/home/launcher/Utilities;->getDipPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->DEFAULT_WIDGET_CELL_WIDTH:I

    .line 45
    invoke-static {v1}, Lcom/miui/home/launcher/Utilities;->getDipPixelSize(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x4a

    invoke-static {v0}, Lcom/miui/home/launcher/Utilities;->getDipPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->DEFAULT_WIDGET_CELL_HEIGHT:I

    return-void

    .line 27
    nop

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGadget(Landroid/app/Activity;Lcom/miui/home/launcher/gadget/GadgetInfo;I)Lcom/miui/home/launcher/gadget/Gadget;
    .locals 2
    .parameter "activity"
    .parameter "info"
    .parameter "requestCode"

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 120
    .local v0, gadget:Landroid/view/View;
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 145
    :goto_0
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 149
    :cond_0
    check-cast v0, Lcom/miui/home/launcher/gadget/Gadget;

    .end local v0           #gadget:Landroid/view/View;
    return-object v0

    .line 122
    .restart local v0       #gadget:Landroid/view/View;
    :pswitch_0
    new-instance v0, Lcom/miui/home/launcher/gadget/Player;

    .end local v0           #gadget:Landroid/view/View;
    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/Player;-><init>(Landroid/content/Context;)V

    .line 123
    .restart local v0       #gadget:Landroid/view/View;
    goto :goto_0

    .line 125
    :pswitch_1
    new-instance v0, Lcom/miui/home/launcher/gadget/GlobalSearch;

    .end local v0           #gadget:Landroid/view/View;
    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/GlobalSearch;-><init>(Landroid/content/Context;)V

    .line 126
    .restart local v0       #gadget:Landroid/view/View;
    goto :goto_0

    .line 130
    :pswitch_2
    new-instance v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    .end local v0           #gadget:Landroid/view/View;
    invoke-direct {v0, p0, p2}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;-><init>(Landroid/app/Activity;I)V

    .line 131
    .restart local v0       #gadget:Landroid/view/View;
    goto :goto_0

    .line 135
    :pswitch_3
    new-instance v0, Lcom/miui/home/launcher/gadget/PhotoFrame;

    .end local v0           #gadget:Landroid/view/View;
    invoke-direct {v0, p0, p2}, Lcom/miui/home/launcher/gadget/PhotoFrame;-><init>(Landroid/app/Activity;I)V

    .line 136
    .restart local v0       #gadget:Landroid/view/View;
    goto :goto_0

    .line 138
    :pswitch_4
    new-instance v0, Lcom/miui/home/launcher/gadget/Weather_1x4;

    .end local v0           #gadget:Landroid/view/View;
    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/Weather_1x4;-><init>(Landroid/content/Context;)V

    .line 139
    .restart local v0       #gadget:Landroid/view/View;
    goto :goto_0

    .line 141
    :pswitch_5
    new-instance v0, Lcom/miui/home/launcher/gadget/Weather_2x4;

    .end local v0           #gadget:Landroid/view/View;
    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;-><init>(Landroid/content/Context;)V

    .restart local v0       #gadget:Landroid/view/View;
    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static final getGadgetIdList()[I
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->GADGET_ID_LIST:[I

    return-object v0
.end method

.method public static getGadgetItemId(Landroid/os/Bundle;)J
    .locals 5
    .parameter "bundle"

    .prologue
    const-wide/16 v3, -0x1

    .line 153
    const-string v2, "callback_id"

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 154
    .local v0, id:J
    cmp-long v2, v0, v3

    if-nez v2, :cond_0

    .line 156
    :try_start_0
    const-string v2, "miui.app.resourcebrowser.TRACK_ID"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 161
    :cond_0
    :goto_0
    return-wide v0

    .line 157
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;
    .locals 2
    .parameter "id"

    .prologue
    .line 48
    new-instance v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(I)V

    .line 49
    .local v0, result:Lcom/miui/home/launcher/gadget/GadgetInfo;
    packed-switch p0, :pswitch_data_0

    .line 111
    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    .line 51
    :pswitch_0
    sget v1, Lcom/miui/home/launcher/gadget/GadgetFactory;->DEFAULT_WIDGET_CELL_WIDTH:I

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanX(I)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    .line 52
    sget v1, Lcom/miui/home/launcher/gadget/GadgetFactory;->DEFAULT_WIDGET_CELL_HEIGHT:I

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanY(I)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    .line 53
    const v1, 0x7f0c0058

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleId:I

    .line 54
    const v1, 0x7f020052

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconId:I

    goto :goto_0

    .line 57
    :pswitch_1
    sget v1, Lcom/miui/home/launcher/gadget/GadgetFactory;->DEFAULT_WIDGET_CELL_WIDTH:I

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanX(I)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    .line 58
    sget v1, Lcom/miui/home/launcher/gadget/GadgetFactory;->DEFAULT_WIDGET_CELL_HEIGHT:I

    mul-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanY(I)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    .line 59
    const v1, 0x7f0c005d

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleId:I

    .line 60
    const v1, 0x7f02008b

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconId:I

    goto :goto_0

    .line 63
    :pswitch_2
    sget v1, Lcom/miui/home/launcher/gadget/GadgetFactory;->DEFAULT_WIDGET_CELL_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanX(I)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    .line 64
    sget v1, Lcom/miui/home/launcher/gadget/GadgetFactory;->DEFAULT_WIDGET_CELL_HEIGHT:I

    mul-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanY(I)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    .line 65
    const v1, 0x7f0c005e

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleId:I

    .line 66
    const v1, 0x7f02002d

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconId:I

    goto :goto_0

    .line 69
    :pswitch_3
    sget v1, Lcom/miui/home/launcher/gadget/GadgetFactory;->DEFAULT_WIDGET_CELL_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanX(I)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    .line 70
    sget v1, Lcom/miui/home/launcher/gadget/GadgetFactory;->DEFAULT_WIDGET_CELL_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanY(I)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    .line 71
    const v1, 0x7f0c005f

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleId:I

    .line 72
    const v1, 0x7f02002e

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconId:I

    goto :goto_0

    .line 75
    :pswitch_4
    sget v1, Lcom/miui/home/launcher/gadget/GadgetFactory;->DEFAULT_WIDGET_CELL_WIDTH:I

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanX(I)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    .line 76
    sget v1, Lcom/miui/home/launcher/gadget/GadgetFactory;->DEFAULT_WIDGET_CELL_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanY(I)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    .line 77
    const v1, 0x7f0c0060

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleId:I

    .line 78
    const v1, 0x7f02002f

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconId:I

    goto/16 :goto_0

    .line 81
    :pswitch_5
    sget v1, Lcom/miui/home/launcher/gadget/GadgetFactory;->DEFAULT_WIDGET_CELL_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanX(I)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    .line 82
    sget v1, Lcom/miui/home/launcher/gadget/GadgetFactory;->DEFAULT_WIDGET_CELL_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanY(I)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    .line 83
    const v1, 0x7f0c0062

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleId:I

    .line 84
    const v1, 0x7f020045

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconId:I

    goto/16 :goto_0

    .line 87
    :pswitch_6
    sget v1, Lcom/miui/home/launcher/gadget/GadgetFactory;->DEFAULT_WIDGET_CELL_WIDTH:I

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanX(I)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    .line 88
    sget v1, Lcom/miui/home/launcher/gadget/GadgetFactory;->DEFAULT_WIDGET_CELL_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanY(I)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    .line 89
    const v1, 0x7f0c0063

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleId:I

    .line 90
    const v1, 0x7f020047

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconId:I

    goto/16 :goto_0

    .line 93
    :pswitch_7
    sget v1, Lcom/miui/home/launcher/gadget/GadgetFactory;->DEFAULT_WIDGET_CELL_WIDTH:I

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanX(I)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    .line 94
    sget v1, Lcom/miui/home/launcher/gadget/GadgetFactory;->DEFAULT_WIDGET_CELL_HEIGHT:I

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanY(I)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    .line 95
    const v1, 0x7f0c0061

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleId:I

    .line 96
    const v1, 0x7f020049

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconId:I

    goto/16 :goto_0

    .line 99
    :pswitch_8
    sget v1, Lcom/miui/home/launcher/gadget/GadgetFactory;->DEFAULT_WIDGET_CELL_WIDTH:I

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanX(I)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    .line 100
    sget v1, Lcom/miui/home/launcher/gadget/GadgetFactory;->DEFAULT_WIDGET_CELL_HEIGHT:I

    mul-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanY(I)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    .line 101
    const v1, 0x7f0c0071

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleId:I

    .line 102
    const v1, 0x7f020086

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconId:I

    goto/16 :goto_0

    .line 105
    :pswitch_9
    sget v1, Lcom/miui/home/launcher/gadget/GadgetFactory;->DEFAULT_WIDGET_CELL_WIDTH:I

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanX(I)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    .line 106
    sget v1, Lcom/miui/home/launcher/gadget/GadgetFactory;->DEFAULT_WIDGET_CELL_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/miui/home/launcher/ResConfig;->getWidgetSpanY(I)I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    .line 107
    const v1, 0x7f0c0070

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleId:I

    .line 108
    const v1, 0x7f020087

    iput v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconId:I

    goto/16 :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static updateGadgetBackup(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 165
    invoke-static {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->updateBackup(Landroid/content/Context;)V

    .line 166
    return-void
.end method
