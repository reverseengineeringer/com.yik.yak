.class public LqR;
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
.method public constructor <init>(Lqy;)V
    .locals 1

    .prologue
    .line 25
    const-string v0, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, LqR;->a:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public a()Lqr;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lqr;

    invoke-virtual {p0}, LqR;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lqr;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
