.class LHn;
.super LHv;
.source "SourceFile"


# instance fields
.field final synthetic a:LHl;

.field final synthetic b:LHm;


# direct methods
.method constructor <init>(LHm;LHl;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, LHn;->b:LHm;

    iput-object p2, p0, LHn;->a:LHl;

    invoke-direct {p0}, LHv;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, LHn;->b:LHm;

    invoke-static {v0}, LHm;->a(LHm;)LHl;

    move-result-object v0

    .line 54
    iget-object v1, p0, LHn;->a:LHl;

    invoke-virtual {v1, v0}, LHl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    invoke-static {}, LGS;->g()LHe;

    .line 57
    iget-object v1, p0, LHn;->b:LHm;

    invoke-static {v1, v0}, LHm;->a(LHm;LHl;)V

    .line 59
    :cond_0
    return-void
.end method
