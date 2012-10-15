.class Lcom/android/phone/MiuiCustomLocationActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MiuiCustomLocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiCustomLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiCustomLocationActivity;


# direct methods
.method public constructor <init>(Lcom/android/phone/MiuiCustomLocationActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/phone/MiuiCustomLocationActivity$QueryHandler;->this$0:Lcom/android/phone/MiuiCustomLocationActivity;

    .line 122
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 123
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 127
    if-eqz p3, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/phone/MiuiCustomLocationActivity$QueryHandler;->this$0:Lcom/android/phone/MiuiCustomLocationActivity;

    #calls: Lcom/android/phone/MiuiCustomLocationActivity;->changeCursor(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/android/phone/MiuiCustomLocationActivity;->access$100(Lcom/android/phone/MiuiCustomLocationActivity;Landroid/database/Cursor;)V

    .line 130
    :cond_0
    return-void
.end method
