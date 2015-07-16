.class public Lvp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lvm;

.field private b:Lvs;


# direct methods
.method constructor <init>(Lvm;Lvj;)V
    .locals 2

    .prologue
    .line 1027
    iput-object p1, p0, Lvp;->a:Lvm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    invoke-static {p1}, Lvm;->b(Lvm;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvs;

    iput-object v0, p0, Lvp;->b:Lvs;

    .line 1029
    iget-object v0, p0, Lvp;->b:Lvs;

    if-nez v0, :cond_0

    .line 1030
    new-instance v0, Lvs;

    invoke-direct {v0, p2}, Lvs;-><init>(Lvj;)V

    iput-object v0, p0, Lvp;->b:Lvs;

    .line 1031
    invoke-static {p1}, Lvm;->b(Lvm;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lvp;->b:Lvs;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    invoke-static {p1}, Lvm;->d(Lvm;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lvp;->b:Lvs;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lvj;)Lvp;
    .locals 4

    .prologue
    .line 1044
    iget-object v0, p0, Lvp;->a:Lvm;

    invoke-static {v0}, Lvm;->b(Lvm;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvs;

    .line 1045
    if-nez v0, :cond_0

    .line 1046
    new-instance v0, Lvs;

    invoke-direct {v0, p1}, Lvs;-><init>(Lvj;)V

    .line 1047
    iget-object v1, p0, Lvp;->a:Lvm;

    invoke-static {v1}, Lvm;->b(Lvm;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    iget-object v1, p0, Lvp;->a:Lvm;

    invoke-static {v1}, Lvm;->d(Lvm;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    :cond_0
    new-instance v1, Lvq;

    iget-object v2, p0, Lvp;->b:Lvs;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lvq;-><init>(Lvs;I)V

    .line 1051
    invoke-virtual {v0, v1}, Lvs;->a(Lvq;)V

    .line 1052
    return-object p0
.end method
