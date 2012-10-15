.class public Lcom/android/phone/MiuiVoiceQualityUtility;
.super Ljava/lang/Object;
.source "MiuiVoiceQualityUtility.java"


# static fields
.field private static final mPreferenceList:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Normal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Clear"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Crisp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Bright"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/MiuiVoiceQualityUtility;->mPreferenceList:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiVoiceQualityUtility;->mContext:Landroid/content/Context;

    .line 15
    iput-object p1, p0, Lcom/android/phone/MiuiVoiceQualityUtility;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method

.method private invokeSetParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/phone/MiuiVoiceQualityUtility;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 84
    .local v0, amgr:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 85
    const-string v1, "VoiceQualityUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating.. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public getVoiceQualitySetting()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 41
    iget-object v5, p0, Lcom/android/phone/MiuiVoiceQualityUtility;->mContext:Landroid/content/Context;

    const-string v6, "voice_quality_preference"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 43
    .local v2, mypref:Landroid/content/SharedPreferences;
    const-string v5, "motoVoiceQualityConfig"

    const-string v6, "Clear"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, setting:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 46
    sget-object v5, Lcom/android/phone/MiuiVoiceQualityUtility;->mPreferenceList:[Ljava/lang/String;

    array-length v1, v5

    .line 48
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 49
    sget-object v5, Lcom/android/phone/MiuiVoiceQualityUtility;->mPreferenceList:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 54
    .end local v0           #i:I
    .end local v1           #length:I
    :goto_1
    return v0

    .line 48
    .restart local v0       #i:I
    .restart local v1       #length:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #length:I
    :cond_1
    move v0, v4

    .line 54
    goto :goto_1
.end method

.method public setVoiceQualitySetting(I)V
    .locals 5
    .parameter "quality"

    .prologue
    .line 58
    if-ltz p1, :cond_0

    const/4 v2, 0x3

    if-le p1, v2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v2, p0, Lcom/android/phone/MiuiVoiceQualityUtility;->mContext:Landroid/content/Context;

    const-string v3, "voice_quality_preference"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 64
    .local v1, mypref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "motoVoiceQualityConfig"

    sget-object v3, Lcom/android/phone/MiuiVoiceQualityUtility;->mPreferenceList:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    const-string v2, "VoiceQualityUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saved Voice Quality Setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/MiuiVoiceQualityUtility;->mPreferenceList:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateVoiceQualityParameter(I)V
    .locals 2
    .parameter "quality"

    .prologue
    .line 73
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string v0, "motoVoiceQualityConfig"

    sget-object v1, Lcom/android/phone/MiuiVoiceQualityUtility;->mPreferenceList:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MiuiVoiceQualityUtility;->invokeSetParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
