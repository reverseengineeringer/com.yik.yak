.class abstract Lbf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:[Lbf;


# direct methods
.method public varargs constructor <init>(I[Lbf;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lbf;->a:I

    .line 47
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lbf;->b:[Lbf;

    .line 48
    return-void

    .line 47
    :cond_0
    invoke-static {}, LaX;->a()[Lbf;

    move-result-object p2

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public a(Laf;)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public b()I
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lbf;->c()I

    move-result v0

    .line 57
    invoke-static {v0}, Laf;->l(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    iget v1, p0, Lbf;->a:I

    invoke-static {v1}, Laf;->j(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    return v0
.end method

.method public b(Laf;)V
    .locals 4

    .prologue
    .line 82
    iget v0, p0, Lbf;->a:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Laf;->i(II)V

    .line 83
    invoke-virtual {p0}, Lbf;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Laf;->k(I)V

    .line 84
    invoke-virtual {p0, p1}, Lbf;->a(Laf;)V

    .line 85
    iget-object v1, p0, Lbf;->b:[Lbf;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 86
    invoke-virtual {v3, p1}, Lbf;->b(Laf;)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public c()I
    .locals 5

    .prologue
    .line 68
    invoke-virtual {p0}, Lbf;->a()I

    move-result v1

    .line 69
    iget-object v2, p0, Lbf;->b:[Lbf;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 70
    invoke-virtual {v4}, Lbf;->b()I

    move-result v4

    add-int/2addr v1, v4

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return v1
.end method
