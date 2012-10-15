.class final Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "BookmarkListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BookmarkListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BookmarkListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/BookmarkListAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/BookmarkListAdapter;

    .line 162
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 163
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 167
    packed-switch p1, :pswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 169
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/BookmarkListAdapter;

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/BookmarkListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
