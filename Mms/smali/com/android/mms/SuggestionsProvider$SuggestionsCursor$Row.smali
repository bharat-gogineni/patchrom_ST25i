.class Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;
.super Ljava/lang/Object;
.source "SuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Row"
.end annotation


# instance fields
.field private mRowNumber:I

.field private mSnippet:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;


# direct methods
.method public constructor <init>(Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter "row"
    .parameter "snippet"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->this$1:Lcom/android/mms/SuggestionsProvider$SuggestionsCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->mSnippet:Ljava/lang/String;

    .line 122
    iput p2, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->mRowNumber:I

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->mRowNumber:I

    return v0
.end method


# virtual methods
.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/mms/SuggestionsProvider$SuggestionsCursor$Row;->mSnippet:Ljava/lang/String;

    return-object v0
.end method
