.class public Lcom/android/mms/ui/BirthdayActivity;
.super Landroid/app/Activity;
.source "BirthdayActivity.java"


# static fields
.field private static final IMAGE_RESOURCE_IDS:[I

.field private static final KEYWORDS:[Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u751f\u65e5\u5feb\u4e50"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "happy birthday"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/BirthdayActivity;->KEYWORDS:[Ljava/lang/String;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/BirthdayActivity;->IMAGE_RESOURCE_IDS:[I

    return-void

    :array_0
    .array-data 0x4
        0xct 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/BirthdayActivity;->mHandler:Landroid/os/Handler;

    .line 40
    new-instance v0, Lcom/android/mms/ui/BirthdayActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BirthdayActivity$1;-><init>(Lcom/android/mms/ui/BirthdayActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/BirthdayActivity;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/mms/ui/BirthdayActivity;->IMAGE_RESOURCE_IDS:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/BirthdayActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/mms/ui/BirthdayActivity;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/BirthdayActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/mms/ui/BirthdayActivity;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/BirthdayActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/mms/ui/BirthdayActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static checkAndCallBirthday(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 74
    const-string v1, "previous_show_birthday_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 76
    sub-long v1, v3, v1

    const-wide/32 v5, 0x36ee80

    cmp-long v1, v1, v5

    if-gez v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    const-string v1, "previous_show_birthday_time"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 84
    sget-object v2, Lcom/android/mms/ui/BirthdayActivity;->KEYWORDS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 85
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/BirthdayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v1, 0x7f040002

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BirthdayActivity;->setContentView(I)V

    .line 58
    const v1, 0x7f100008

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BirthdayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, container:Landroid/view/View;
    new-instance v1, Lcom/android/mms/ui/BirthdayActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BirthdayActivity$2;-><init>(Lcom/android/mms/ui/BirthdayActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v1, 0x7f100009

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BirthdayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/BirthdayActivity;->mImageView:Landroid/widget/ImageView;

    .line 69
    iget-object v1, p0, Lcom/android/mms/ui/BirthdayActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/BirthdayActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method
