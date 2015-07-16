.class public abstract Lqm;
.super Lqi;
.source "SourceFile"

# interfaces
.implements Lqn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lqm",
        "<TMessageType;>;>",
        "Lqi;",
        "Lqn",
        "<TMessageType;>;"
    }
.end annotation


# instance fields
.field private final a:Lqf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqf",
            "<",
            "Lqo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Lqi;-><init>()V

    .line 185
    invoke-static {}, Lqf;->a()Lqf;

    move-result-object v0

    iput-object v0, p0, Lqm;->a:Lqf;

    .line 186
    return-void
.end method

.method protected constructor <init>(Lql;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lql",
            "<TMessageType;*>;)V"
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0}, Lqi;-><init>()V

    .line 189
    invoke-static {p1}, Lql;->a(Lql;)Lqf;

    move-result-object v0

    iput-object v0, p0, Lqm;->a:Lqf;

    .line 190
    return-void
.end method

.method static synthetic a(Lqm;)Lqf;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lqm;->a:Lqf;

    return-object v0
.end method


# virtual methods
.method protected I()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lqm;->a:Lqf;

    invoke-virtual {v0}, Lqf;->e()Z

    move-result v0

    return v0
.end method

.method protected R()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lqm;->a:Lqf;

    invoke-virtual {v0}, Lqf;->c()V

    .line 287
    return-void
.end method

.method protected a(LpZ;Lqb;Lqd;I)Z
    .locals 6

    .prologue
    .line 259
    iget-object v0, p0, Lqm;->a:Lqf;

    invoke-virtual {p0}, Lqm;->p()LqB;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lqi;->a(Lqf;LqB;LpZ;Lqb;Lqd;I)Z

    move-result v0

    return v0
.end method
