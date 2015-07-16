.class public abstract LpR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LqE;


# instance fields
.field protected a:I

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, LpR;->b:Z

    .line 116
    const/4 v0, -0x1

    iput v0, p0, LpR;->a:I

    return-void
.end method


# virtual methods
.method public a()LqE;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "clone() should be implemented by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b()LqU;
    .locals 1

    .prologue
    .line 113
    new-instance v0, LqU;

    invoke-direct {v0, p0}, LqU;-><init>(LqB;)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, LpR;->a()LqE;

    move-result-object v0

    return-object v0
.end method
