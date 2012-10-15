.class public abstract Lcom/miui/home/launcher/gadget/ConfigableGadget;
.super Landroid/widget/FrameLayout;
.source "ConfigableGadget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/home/launcher/gadget/Gadget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/miui/home/launcher/gadget/ConfigableGadget;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/gadget/ConfigableGadget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public static deleteConfig(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "key"

    .prologue
    .line 118
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    return-void
.end method


# virtual methods
.method public deleteConfig()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->getPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->deleteConfig(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method protected abstract getEditView()Landroid/view/View;
.end method

.method public getItemId()J
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    iget-wide v1, v1, Lcom/miui/home/launcher/gadget/GadgetInfo;->id:J

    .line 129
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method protected getPrefKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->getItemId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadConfig()Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 110
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->getPrefKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onAdded()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 90
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 40
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 42
    .local v0, info:Lcom/miui/home/launcher/gadget/GadgetInfo;
    new-instance v1, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    iget v2, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->mGadgetId:I

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;-><init>(I)V

    iput-object v1, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    .line 43
    return-void
.end method

.method public onDeleted()V
    .locals 5

    .prologue
    .line 47
    sget-object v1, Lcom/miui/home/launcher/gadget/ConfigableGadget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove gadget "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->getItemId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->getItemId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, backup:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 50
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->deleteConfig()V

    .line 51
    return-void
.end method

.method public onEditDisable()V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->getEditView()Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, editView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 74
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    :cond_0
    return-void
.end method

.method public onEditNormal()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->getEditView()Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, editView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 86
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->getEditView()Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, editView:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 151
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 143
    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 147
    :pswitch_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public saveConfig(Ljava/lang/String;)Z
    .locals 5
    .parameter "config"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->getItemId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 101
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->getPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 105
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
