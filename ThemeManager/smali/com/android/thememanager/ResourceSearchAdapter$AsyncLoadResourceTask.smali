.class public Lcom/android/thememanager/ResourceSearchAdapter$AsyncLoadResourceTask;
.super Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;
.source "ResourceSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/ResourceSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncLoadResourceTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/ResourceSearchAdapter;


# direct methods
.method public constructor <init>(Lcom/android/thememanager/ResourceSearchAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/thememanager/ResourceSearchAdapter$AsyncLoadResourceTask;->this$0:Lcom/android/thememanager/ResourceSearchAdapter;

    invoke-direct {p0, p1}, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;-><init>(Lmiui/widget/AsyncAdapter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic loadData(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ResourceSearchAdapter$AsyncLoadResourceTask;->loadData(I)[Lmiui/app/resourcebrowser/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method protected loadData(I)[Lmiui/app/resourcebrowser/resource/Resource;
    .locals 1
    .parameter "index"

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method
