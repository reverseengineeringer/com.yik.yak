.class LwG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LxN;


# instance fields
.field final synthetic a:LwF;


# direct methods
.method constructor <init>(LwF;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, LwG;->a:LwF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lxt;)Lxz;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, LwG;->a:LwF;

    invoke-virtual {v0, p1}, LwF;->a(Lxt;)Lxz;

    move-result-object v0

    return-object v0
.end method

.method public a(Lxz;)Lyc;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, LwG;->a:LwF;

    invoke-static {v0, p1}, LwF;->a(LwF;Lxz;)Lyc;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, LwG;->a:LwF;

    invoke-static {v0}, LwF;->a(LwF;)V

    .line 127
    return-void
.end method

.method public a(Lxz;Lxz;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, LwG;->a:LwF;

    invoke-static {v0, p1, p2}, LwF;->a(LwF;Lxz;Lxz;)V

    .line 124
    return-void
.end method

.method public a(Lyd;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, LwG;->a:LwF;

    invoke-static {v0, p1}, LwF;->a(LwF;Lyd;)V

    .line 130
    return-void
.end method

.method public b(Lxt;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, LwG;->a:LwF;

    invoke-static {v0, p1}, LwF;->a(LwF;Lxt;)V

    .line 121
    return-void
.end method
