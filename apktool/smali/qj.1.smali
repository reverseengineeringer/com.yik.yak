.class public abstract Lqj;
.super Lqf;
.source "SourceFile"

# interfaces
.implements Lqk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lqj",
        "<TMessageType;>;>",
        "Lqf;",
        "Lqk",
        "<TMessageType;>;"
    }
.end annotation


# instance fields
.field private final a:Lqc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqc",
            "<",
            "Lql;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Lqf;-><init>()V

    .line 185
    invoke-static {}, Lqc;->a()Lqc;

    move-result-object v0

    iput-object v0, p0, Lqj;->a:Lqc;

    .line 186
    return-void
.end method

.method protected constructor <init>(Lqi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqi",
            "<TMessageType;*>;)V"
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0}, Lqf;-><init>()V

    .line 189
    invoke-static {p1}, Lqi;->a(Lqi;)Lqc;

    move-result-object v0

    iput-object v0, p0, Lqj;->a:Lqc;

    .line 190
    return-void
.end method

.method static synthetic a(Lqj;)Lqc;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lqj;->a:Lqc;

    return-object v0
.end method


# virtual methods
.method protected I()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lqj;->a:Lqc;

    invoke-virtual {v0}, Lqc;->e()Z

    move-result v0

    return v0
.end method

.method protected R()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lqj;->a:Lqc;

    invoke-virtual {v0}, Lqc;->c()V

    .line 287
    return-void
.end method

.method protected a(LpW;LpY;Lqa;I)Z
    .locals 6

    .prologue
    .line 259
    iget-object v0, p0, Lqj;->a:Lqc;

    invoke-virtual {p0}, Lqj;->p()Lqy;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lqf;->a(Lqc;Lqy;LpW;LpY;Lqa;I)Z

    move-result v0

    return v0
.end method
