.class LwP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LxX;


# instance fields
.field final synthetic a:LwO;


# direct methods
.method constructor <init>(LwO;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, LwP;->a:LwO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LxD;)LxJ;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, LwP;->a:LwO;

    invoke-virtual {v0, p1}, LwO;->a(LxD;)LxJ;

    move-result-object v0

    return-object v0
.end method

.method public a(LxJ;)Lym;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, LwP;->a:LwO;

    invoke-static {v0, p1}, LwO;->a(LwO;LxJ;)Lym;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, LwP;->a:LwO;

    invoke-static {v0}, LwO;->a(LwO;)V

    .line 127
    return-void
.end method

.method public a(LxJ;LxJ;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, LwP;->a:LwO;

    invoke-static {v0, p1, p2}, LwO;->a(LwO;LxJ;LxJ;)V

    .line 124
    return-void
.end method

.method public a(Lyn;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, LwP;->a:LwO;

    invoke-static {v0, p1}, LwO;->a(LwO;Lyn;)V

    .line 130
    return-void
.end method

.method public b(LxD;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, LwP;->a:LwO;

    invoke-static {v0, p1}, LwO;->a(LwO;LxD;)V

    .line 121
    return-void
.end method
