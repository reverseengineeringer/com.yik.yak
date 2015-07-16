.class final Lbg;
.super Lbf;
.source "SourceFile"


# instance fields
.field private final a:[Lbf;


# direct methods
.method public varargs constructor <init>([Lbf;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    new-array v0, v1, [Lbf;

    invoke-direct {p0, v1, v0}, Lbf;-><init>(I[Lbf;)V

    .line 123
    iput-object p1, p0, Lbg;->a:[Lbf;

    .line 124
    return-void
.end method


# virtual methods
.method public b()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 135
    .line 136
    iget-object v2, p0, Lbg;->a:[Lbf;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 137
    invoke-virtual {v4}, Lbf;->b()I

    move-result v4

    add-int/2addr v1, v4

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    return v1
.end method

.method public b(Laf;)V
    .locals 4

    .prologue
    .line 128
    iget-object v1, p0, Lbg;->a:[Lbf;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 129
    invoke-virtual {v3, p1}, Lbf;->b(Laf;)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method
