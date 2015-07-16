.class LHV;
.super LId;
.source "SourceFile"


# instance fields
.field final synthetic a:LHT;

.field final synthetic b:LHU;


# direct methods
.method constructor <init>(LHU;LHT;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, LHV;->b:LHU;

    iput-object p2, p0, LHV;->a:LHT;

    invoke-direct {p0}, LId;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, LHV;->b:LHU;

    invoke-static {v0}, LHU;->a(LHU;)LHT;

    move-result-object v0

    .line 54
    iget-object v1, p0, LHV;->a:LHT;

    invoke-virtual {v1, v0}, LHT;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    invoke-static {}, LHA;->g()LHM;

    .line 57
    iget-object v1, p0, LHV;->b:LHU;

    invoke-static {v1, v0}, LHU;->a(LHU;LHT;)V

    .line 59
    :cond_0
    return-void
.end method
