.class public interface abstract Lcom/miui/player/ui/OperationDialog$DialogBuilder;
.super Ljava/lang/Object;
.source "OperationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/OperationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DialogBuilder"
.end annotation


# virtual methods
.method public abstract execute(Ljava/lang/String;)Landroid/net/Uri;
.end method

.method public abstract getConfirm(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPrompt()Ljava/lang/String;
.end method

.method public abstract getSuggestionName()Ljava/lang/String;
.end method

.method public abstract isConfirmable(Ljava/lang/String;)Z
.end method
