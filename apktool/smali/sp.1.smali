.class Lsp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mixpanel/android/mpmetrics/Survey;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mixpanel/android/mpmetrics/InAppNotification;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lorg/json/JSONArray;

.field public d:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsp;->a:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsp;->b:Ljava/util/List;

    .line 36
    invoke-static {}, Lso;->a()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lsp;->c:Lorg/json/JSONArray;

    .line 37
    invoke-static {}, Lso;->a()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lsp;->d:Lorg/json/JSONArray;

    .line 38
    return-void
.end method
