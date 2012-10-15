.class Lcom/miui/player/ui/MusicBrowserActivity$3;
.super Ljava/lang/Object;
.source "MusicBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/MusicBrowserActivity;->showImpunityDeclaration(Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MusicBrowserActivity;

.field final synthetic val$item:Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MusicBrowserActivity;Landroid/content/SharedPreferences;Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/miui/player/ui/MusicBrowserActivity$3;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    iput-object p2, p0, Lcom/miui/player/ui/MusicBrowserActivity$3;->val$sp:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/miui/player/ui/MusicBrowserActivity$3;->val$item:Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity$3;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_first_to_online"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 464
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity$3;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    iget-object v1, p0, Lcom/miui/player/ui/MusicBrowserActivity$3;->val$item:Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MusicBrowserActivity;->openItem(Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;)V

    .line 465
    return-void
.end method
