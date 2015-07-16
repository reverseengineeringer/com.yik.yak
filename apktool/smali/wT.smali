.class LwT;
.super LKF;
.source "SourceFile"


# instance fields
.field final synthetic a:LxV;

.field final synthetic b:LwS;


# direct methods
.method constructor <init>(LwS;LKT;LxV;)V
    .locals 0

    .prologue
    .line 654
    iput-object p1, p0, LwT;->b:LwS;

    iput-object p3, p0, LwT;->a:LxV;

    invoke-direct {p0, p2}, LKF;-><init>(LKT;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, LwT;->a:LxV;

    invoke-virtual {v0}, LxV;->close()V

    .line 657
    invoke-super {p0}, LKF;->close()V

    .line 658
    return-void
.end method
