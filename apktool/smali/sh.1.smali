.class Lsh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LsO;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lsg;


# direct methods
.method constructor <init>(Lsg;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lsh;->b:Lsg;

    iput-object p2, p0, Lsh;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LsK;)V
    .locals 2

    .prologue
    .line 366
    sget-boolean v0, LsG;->a:Z

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using existing pushId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsh;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    :cond_0
    invoke-virtual {p1}, LsK;->c()LsP;

    move-result-object v0

    iget-object v1, p0, Lsh;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, LsP;->a(Ljava/lang/String;)V

    .line 370
    return-void
.end method
