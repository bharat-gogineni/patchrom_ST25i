.class public Lcom/android/mms/ui/DateTimePickerActivity;
.super Landroid/app/Activity;
.source "DateTimePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/DatePicker$OnDateChangedListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# static fields
.field public static CONTENT_TYPE:Ljava/lang/String;

.field public static FIELD_TIME:Ljava/lang/String;

.field public static FIELD_TITLE:Ljava/lang/String;


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mCancelButton:Landroid/widget/Button;

.field private mDateButton:Landroid/widget/Button;

.field private mDatePicker:Landroid/widget/DatePicker;

.field private mIsDate:Z

.field private mOkButton:Landroid/widget/Button;

.field private mRotation:I

.field private mTimeButton:Landroid/widget/Button;

.field private mTimePicker:Landroid/widget/TimePicker;

.field private mTitle:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "vnd.android.cursor.item/datetime"

    sput-object v0, Lcom/android/mms/ui/DateTimePickerActivity;->CONTENT_TYPE:Ljava/lang/String;

    .line 34
    const-string v0, "title"

    sput-object v0, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TITLE:Ljava/lang/String;

    .line 35
    const-string v0, "time"

    sput-object v0, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TIME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mIsDate:Z

    return-void
.end method

.method private formatDateAndShow()V
    .locals 4

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x14

    invoke-static {p0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method

.method private formatTimeAndShow()V
    .locals 4

    .prologue
    .line 136
    iget-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method

.method private initLayout()V
    .locals 3

    .prologue
    .line 77
    const v1, 0x7f040009

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DateTimePickerActivity;->setContentView(I)V

    .line 78
    const v1, 0x7f10000b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DateTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTitleView:Landroid/widget/TextView;

    .line 79
    iget-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v1, 0x7f100023

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DateTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TimePicker;

    iput-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTimePicker:Landroid/widget/TimePicker;

    .line 81
    const v1, 0x7f100022

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DateTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DatePicker;

    iput-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mDatePicker:Landroid/widget/DatePicker;

    .line 82
    iget-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mDatePicker:Landroid/widget/DatePicker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    .line 84
    const v1, 0x7f100020

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DateTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mDateButton:Landroid/widget/Button;

    .line 85
    const v1, 0x7f100021

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DateTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTimeButton:Landroid/widget/Button;

    .line 86
    const v1, 0x7f100024

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DateTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mOkButton:Landroid/widget/Button;

    .line 87
    const v1, 0x7f100025

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DateTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCancelButton:Landroid/widget/Button;

    .line 89
    iget-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mDateButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-boolean v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mIsDate:Z

    invoke-direct {p0, v1}, Lcom/android/mms/ui/DateTimePickerActivity;->setView(Z)V

    .line 95
    invoke-direct {p0}, Lcom/android/mms/ui/DateTimePickerActivity;->initPickers()V

    .line 96
    invoke-direct {p0}, Lcom/android/mms/ui/DateTimePickerActivity;->formatDateAndShow()V

    .line 97
    invoke-direct {p0}, Lcom/android/mms/ui/DateTimePickerActivity;->formatTimeAndShow()V

    .line 99
    invoke-virtual {p0}, Lcom/android/mms/ui/DateTimePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 100
    .local v0, wl:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 101
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 102
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 103
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 104
    return-void
.end method

.method private initPickers()V
    .locals 13

    .prologue
    .line 108
    iget-object v9, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 109
    .local v8, year:I
    iget-object v9, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 110
    .local v7, monthOfYear:I
    iget-object v9, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 111
    .local v0, dayOfMonth:I
    iget-object v9, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 112
    .local v1, hourOfDay:I
    iget-object v9, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 113
    .local v6, minute:I
    iget-object v9, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v9, v8, v7, v0, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 119
    iget-object v9, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    const-wide/32 v11, 0x36ee80

    sub-long v4, v9, v11

    .line 120
    .local v4, minDate:J
    const-wide v9, 0x496cebb800L

    add-long v2, v4, v9

    .line 121
    .local v2, maxDate:J
    iget-object v9, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v9, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 122
    iget-object v9, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v9, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 124
    iget-object v9, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 125
    iget-object v9, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 126
    iget-object v9, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v9, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 127
    return-void
.end method

.method private setView(Z)V
    .locals 4
    .parameter "isDate"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mDateButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setSelected(Z)V

    .line 143
    iget-object v3, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTimeButton:Landroid/widget/Button;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 144
    iget-object v3, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTimePicker:Landroid/widget/TimePicker;

    if-eqz p1, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TimePicker;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mDatePicker:Landroid/widget/DatePicker;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->setVisibility(I)V

    .line 146
    return-void

    :cond_0
    move v0, v1

    .line 143
    goto :goto_0

    :cond_1
    move v0, v1

    .line 144
    goto :goto_1

    :cond_2
    move v1, v2

    .line 145
    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 180
    :goto_0
    :pswitch_0
    return-void

    .line 152
    :pswitch_1
    iput-boolean v6, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mIsDate:Z

    .line 153
    iget-boolean v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mIsDate:Z

    invoke-direct {p0, v1}, Lcom/android/mms/ui/DateTimePickerActivity;->setView(Z)V

    goto :goto_0

    .line 156
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mIsDate:Z

    .line 157
    iget-boolean v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mIsDate:Z

    invoke-direct {p0, v1}, Lcom/android/mms/ui/DateTimePickerActivity;->setView(Z)V

    goto :goto_0

    .line 160
    :pswitch_3
    iget-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 161
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a01a6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 167
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TIME:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 169
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/DateTimePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/mms/ui/DateTimePickerActivity;->finish()V

    goto :goto_0

    .line 174
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 175
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TIME:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v5, v0}, Lcom/android/mms/ui/DateTimePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/mms/ui/DateTimePickerActivity;->finish()V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x7f100020
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 70
    iget v0, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mRotation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 71
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mRotation:I

    .line 72
    invoke-direct {p0}, Lcom/android/mms/ui/DateTimePickerActivity;->initLayout()V

    .line 74
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    .line 57
    invoke-virtual {p0}, Lcom/android/mms/ui/DateTimePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, intent:Landroid/content/Intent;
    sget-object v3, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TIME:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 59
    .local v1, time:J
    iget-object v3, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 60
    sget-object v3, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTitle:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/android/mms/ui/DateTimePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mRotation:I

    .line 63
    invoke-direct {p0}, Lcom/android/mms/ui/DateTimePickerActivity;->initLayout()V

    .line 64
    return-void
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 2
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 192
    iget-object v0, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 193
    iget-object v0, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 194
    invoke-direct {p0}, Lcom/android/mms/ui/DateTimePickerActivity;->formatDateAndShow()V

    .line 195
    return-void
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 2
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 185
    iget-object v0, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 186
    invoke-direct {p0}, Lcom/android/mms/ui/DateTimePickerActivity;->formatTimeAndShow()V

    .line 187
    return-void
.end method
