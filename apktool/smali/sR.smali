.class LsR;
.super LsQ;
.source "SourceFile"


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:LsQ;


# direct methods
.method constructor <init>(LsQ;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1703
    iput-object p1, p0, LsR;->c:LsQ;

    iput-object p2, p0, LsR;->b:Ljava/lang/String;

    iget-object v0, p1, LsQ;->a:LsK;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LsQ;-><init>(LsK;LsL;)V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1706
    iget-object v0, p0, LsR;->b:Ljava/lang/String;

    return-object v0
.end method
