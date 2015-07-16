.class public abstract LHK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "LHK;",
        ">;"
    }
.end annotation


# instance fields
.field b:LHA;

.field c:LHJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LHJ",
            "<TResult;>;"
        }
    .end annotation
.end field

.field d:Landroid/content/Context;

.field e:LHF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LHF",
            "<TResult;>;"
        }
    .end annotation
.end field

.field f:LIq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, LHJ;

    invoke-direct {v0, p0}, LHJ;-><init>(LHK;)V

    iput-object v0, p0, LHK;->c:LHJ;

    .line 27
    return-void
.end method


# virtual methods
.method final A()V
    .locals 5

    .prologue
    .line 49
    iget-object v1, p0, LHK;->c:LHJ;

    iget-object v0, p0, LHK;->b:LHA;

    invoke-virtual {v0}, LHA;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Void;

    const/4 v4, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, LHJ;->a(Ljava/util/concurrent/ExecutorService;[Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method protected B()LIq;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, LHK;->f:LIq;

    return-object v0
.end method

.method public C()Landroid/content/Context;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, LHK;->d:Landroid/content/Context;

    return-object v0
.end method

.method public D()LHA;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, LHK;->b:LHA;

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".Fabric"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LHK;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method F()Z
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, LIP;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, LIP;

    .line 159
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected G()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "LJa;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, LHK;->c:LHJ;

    invoke-virtual {v0}, LHJ;->c()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public a(LHK;)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 123
    invoke-virtual {p0, p1}, LHK;->b(LHK;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    invoke-virtual {p1, p0}, LHK;->b(LHK;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 126
    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p0}, LHK;->F()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, LHK;->F()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    :cond_3
    invoke-virtual {p0}, LHK;->F()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, LHK;->F()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 130
    goto :goto_0

    .line 132
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/content/Context;LHA;LHF;LIq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "LHA;",
            "LHF",
            "<TResult;>;",
            "LIq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p2, p0, LHK;->b:LHA;

    .line 40
    new-instance v0, LHE;

    invoke-virtual {p0}, LHK;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, LHK;->E()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, LHE;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, LHK;->d:Landroid/content/Context;

    .line 41
    iput-object p3, p0, LHK;->e:LHF;

    .line 42
    iput-object p4, p0, LHK;->f:LIq;

    .line 43
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method b(LHK;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, LIP;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, LIP;

    .line 142
    if-eqz v0, :cond_1

    .line 143
    invoke-interface {v0}, LIP;->a()[Ljava/lang/Class;

    move-result-object v2

    .line 144
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    const/4 v0, 0x1

    .line 150
    :goto_1
    return v0

    .line 144
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 150
    goto :goto_1
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 16
    check-cast p1, LHK;

    invoke-virtual {p0, p1}, LHK;->a(LHK;)I

    move-result v0

    return v0
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method protected abstract z()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method
