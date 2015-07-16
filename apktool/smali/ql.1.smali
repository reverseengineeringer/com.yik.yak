.class public abstract Lql;
.super Lqk;
.source "SourceFile"

# interfaces
.implements Lqn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lqm",
        "<TMessageType;>;BuilderType:",
        "Lql",
        "<TMessageType;TBuilderType;>;>",
        "Lqk",
        "<TMessageType;TBuilderType;>;",
        "Lqn",
        "<TMessageType;>;"
    }
.end annotation


# instance fields
.field private a:Lqf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqf",
            "<",
            "Lqo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 357
    invoke-direct {p0}, Lqk;-><init>()V

    .line 359
    invoke-static {}, Lqf;->b()Lqf;

    move-result-object v0

    iput-object v0, p0, Lql;->a:Lqf;

    .line 357
    return-void
.end method

.method static synthetic a(Lql;)Lqf;
    .locals 1

    .prologue
    .line 352
    invoke-direct {p0}, Lql;->b()Lqf;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lql;->b:Z

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lql;->a:Lqf;

    invoke-virtual {v0}, Lqf;->d()Lqf;

    move-result-object v0

    iput-object v0, p0, Lql;->a:Lqf;

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lql;->b:Z

    .line 379
    :cond_0
    return-void
.end method

.method private b()Lqf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqf",
            "<",
            "Lqo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lql;->a:Lqf;

    invoke-virtual {v0}, Lqf;->c()V

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lql;->b:Z

    .line 388
    iget-object v0, p0, Lql;->a:Lqf;

    return-object v0
.end method


# virtual methods
.method protected final a(Lqm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .prologue
    .line 520
    invoke-direct {p0}, Lql;->a()V

    .line 521
    iget-object v0, p0, Lql;->a:Lqf;

    invoke-static {p1}, Lqm;->a(Lqm;)Lqf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqf;->a(Lqf;)V

    .line 522
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0}, Lql;->o()Lql;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lqk;
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0}, Lql;->o()Lql;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()LpQ;
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0}, Lql;->o()Lql;

    move-result-object v0

    return-object v0
.end method

.method public o()Lql;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .prologue
    .line 448
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected s()Z
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lql;->a:Lqf;

    invoke-virtual {v0}, Lqf;->e()Z

    move-result v0

    return v0
.end method
