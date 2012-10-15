.class public Lcom/miui/home/launcher/gadget/Weather_1x4;
.super Lcom/miui/home/launcher/gadget/WeatherBase;
.source "Weather_1x4.java"


# instance fields
.field private mBg:Landroid/widget/ImageView;

.field private mIsNight:Z

.field private mTextView1:Landroid/widget/TextView;

.field private mTextView2:Landroid/widget/TextView;

.field private mTextView3:Landroid/widget/TextView;

.field private mTextView4:Landroid/widget/TextView;

.field private mWeather:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/WeatherBase;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected getTypeId()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x2

    return v0
.end method

.method protected initListener()V
    .locals 4

    .prologue
    .line 116
    const v3, 0x7f070045

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/gadget/Weather_1x4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, down1:Landroid/view/View;
    new-instance v3, Lcom/miui/home/launcher/gadget/Weather_1x4$1;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/gadget/Weather_1x4$1;-><init>(Lcom/miui/home/launcher/gadget/Weather_1x4;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v3, 0x7f070046

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/gadget/Weather_1x4;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 129
    .local v1, down2:Landroid/view/View;
    new-instance v3, Lcom/miui/home/launcher/gadget/Weather_1x4$2;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/gadget/Weather_1x4$2;-><init>(Lcom/miui/home/launcher/gadget/Weather_1x4;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v3, 0x7f070047

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/gadget/Weather_1x4;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 140
    .local v2, down3:Landroid/view/View;
    new-instance v3, Lcom/miui/home/launcher/gadget/Weather_1x4$3;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/gadget/Weather_1x4$3;-><init>(Lcom/miui/home/launcher/gadget/Weather_1x4;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method

.method public onAdded()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->onAdded()V

    .line 170
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_1x4;->addGadget()V

    .line 171
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->onCreate()V

    .line 155
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mContext:Landroid/content/Context;

    const v1, 0x7f03001a

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/gadget/Weather_1x4;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 157
    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Weather_1x4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mTextView1:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Weather_1x4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mTextView2:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Weather_1x4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mTextView3:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Weather_1x4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mTextView4:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f070040

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Weather_1x4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mBg:Landroid/widget/ImageView;

    .line 163
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_1x4;->initListener()V

    .line 164
    return-void
.end method

.method public onDeleted()V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->onDeleted()V

    .line 177
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_1x4;->removeGadget()V

    .line 178
    return-void
.end method

.method protected paint()V
    .locals 15

    .prologue
    const v14, 0x7f0c006f

    const/4 v12, 0x1

    const/4 v11, 0x0

    const v13, 0x7f020071

    .line 31
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_1x4;->isWeatherAppInstalled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 32
    iget-object v10, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mTextView1:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {p0, v10, v11}, Lcom/miui/home/launcher/gadget/Weather_1x4;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 33
    iget-object v10, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mTextView2:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {p0, v10, v11}, Lcom/miui/home/launcher/gadget/Weather_1x4;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 34
    iget-object v10, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mTextView3:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {p0, v10, v11}, Lcom/miui/home/launcher/gadget/Weather_1x4;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 35
    iget-object v10, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mTextView4:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mContext:Landroid/content/Context;

    const v12, 0x7f0c0072

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/miui/home/launcher/gadget/Weather_1x4;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 36
    iget-object v10, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_1x4;->getCurrentCityName()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, cityName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 44
    invoke-virtual {p0, v11}, Lcom/miui/home/launcher/gadget/Weather_1x4;->updateCity(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_1x4;->getCurrentCityName()Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_2
    iget-object v10, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mPid:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 48
    iget-object v10, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mTextView1:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {p0, v10, v11}, Lcom/miui/home/launcher/gadget/Weather_1x4;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 49
    iget-object v10, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mTextView2:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {p0, v10, v11}, Lcom/miui/home/launcher/gadget/Weather_1x4;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 50
    iget-object v10, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mTextView3:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {p0, v10, v11}, Lcom/miui/home/launcher/gadget/Weather_1x4;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 51
    iget-object v10, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mTextView4:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/miui/home/launcher/gadget/Weather_1x4;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 52
    iget-object v10, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 56
    :cond_3
    const-string v4, "MM/d EEE"

    .line 57
    .local v4, format:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v4, v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, date:Ljava/lang/String;
    iget-object v10, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mTextView1:Landroid/widget/TextView;

    invoke-virtual {p0, v10, v2}, Lcom/miui/home/launcher/gadget/Weather_1x4;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 59
    iget-object v10, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mTextView2:Landroid/widget/TextView;

    invoke-virtual {p0, v10, v0}, Lcom/miui/home/launcher/gadget/Weather_1x4;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_1x4;->getWeather()Landroid/database/Cursor;

    move-result-object v1

    .line 62
    .local v1, cursor:Landroid/database/Cursor;
    const-string v7, ""

    .line 63
    .local v7, temperatureRange:Ljava/lang/String;
    const-string v3, ""

    .line 67
    .local v3, description:Ljava/lang/String;
    if-eqz v1, :cond_7

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 70
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 74
    const/4 v10, 0x1

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 81
    const/4 v10, 0x2

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 90
    .local v8, weatherType:J
    if-eqz v1, :cond_4

    .line 91
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_4
    iget-object v10, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mTextView3:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/miui/home/launcher/gadget/Weather_1x4;->getTemperatureRange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/miui/home/launcher/gadget/Weather_1x4;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 96
    iget-object v10, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mTextView4:Landroid/widget/TextView;

    long-to-int v11, v8

    invoke-virtual {p0, v3, v11}, Lcom/miui/home/launcher/gadget/Weather_1x4;->getDescription(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/miui/home/launcher/gadget/Weather_1x4;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_1x4;->isNight()Z

    move-result v5

    .line 99
    .local v5, isNight:Z
    iget-wide v10, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mWeather:J

    cmp-long v10, v8, v10

    if-nez v10, :cond_5

    iget-boolean v10, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mIsNight:Z

    if-eq v5, v10, :cond_0

    .line 102
    :cond_5
    iput-wide v8, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mWeather:J

    .line 103
    iput-boolean v5, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mIsNight:Z

    .line 105
    long-to-int v6, v8

    .line 106
    .local v6, pos:I
    iget-object v10, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mBg:Landroid/widget/ImageView;

    sget-object v11, Lcom/miui/home/launcher/gadget/Weather_1x4;->N_ARRAY_WEATHER_IMAGE:[I

    aget v11, v11, v6

    add-int/2addr v11, v13

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_1x4;->isNight()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 109
    if-eqz v6, :cond_6

    if-ne v6, v12, :cond_0

    .line 110
    :cond_6
    iget-object v10, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mBg:Landroid/widget/ImageView;

    const v11, 0x7f020084

    add-int/2addr v11, v6

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 84
    .end local v5           #isNight:Z
    .end local v6           #pos:I
    .end local v8           #weatherType:J
    :cond_7
    :try_start_1
    iget-object v10, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mTextView3:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {p0, v10, v11}, Lcom/miui/home/launcher/gadget/Weather_1x4;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 85
    iget-object v10, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mTextView4:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mContext:Landroid/content/Context;

    const v12, 0x7f0c006f

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/miui/home/launcher/gadget/Weather_1x4;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 86
    iget-object v10, p0, Lcom/miui/home/launcher/gadget/Weather_1x4;->mBg:Landroid/widget/ImageView;

    const v11, 0x7f020071

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    if-eqz v1, :cond_0

    .line 91
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 90
    :catchall_0
    move-exception v10

    if-eqz v1, :cond_8

    .line 91
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v10
.end method

.method protected updateCurTime()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->updateCurTime()V

    .line 182
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_1x4;->paint()V

    .line 183
    return-void
.end method
