.class public Lcom/android/mms/ui/MessagingStylePreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MessagingStylePreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mMessagingStyle:Lcom/android/mms/ui/MessagingStylePreference;

.field private mTimeStyle:Lmiui/preference/RadioButtonPreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private setTimeStyleVisiable(Ljava/lang/String;)V
    .locals 2
    .parameter "style"

    .prologue
    .line 68
    sget-object v0, Lcom/android/mms/ui/MessageListItem$Style;->list:Lcom/android/mms/ui/MessageListItem$Style;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem$Style;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->mTimeStyle:Lmiui/preference/RadioButtonPreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/preference/RadioButtonPreferenceCategory;->setEnabled(Z)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->mTimeStyle:Lmiui/preference/RadioButtonPreferenceCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/preference/RadioButtonPreferenceCategory;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v2, 0x7f060001

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->addPreferencesFromResource(I)V

    .line 44
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 46
    const-string v2, "pref_key_messaging_style"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessagingStylePreference;

    iput-object v2, p0, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->mMessagingStyle:Lcom/android/mms/ui/MessagingStylePreference;

    .line 47
    iget-object v2, p0, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->mMessagingStyle:Lcom/android/mms/ui/MessagingStylePreference;

    invoke-virtual {v2, p0}, Lcom/android/mms/ui/MessagingStylePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 49
    const-string v2, "pref_key_time_style"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiui/preference/RadioButtonPreferenceCategory;

    iput-object v2, p0, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->mTimeStyle:Lmiui/preference/RadioButtonPreferenceCategory;

    .line 50
    iget-object v2, p0, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->mTimeStyle:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v2, p0}, Lmiui/preference/RadioButtonPreferenceCategory;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 52
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    .local v0, pref:Landroid/content/SharedPreferences;
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->getConversationStyle(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, style:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->setTimeStyleVisiable(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 77
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 82
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 79
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->finish()V

    .line 80
    const/4 v0, 0x1

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->mMessagingStyle:Lcom/android/mms/ui/MessagingStylePreference;

    if-ne p1, v0, :cond_1

    .line 60
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->setTimeStyleVisiable(Ljava/lang/String;)V

    .line 64
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 61
    .restart local p2
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->mTimeStyle:Lmiui/preference/RadioButtonPreferenceCategory;

    if-ne p1, v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/MessagingStylePreferenceActivity;->mMessagingStyle:Lcom/android/mms/ui/MessagingStylePreference;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessagingStylePreference;->updateBubbleStyleImage()V

    goto :goto_0
.end method
