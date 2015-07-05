.class LwK;
.super LJX;
.source "SourceFile"


# instance fields
.field final synthetic a:LxL;

.field final synthetic b:LwJ;


# direct methods
.method constructor <init>(LwJ;LKl;LxL;)V
    .locals 0

    .prologue
    .line 654
    iput-object p1, p0, LwK;->b:LwJ;

    iput-object p3, p0, LwK;->a:LxL;

    invoke-direct {p0, p2}, LJX;-><init>(LKl;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, LwK;->a:LxL;

    invoke-virtual {v0}, LxL;->close()V

    .line 657
    invoke-super {p0}, LJX;->close()V

    .line 658
    return-void
.end method
