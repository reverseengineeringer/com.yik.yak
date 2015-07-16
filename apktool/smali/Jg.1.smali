.class LJg;
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
        "LJh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LJf;


# direct methods
.method constructor <init>(LJf;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, LJg;->a:LJf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LJh;LJh;)I
    .locals 4

    .prologue
    .line 188
    iget-wide v0, p1, LJh;->b:J

    iget-wide v2, p2, LJh;->b:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 185
    check-cast p1, LJh;

    check-cast p2, LJh;

    invoke-virtual {p0, p1, p2}, LJg;->a(LJh;LJh;)I

    move-result v0

    return v0
.end method
