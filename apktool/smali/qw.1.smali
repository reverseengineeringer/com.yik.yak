.class public Lqw;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lqx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lqx;"
    }
.end annotation


# static fields
.field public static final a:Lqx;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, LqV;

    new-instance v1, Lqw;

    invoke-direct {v1}, Lqw;-><init>()V

    invoke-direct {v0, v1}, LqV;-><init>(Lqx;)V

    sput-object v0, Lqw;->a:Lqx;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqw;->b:Ljava/util/List;

    .line 47
    return-void
.end method

.method public constructor <init>(Lqx;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lqx;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lqw;->b:Ljava/util/List;

    .line 51
    invoke-virtual {p0, p1}, Lqw;->addAll(Ljava/util/Collection;)Z

    .line 52
    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 189
    check-cast p0, Ljava/lang/String;

    .line 193
    :goto_0
    return-object p0

    .line 190
    :cond_0
    instance-of v0, p0, LpW;

    if-eqz v0, :cond_1

    .line 191
    check-cast p0, LpW;

    invoke-virtual {p0}, LpW;->f()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 193
    :cond_1
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lqr;->b([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lqw;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 61
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 62
    check-cast v0, Ljava/lang/String;

    .line 76
    :goto_0
    return-object v0

    .line 63
    :cond_0
    instance-of v1, v0, LpW;

    if-eqz v1, :cond_2

    .line 64
    check-cast v0, LpW;

    .line 65
    invoke-virtual {v0}, LpW;->f()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {v0}, LpW;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lqw;->b:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 69
    goto :goto_0

    .line 71
    :cond_2
    check-cast v0, [B

    check-cast v0, [B

    .line 72
    invoke-static {v0}, Lqr;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v0}, Lqr;->a([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    iget-object v0, p0, Lqw;->b:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v0, v1

    .line 76
    goto :goto_0
.end method

.method public a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lqw;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lqw;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lqw;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(LpW;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lqw;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget v0, p0, Lqw;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lqw;->modCount:I

    .line 148
    return-void
.end method

.method public synthetic add(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lqw;->b(ILjava/lang/String;)V

    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 110
    instance-of v0, p2, Lqx;

    if-eqz v0, :cond_0

    check-cast p2, Lqx;

    invoke-interface {p2}, Lqx;->a()Ljava/util/List;

    move-result-object p2

    .line 112
    :cond_0
    iget-object v0, p0, Lqw;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 113
    iget v1, p0, Lqw;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lqw;->modCount:I

    .line 114
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Lqw;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lqw;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lqw;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 134
    iget v1, p0, Lqw;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lqw;->modCount:I

    .line 135
    invoke-static {v0}, Lqw;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lqw;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 94
    iget v0, p0, Lqw;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lqw;->modCount:I

    .line 95
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lqw;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    iget v0, p0, Lqw;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lqw;->modCount:I

    .line 142
    return-void
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lqw;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lqw;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lqw;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lqw;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
