.class Lpw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpz;


# instance fields
.field private a:LpA;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, LpA;->d:LpA;

    iput-object v0, p0, Lpw;->a:LpA;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lpw;->a:LpA;

    invoke-virtual {v0}, LpA;->ordinal()I

    sget-object v0, LpA;->e:LpA;

    invoke-virtual {v0}, LpA;->ordinal()I

    .line 14
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lpw;->a:LpA;

    invoke-virtual {v0}, LpA;->ordinal()I

    sget-object v0, LpA;->d:LpA;

    invoke-virtual {v0}, LpA;->ordinal()I

    .line 28
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lpw;->a:LpA;

    invoke-virtual {v0}, LpA;->ordinal()I

    sget-object v0, LpA;->c:LpA;

    invoke-virtual {v0}, LpA;->ordinal()I

    .line 42
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lpw;->a:LpA;

    invoke-virtual {v0}, LpA;->ordinal()I

    sget-object v0, LpA;->a:LpA;

    invoke-virtual {v0}, LpA;->ordinal()I

    .line 70
    return-void
.end method
