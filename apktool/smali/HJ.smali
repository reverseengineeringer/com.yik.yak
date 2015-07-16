.class LHJ;
.super LIR;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "LIR",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final a:LHK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LHK",
            "<TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LHK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LHK",
            "<TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, LIR;-><init>()V

    .line 17
    iput-object p1, p0, LHJ;->a:LHK;

    .line 18
    return-void
.end method

.method private a(Ljava/lang/String;)LIB;
    .locals 3

    .prologue
    .line 75
    new-instance v0, LIB;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LHJ;->a:LHK;

    invoke-virtual {v2}, LHK;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KitInitialization"

    invoke-direct {v0, v1, v2}, LIB;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, LIB;->a()V

    .line 78
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, LHJ;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TResult;"
        }
    .end annotation

    .prologue
    .line 43
    const-string v0, "doInBackground"

    invoke-direct {p0, v0}, LHJ;->a(Ljava/lang/String;)LIB;

    move-result-object v1

    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0}, LHJ;->c_()Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    iget-object v0, p0, LHJ;->a:LHK;

    invoke-virtual {v0}, LHK;->z()Ljava/lang/Object;

    move-result-object v0

    .line 49
    :cond_0
    invoke-virtual {v1}, LIB;->b()V

    .line 50
    return-object v0
.end method

.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 22
    invoke-super {p0}, LIR;->a()V

    .line 24
    const-string v0, "onPreExecute"

    invoke-direct {p0, v0}, LHJ;->a(Ljava/lang/String;)LIB;

    move-result-object v1

    .line 27
    :try_start_0
    iget-object v0, p0, LHJ;->a:LHK;

    invoke-virtual {v0}, LHK;->a()Z
    :try_end_0
    .catch LJb; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 34
    invoke-virtual {v1}, LIB;->b()V

    .line 35
    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0, v2}, LHJ;->a(Z)Z

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 30
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, LIB;->b()V

    .line 36
    invoke-virtual {p0, v2}, LHJ;->a(Z)Z

    throw v0

    .line 32
    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {}, LHA;->g()LHM;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    invoke-virtual {v1}, LIB;->b()V

    .line 36
    invoke-virtual {p0, v2}, LHJ;->a(Z)Z

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, LHJ;->a:LHK;

    iget-object v0, v0, LHK;->e:LHF;

    invoke-interface {v0, p1}, LHF;->a(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public b()LIQ;
    .locals 1

    .prologue
    .line 70
    sget-object v0, LIQ;->c:LIQ;

    return-object v0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LHJ;->a:LHK;

    invoke-virtual {v1}, LHK;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Initialization was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, LHI;

    invoke-direct {v1, v0}, LHI;-><init>(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, LHJ;->a:LHK;

    iget-object v0, v0, LHK;->e:LHF;

    invoke-interface {v0, v1}, LHF;->a(Ljava/lang/Exception;)V

    .line 66
    return-void
.end method
