.class public abstract Lqn;
.super LpO;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lqn",
        "<TMessageType;>;>",
        "LpO;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field protected b:LpT;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, LpO;-><init>()V

    .line 28
    sget-object v0, LpT;->a:LpT;

    iput-object v0, p0, Lqn;->b:LpT;

    .line 492
    return-void
.end method


# virtual methods
.method public abstract a(Lqn;)Lqn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TMessageType;"
        }
    .end annotation
.end method
