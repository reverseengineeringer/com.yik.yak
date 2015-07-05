.class LIy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "LIz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LIx;


# direct methods
.method constructor <init>(LIx;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, LIy;->a:LIx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LIz;LIz;)I
    .locals 4

    .prologue
    .line 188
    iget-wide v0, p1, LIz;->b:J

    iget-wide v2, p2, LIz;->b:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 185
    check-cast p1, LIz;

    check-cast p2, LIz;

    invoke-virtual {p0, p1, p2}, LIy;->a(LIz;LIz;)I

    move-result v0

    return v0
.end method
