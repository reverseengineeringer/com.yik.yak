.class public abstract LpP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LqB;


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

    iput v0, p0, LpP;->b:I

    .line 93
    return-void
.end method


# virtual methods
.method Q()LqU;
    .locals 1

    .prologue
    .line 78
    new-instance v0, LqU;

    invoke-direct {v0, p0}, LqU;-><init>(LqB;)V

    return-object v0
.end method
