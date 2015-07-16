.class public abstract Lqq;
.super LpR;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lqq",
        "<TMessageType;>;>",
        "LpR;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field protected b:LpW;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, LpR;-><init>()V

    .line 28
    sget-object v0, LpW;->a:LpW;

    iput-object v0, p0, Lqq;->b:LpW;

    .line 492
    return-void
.end method


# virtual methods
.method public abstract a(Lqq;)Lqq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TMessageType;"
        }
    .end annotation
.end method
