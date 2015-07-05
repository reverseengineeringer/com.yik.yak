.class public abstract Lqi;
.super Lqh;
.source "SourceFile"

# interfaces
.implements Lqk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lqj",
        "<TMessageType;>;BuilderType:",
        "Lqi",
        "<TMessageType;TBuilderType;>;>",
        "Lqh",
        "<TMessageType;TBuilderType;>;",
        "Lqk",
        "<TMessageType;>;"
    }
.end annotation


# instance fields
.field private a:Lqc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqc",
            "<",
            "Lql;",
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
    invoke-direct {p0}, Lqh;-><init>()V

    .line 359
    invoke-static {}, Lqc;->b()Lqc;

    move-result-object v0

    iput-object v0, p0, Lqi;->a:Lqc;

    .line 357
    return-void
.end method

.method static synthetic a(Lqi;)Lqc;
    .locals 1

    .prologue
    .line 352
    invoke-direct {p0}, Lqi;->b()Lqc;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lqi;->b:Z

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lqi;->a:Lqc;

    invoke-virtual {v0}, Lqc;->d()Lqc;

    move-result-object v0

    iput-object v0, p0, Lqi;->a:Lqc;

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqi;->b:Z

    .line 379
    :cond_0
    return-void
.end method

.method private b()Lqc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqc",
            "<",
            "Lql;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lqi;->a:Lqc;

    invoke-virtual {v0}, Lqc;->c()V

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqi;->b:Z

    .line 388
    iget-object v0, p0, Lqi;->a:Lqc;

    return-object v0
.end method


# virtual methods
.method protected final a(Lqj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .prologue
    .line 520
    invoke-direct {p0}, Lqi;->a()V

    .line 521
    iget-object v0, p0, Lqi;->a:Lqc;

    invoke-static {p1}, Lqj;->a(Lqj;)Lqc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqc;->a(Lqc;)V

    .line 522
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0}, Lqi;->o()Lqi;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lqh;
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0}, Lqi;->o()Lqi;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()LpN;
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0}, Lqi;->o()Lqi;

    move-result-object v0

    return-object v0
.end method

.method public o()Lqi;
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
    iget-object v0, p0, Lqi;->a:Lqc;

    invoke-virtual {v0}, Lqc;->e()Z

    move-result v0

    return v0
.end method
