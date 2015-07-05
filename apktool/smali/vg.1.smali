.class public Lvg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lvd;

.field private b:Lvj;


# direct methods
.method constructor <init>(Lvd;Lva;)V
    .locals 2

    .prologue
    .line 1027
    iput-object p1, p0, Lvg;->a:Lvd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    invoke-static {p1}, Lvd;->b(Lvd;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvj;

    iput-object v0, p0, Lvg;->b:Lvj;

    .line 1029
    iget-object v0, p0, Lvg;->b:Lvj;

    if-nez v0, :cond_0

    .line 1030
    new-instance v0, Lvj;

    invoke-direct {v0, p2}, Lvj;-><init>(Lva;)V

    iput-object v0, p0, Lvg;->b:Lvj;

    .line 1031
    invoke-static {p1}, Lvd;->b(Lvd;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lvg;->b:Lvj;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    invoke-static {p1}, Lvd;->d(Lvd;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lvg;->b:Lvj;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lva;)Lvg;
    .locals 4

    .prologue
    .line 1044
    iget-object v0, p0, Lvg;->a:Lvd;

    invoke-static {v0}, Lvd;->b(Lvd;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvj;

    .line 1045
    if-nez v0, :cond_0

    .line 1046
    new-instance v0, Lvj;

    invoke-direct {v0, p1}, Lvj;-><init>(Lva;)V

    .line 1047
    iget-object v1, p0, Lvg;->a:Lvd;

    invoke-static {v1}, Lvd;->b(Lvd;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    iget-object v1, p0, Lvg;->a:Lvd;

    invoke-static {v1}, Lvd;->d(Lvd;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    :cond_0
    new-instance v1, Lvh;

    iget-object v2, p0, Lvg;->b:Lvj;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lvh;-><init>(Lvj;I)V

    .line 1051
    invoke-virtual {v0, v1}, Lvj;->a(Lvh;)V

    .line 1052
    return-object p0
.end method
