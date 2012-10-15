.class public Lcom/android/phone/MiuiManageConferenceUtils;
.super Lcom/android/phone/ManageConferenceUtils;
.source "MiuiManageConferenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;
    }
.end annotation


# instance fields
.field private mConferenceCallList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter "inCallScreen"
    .parameter "cm"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/phone/ManageConferenceUtils;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V

    .line 37
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiManageConferenceUtils;Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiManageConferenceUtils;->updateCallerInfo(Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;)V

    return-void
.end method

.method private displayCallerInfoForConferenceRow(Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 8
    .parameter "ci"
    .parameter "nameTextView"
    .parameter "numberTextView"
    .parameter "telocationTextView"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 131
    const-string v0, ""

    .line 132
    .local v0, callerName:Ljava/lang/String;
    const-string v1, ""

    .line 133
    .local v1, callerNumber:Ljava/lang/String;
    const-string v2, ""

    .line 134
    .local v2, callerTelocation:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 135
    iget-object v4, p1, Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    const-string v1, ""

    .line 143
    :goto_0
    iget-object v4, p1, Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v4}, Lcom/android/phone/MiuiPhoneUtils;->getDisplayName(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v4, p1, Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;->connection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 146
    iget-object v4, p0, Lcom/android/phone/MiuiManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0191

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    :cond_0
    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 157
    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    invoke-virtual {p4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    :goto_2
    return-void

    .line 137
    :cond_1
    iget-object v4, p1, Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    const-string v5, "sip:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    iget-object v4, p1, Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 140
    :cond_2
    iget-object v4, p1, Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v4, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 148
    :cond_3
    iget-object v4, p0, Lcom/android/phone/MiuiManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v4, v1}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 160
    :cond_4
    invoke-static {}, Lmiui/content/res/ExtraConfiguration;->getScaleMode()I

    move-result v3

    .line 161
    .local v3, scaleMode:I
    const/16 v4, 0xe

    if-lt v3, v4, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 163
    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    :goto_3
    invoke-virtual {p4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 165
    :cond_5
    invoke-virtual {p3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private updateCallerInfo(Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;)V
    .locals 5
    .parameter "ci"

    .prologue
    .line 115
    iget-object v3, p1, Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 116
    iget-object v3, p1, Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;->view:Landroid/view/View;

    const v4, 0x7f070042

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    .local v0, nameTextView:Landroid/widget/TextView;
    iget-object v3, p1, Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;->view:Landroid/view/View;

    const v4, 0x7f070044

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 118
    .local v1, numberTextView:Landroid/widget/TextView;
    iget-object v3, p1, Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;->view:Landroid/view/View;

    const v4, 0x7f070046

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 120
    .local v2, telocationTextView:Landroid/widget/TextView;
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/phone/MiuiManageConferenceUtils;->displayCallerInfoForConferenceRow(Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 122
    .end local v0           #nameTextView:Landroid/widget/TextView;
    .end local v1           #numberTextView:Landroid/widget/TextView;
    .end local v2           #telocationTextView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method


# virtual methods
.method public initManageConferencePanel()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/phone/ManageConferenceUtils;->initManageConferencePanel()V

    .line 42
    iget-object v0, p0, Lcom/android/phone/MiuiManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f0700c5

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/MiuiManageConferenceUtils;->mConferenceCallList:Landroid/widget/ListView;

    .line 43
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 175
    sget-boolean v0, Lcom/android/phone/MiuiManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callerinfo query complete, updating UI."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 177
    :cond_0
    check-cast p2, Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/phone/MiuiManageConferenceUtils;->updateCallerInfo(Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;)V

    .line 178
    return-void
.end method

.method public updateManageConferencePanel(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/android/phone/MiuiManageConferenceUtils;->mNumCallersInConference:I

    .line 48
    sget-boolean v1, Lcom/android/phone/MiuiManageConferenceUtils;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateManageConferencePanel()... num connections in conference = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/MiuiManageConferenceUtils;->mNumCallersInConference:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MiuiManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v7

    .line 54
    .local v7, hasActiveCall:Z
    iget-object v1, p0, Lcom/android/phone/MiuiManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v8

    .line 55
    .local v8, hasHoldingCall:Z
    if-eqz v7, :cond_1

    if-nez v8, :cond_3

    :cond_1
    const/4 v5, 0x1

    .line 57
    .local v5, canSeparate:Z
    :goto_0
    iget-object v1, p0, Lcom/android/phone/MiuiManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 58
    .local v4, inflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/phone/MiuiManageConferenceUtils$1;

    iget-object v2, p0, Lcom/android/phone/MiuiManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v3, 0x7f040009

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/MiuiManageConferenceUtils$1;-><init>(Lcom/android/phone/MiuiManageConferenceUtils;Landroid/content/Context;ILandroid/view/LayoutInflater;Z)V

    .line 101
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/telephony/Connection;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_4

    .line 102
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Connection;

    .line 103
    .local v6, c:Lcom/android/internal/telephony/Connection;
    if-eqz v6, :cond_2

    .line 104
    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 101
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 55
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/telephony/Connection;>;"
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #canSeparate:Z
    .end local v6           #c:Lcom/android/internal/telephony/Connection;
    .end local v9           #i:I
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 108
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/telephony/Connection;>;"
    .restart local v4       #inflater:Landroid/view/LayoutInflater;
    .restart local v5       #canSeparate:Z
    .restart local v9       #i:I
    :cond_4
    iget-object v1, p0, Lcom/android/phone/MiuiManageConferenceUtils;->mConferenceCallList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    return-void
.end method

.method public updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V
    .locals 0
    .parameter "i"
    .parameter "connection"
    .parameter "canSeparate"

    .prologue
    .line 126
    return-void
.end method
