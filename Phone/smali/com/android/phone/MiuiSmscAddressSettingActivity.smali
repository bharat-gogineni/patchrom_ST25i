.class public Lcom/android/phone/MiuiSmscAddressSettingActivity;
.super Landroid/app/Activity;
.source "MiuiSmscAddressSettingActivity.java"


# instance fields
.field private final WAIT_TIMEOUT:I

.field private isShowing:Z

.field private mEditTextSmscAddress:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mNeedAddressType:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSmscAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->WAIT_TIMEOUT:I

    .line 43
    iput-boolean v1, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->isShowing:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->mNeedAddressType:Z

    .line 54
    new-instance v0, Lcom/android/phone/MiuiSmscAddressSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiSmscAddressSettingActivity$1;-><init>(Lcom/android/phone/MiuiSmscAddressSettingActivity;)V

    iput-object v0, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiSmscAddressSettingActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->isShowing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiSmscAddressSettingActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiSmscAddressSettingActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->mSmscAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/MiuiSmscAddressSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->mSmscAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/MiuiSmscAddressSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->smscToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MiuiSmscAddressSettingActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/MiuiSmscAddressSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->stringToSmsc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/MiuiSmscAddressSettingActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/MiuiSmscAddressSettingActivity;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private getSmscChars(Ljava/lang/String;I)[C
    .locals 3
    .parameter "str"
    .parameter "byteIndex"

    .prologue
    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p2, 0x1

    mul-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_0

    .line 200
    const/4 v1, 0x2

    new-array v0, v1, [C

    .line 201
    .local v0, chars:[C
    const/4 v1, 0x0

    mul-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    .line 202
    const/4 v1, 0x1

    mul-int/lit8 v2, p2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    .line 206
    .end local v0           #chars:[C
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSmscInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "str"
    .parameter "byteIndex"

    .prologue
    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    .line 192
    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, p2, 0x1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private smscToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "smsc"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 155
    const/16 v8, 0x2c

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 156
    .local v4, indexOfComma:I
    if-lez v4, :cond_0

    .line 157
    iput-boolean v10, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->mNeedAddressType:Z

    .line 158
    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 159
    const-string v8, "\""

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 162
    :cond_0
    if-eqz p1, :cond_4

    invoke-static {p0}, Lcom/android/phone/MiuiTelephonyCapabilities;->isSmscAddressEncoded(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 164
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v6, sb:Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    invoke-direct {p0, p1, v8}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->getSmscInt(Ljava/lang/String;I)I

    move-result v0

    .line 166
    .local v0, byteCount:I
    if-lt v0, v10, :cond_4

    .line 167
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->getSmscInt(Ljava/lang/String;I)I

    move-result v7

    .line 168
    .local v7, ton_npi:I
    const/16 v8, 0x5b

    if-ne v7, v8, :cond_4

    .line 169
    const/16 v8, 0x2b

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 171
    add-int/lit8 v8, v3, 0x1

    invoke-direct {p0, p1, v8}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->getSmscChars(Ljava/lang/String;I)[C

    move-result-object v2

    .line 172
    .local v2, chars:[C
    if-eqz v2, :cond_2

    .line 173
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    array-length v8, v2

    if-ge v5, v8, :cond_2

    .line 174
    aget-char v1, v2, v5

    .line 175
    .local v1, c:C
    const/16 v8, 0x66

    if-eq v1, v8, :cond_1

    const/16 v8, 0x46

    if-eq v1, v8, :cond_1

    .line 176
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 170
    .end local v1           #c:C
    .end local v5           #j:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    .end local v2           #chars:[C
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 187
    .end local v0           #byteCount:I
    .end local v3           #i:I
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .end local v7           #ton_npi:I
    :cond_4
    :goto_2
    return-object p1

    .line 184
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private stringToSmsc(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "string"

    .prologue
    const/16 v11, 0x30

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 211
    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/android/phone/MiuiTelephonyCapabilities;->isSmscAddressEncoded(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 212
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v4

    .line 213
    .local v4, number:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 214
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, effective:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 218
    .local v2, effectiveLength:I
    div-int/lit8 v0, v2, 0x2

    .line 219
    .local v0, byteLength:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 220
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    mul-int/lit8 v7, v3, 0x2

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    :cond_0
    and-int/lit8 v7, v2, 0x1

    if-ne v7, v10, :cond_1

    .line 224
    const/16 v7, 0x66

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    :cond_1
    const-string v7, "91"

    invoke-virtual {v5, v9, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    div-int/lit8 v6, v7, 0x2

    .line 229
    .local v6, totalLength:I
    const/16 v7, 0xa

    if-lt v6, v7, :cond_6

    .line 230
    invoke-virtual {v5, v9, v6}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    .line 235
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 240
    .end local v0           #byteLength:I
    .end local v1           #effective:Ljava/lang/String;
    .end local v2           #effectiveLength:I
    .end local v3           #i:I
    .end local v4           #number:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .end local v5           #sb:Ljava/lang/StringBuilder;
    .end local v6           #totalLength:I
    :cond_2
    iget-boolean v7, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->mNeedAddressType:Z

    if-eqz v7, :cond_5

    .line 241
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_3

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2b

    if-eq v7, v8, :cond_4

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_7

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_7

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_7

    .line 242
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "145"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 247
    :cond_5
    :goto_2
    return-object p1

    .line 232
    .restart local v0       #byteLength:I
    .restart local v1       #effective:Ljava/lang/String;
    .restart local v2       #effectiveLength:I
    .restart local v3       #i:I
    .restart local v4       #number:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    .restart local v6       #totalLength:I
    :cond_6
    invoke-virtual {v5, v9, v6}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v5, v9, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 244
    .end local v0           #byteLength:I
    .end local v1           #effective:Ljava/lang/String;
    .end local v2           #effectiveLength:I
    .end local v3           #i:I
    .end local v4           #number:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .end local v5           #sb:Ljava/lang/StringBuilder;
    .end local v6           #totalLength:I
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "129"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 254
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 255
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 258
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;

    .line 259
    iget-object v0, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 260
    iget-object v0, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 262
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c037c

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0029

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/MiuiSmscAddressSettingActivity$4;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiSmscAddressSettingActivity$4;-><init>(Lcom/android/phone/MiuiSmscAddressSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/MiuiSmscAddressSettingActivity$3;

    invoke-direct {v1, p0}, Lcom/android/phone/MiuiSmscAddressSettingActivity$3;-><init>(Lcom/android/phone/MiuiSmscAddressSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c002d

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/MiuiSmscAddressSettingActivity$2;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiSmscAddressSettingActivity$2;-><init>(Lcom/android/phone/MiuiSmscAddressSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 290
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 305
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->isShowing:Z

    .line 308
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 294
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 296
    iget-object v0, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 297
    iget-object v0, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 298
    iget-object v0, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity;->isShowing:Z

    .line 301
    return-void
.end method
