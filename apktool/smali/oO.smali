.class LoO;
.super Ljava/lang/Object;


# instance fields
.field private a:Loz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Loz",
            "<",
            "LhK;",
            ">;"
        }
    .end annotation
.end field

.field private b:LhK;


# direct methods
.method public constructor <init>(Loz;LhK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loz",
            "<",
            "LhK;",
            ">;",
            "LhK;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LoO;->a:Loz;

    iput-object p2, p0, LoO;->b:LhK;

    return-void
.end method


# virtual methods
.method public a()Loz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Loz",
            "<",
            "LhK;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LoO;->a:Loz;

    return-object v0
.end method

.method public b()LhK;
    .locals 1

    iget-object v0, p0, LoO;->b:LhK;

    return-object v0
.end method
