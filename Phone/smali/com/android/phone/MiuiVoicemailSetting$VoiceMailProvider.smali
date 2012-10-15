.class Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;
.super Ljava/lang/Object;
.source "MiuiVoicemailSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiVoicemailSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceMailProvider"
.end annotation


# instance fields
.field public intent:Landroid/content/Intent;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/MiuiVoicemailSetting;


# direct methods
.method public constructor <init>(Lcom/android/phone/MiuiVoicemailSetting;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "intent"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;->this$0:Lcom/android/phone/MiuiVoicemailSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p2, p0, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Lcom/android/phone/MiuiVoicemailSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    .line 156
    return-void
.end method
