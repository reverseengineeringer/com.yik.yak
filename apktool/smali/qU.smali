.class public LqU;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LqB;)V
    .locals 1

    .prologue
    .line 25
    const-string v0, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, LqU;->a:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public a()Lqu;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lqu;

    invoke-virtual {p0}, LqU;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lqu;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
