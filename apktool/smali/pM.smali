.class public abstract LpM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqy;


# instance fields
.field protected b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, LpM;->b:I

    .line 93
    return-void
.end method


# virtual methods
.method Q()LqR;
    .locals 1

    .prologue
    .line 78
    new-instance v0, LqR;

    invoke-direct {v0, p0}, LqR;-><init>(Lqy;)V

    return-object v0
.end method
