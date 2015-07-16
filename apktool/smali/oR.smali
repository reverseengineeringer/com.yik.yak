.class LoR;
.super Ljava/lang/Object;


# instance fields
.field private a:LoC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LoC",
            "<",
            "LhH;",
            ">;"
        }
    .end annotation
.end field

.field private b:LhH;


# direct methods
.method public constructor <init>(LoC;LhH;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LoC",
            "<",
            "LhH;",
            ">;",
            "LhH;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LoR;->a:LoC;

    iput-object p2, p0, LoR;->b:LhH;

    return-void
.end method


# virtual methods
.method public a()LoC;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LoC",
            "<",
            "LhH;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LoR;->a:LoC;

    return-object v0
.end method

.method public b()LhH;
    .locals 1

    iget-object v0, p0, LoR;->b:LhH;

    return-object v0
.end method
