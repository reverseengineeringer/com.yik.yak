.class LoN;
.super Ljava/lang/Object;


# static fields
.field private static final a:LoC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LoC",
            "<",
            "LhH;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lol;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lom;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lom;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lom;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lpe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpe",
            "<",
            "LoK;",
            "LoC",
            "<",
            "LhH;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Lpe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpe",
            "<",
            "Ljava/lang/String;",
            "LoR;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "LoL;",
            ">;"
        }
    .end annotation
.end field

.field private final i:LnW;

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LoS;",
            ">;"
        }
    .end annotation
.end field

.field private volatile k:Ljava/lang/String;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LoC;

    invoke-static {}, Lpb;->a()LhH;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LoC;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, LoN;->a:LoC;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    iget v0, p0, LoN;->l:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, LoN;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    :goto_1
    iget v2, p0, LoN;->l:I

    if-ge v0, v2, :cond_1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(LhH;Ljava/util/Set;Lpc;)LoC;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LhH;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lpc;",
            ")",
            "LoC",
            "<",
            "LhH;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p1, LhH;->l:Z

    if-nez v0, :cond_0

    new-instance v0, LoC;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, LoC;-><init>(Ljava/lang/Object;Z)V

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, LhH;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, LhH;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Los;->a(Ljava/lang/String;)V

    sget-object v0, LoN;->a:LoC;

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, LoJ;->a(LhH;)LhH;

    move-result-object v3

    iget-object v0, p1, LhH;->c:[LhH;

    array-length v0, v0

    new-array v0, v0, [LhH;

    iput-object v0, v3, LhH;->c:[LhH;

    move v1, v2

    :goto_1
    iget-object v0, p1, LhH;->c:[LhH;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p1, LhH;->c:[LhH;

    aget-object v0, v0, v1

    invoke-interface {p3, v1}, Lpc;->a(I)Lpc;

    move-result-object v4

    invoke-direct {p0, v0, p2, v4}, LoN;->a(LhH;Ljava/util/Set;Lpc;)LoC;

    move-result-object v0

    sget-object v4, LoN;->a:LoC;

    if-ne v0, v4, :cond_1

    sget-object v0, LoN;->a:LoC;

    goto :goto_0

    :cond_1
    iget-object v4, v3, LhH;->c:[LhH;

    invoke-virtual {v0}, LoC;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhH;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    new-instance v0, LoC;

    invoke-direct {v0, v3, v2}, LoC;-><init>(Ljava/lang/Object;Z)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, LoJ;->a(LhH;)LhH;

    move-result-object v3

    iget-object v0, p1, LhH;->d:[LhH;

    array-length v0, v0

    iget-object v1, p1, LhH;->e:[LhH;

    array-length v1, v1

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid serving value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, LhH;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Los;->a(Ljava/lang/String;)V

    sget-object v0, LoN;->a:LoC;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p1, LhH;->d:[LhH;

    array-length v0, v0

    new-array v0, v0, [LhH;

    iput-object v0, v3, LhH;->d:[LhH;

    iget-object v0, p1, LhH;->d:[LhH;

    array-length v0, v0

    new-array v0, v0, [LhH;

    iput-object v0, v3, LhH;->e:[LhH;

    move v1, v2

    :goto_2
    iget-object v0, p1, LhH;->d:[LhH;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    iget-object v0, p1, LhH;->d:[LhH;

    aget-object v0, v0, v1

    invoke-interface {p3, v1}, Lpc;->b(I)Lpc;

    move-result-object v4

    invoke-direct {p0, v0, p2, v4}, LoN;->a(LhH;Ljava/util/Set;Lpc;)LoC;

    move-result-object v0

    iget-object v4, p1, LhH;->e:[LhH;

    aget-object v4, v4, v1

    invoke-interface {p3, v1}, Lpc;->c(I)Lpc;

    move-result-object v5

    invoke-direct {p0, v4, p2, v5}, LoN;->a(LhH;Ljava/util/Set;Lpc;)LoC;

    move-result-object v4

    sget-object v5, LoN;->a:LoC;

    if-eq v0, v5, :cond_4

    sget-object v5, LoN;->a:LoC;

    if-ne v4, v5, :cond_5

    :cond_4
    sget-object v0, LoN;->a:LoC;

    goto/16 :goto_0

    :cond_5
    iget-object v5, v3, LhH;->d:[LhH;

    invoke-virtual {v0}, LoC;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhH;

    aput-object v0, v5, v1

    iget-object v5, v3, LhH;->e:[LhH;

    invoke-virtual {v4}, LoC;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhH;

    aput-object v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    new-instance v0, LoC;

    invoke-direct {v0, v3, v2}, LoC;-><init>(Ljava/lang/Object;Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p1, LhH;->f:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Macro cycle detected.  Current macro reference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, LhH;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  Previous macro references: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Los;->a(Ljava/lang/String;)V

    sget-object v0, LoN;->a:LoC;

    goto/16 :goto_0

    :cond_7
    iget-object v0, p1, LhH;->f:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, LhH;->f:Ljava/lang/String;

    invoke-interface {p3}, Lpc;->a()Lou;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, LoN;->a(Ljava/lang/String;Ljava/util/Set;Lou;)LoC;

    move-result-object v0

    iget-object v1, p1, LhH;->k:[I

    invoke-static {v0, v1}, Lpd;->a(LoC;[I)LoC;

    move-result-object v0

    iget-object v1, p1, LhH;->f:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p1}, LoJ;->a(LhH;)LhH;

    move-result-object v3

    iget-object v0, p1, LhH;->j:[LhH;

    array-length v0, v0

    new-array v0, v0, [LhH;

    iput-object v0, v3, LhH;->j:[LhH;

    move v1, v2

    :goto_3
    iget-object v0, p1, LhH;->j:[LhH;

    array-length v0, v0

    if-ge v1, v0, :cond_9

    iget-object v0, p1, LhH;->j:[LhH;

    aget-object v0, v0, v1

    invoke-interface {p3, v1}, Lpc;->d(I)Lpc;

    move-result-object v4

    invoke-direct {p0, v0, p2, v4}, LoN;->a(LhH;Ljava/util/Set;Lpc;)LoC;

    move-result-object v0

    sget-object v4, LoN;->a:LoC;

    if-ne v0, v4, :cond_8

    sget-object v0, LoN;->a:LoC;

    goto/16 :goto_0

    :cond_8
    iget-object v4, v3, LhH;->j:[LhH;

    invoke-virtual {v0}, LoC;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhH;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_9
    new-instance v0, LoC;

    invoke-direct {v0, v3, v2}, LoC;-><init>(Ljava/lang/Object;Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/util/Set;Lou;)LoC;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lou;",
            ")",
            "LoC",
            "<",
            "LhH;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x1

    iget v0, p0, LoN;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LoN;->l:I

    iget-object v0, p0, LoN;->g:Lpe;

    invoke-interface {v0, p1}, Lpe;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LoR;

    if-eqz v0, :cond_0

    iget-object v1, p0, LoN;->b:Lol;

    invoke-interface {v1}, Lol;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, LoR;->b()LhH;

    move-result-object v1

    invoke-direct {p0, v1, p2}, LoN;->a(LhH;Ljava/util/Set;)V

    iget v1, p0, LoN;->l:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, LoN;->l:I

    invoke-virtual {v0}, LoR;->a()LoC;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LoN;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, LoS;

    if-nez v9, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, LoN;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Invalid macro: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Los;->a(Ljava/lang/String;)V

    iget v0, p0, LoN;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LoN;->l:I

    sget-object v0, LoN;->a:LoC;

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, LoS;->a()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v9}, LoS;->b()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v9}, LoS;->c()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v9}, LoS;->e()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v9}, LoS;->d()Ljava/util/Map;

    move-result-object v6

    invoke-interface {p3}, Lou;->b()LoM;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v8}, LoN;->a(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;LoM;)LoC;

    move-result-object v1

    invoke-virtual {v1}, LoC;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, LoS;->f()LoK;

    move-result-object v0

    move-object v2, v0

    :goto_1
    if-nez v2, :cond_4

    iget v0, p0, LoN;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LoN;->l:I

    sget-object v0, LoN;->a:LoC;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, LoC;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v10, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, LoN;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Multiple macros active for macroName "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Los;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, LoC;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LoK;

    move-object v2, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, LoN;->e:Ljava/util/Map;

    invoke-interface {p3}, Lou;->a()LoF;

    move-result-object v3

    invoke-direct {p0, v0, v2, p2, v3}, LoN;->a(Ljava/util/Map;LoK;Ljava/util/Set;LoF;)LoC;

    move-result-object v3

    invoke-virtual {v1}, LoC;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, LoC;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v10

    :goto_2
    sget-object v1, LoN;->a:LoC;

    if-ne v3, v1, :cond_7

    sget-object v0, LoN;->a:LoC;

    :goto_3
    invoke-virtual {v2}, LoK;->b()LhH;

    move-result-object v1

    invoke-virtual {v0}, LoC;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, LoR;

    invoke-direct {v2, v0, v1}, LoR;-><init>(LoC;LhH;)V

    :cond_5
    invoke-direct {p0, v1, p2}, LoN;->a(LhH;Ljava/util/Set;)V

    iget v1, p0, LoN;->l:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, LoN;->l:I

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    new-instance v1, LoC;

    invoke-virtual {v3}, LoC;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v3, v0}, LoC;-><init>(Ljava/lang/Object;Z)V

    move-object v0, v1

    goto :goto_3
.end method

.method private a(Ljava/util/Map;LoK;Ljava/util/Set;LoF;)LoC;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lom;",
            ">;",
            "LoK;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "LoF;",
            ")",
            "LoC",
            "<",
            "LhH;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, LoK;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, LhF;->aL:LhF;

    invoke-virtual {v1}, LhF;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhH;

    if-nez v0, :cond_1

    const-string v0, "No function id in properties"

    invoke-static {v0}, Los;->a(Ljava/lang/String;)V

    sget-object v1, LoN;->a:LoC;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v7, v0, LhH;->g:Ljava/lang/String;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lom;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has no backing implementation."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Los;->a(Ljava/lang/String;)V

    sget-object v1, LoN;->a:LoC;

    goto :goto_0

    :cond_2
    iget-object v1, p0, LoN;->f:Lpe;

    invoke-interface {v1, p2}, Lpe;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LoC;

    if-eqz v1, :cond_3

    iget-object v2, p0, LoN;->b:Lol;

    invoke-interface {v2}, Lol;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, LoK;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v5

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p4, v2}, LoF;->a(Ljava/lang/String;)LoH;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LhH;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LhH;

    invoke-interface {v10, v3}, LoH;->a(LhH;)Lpc;

    move-result-object v3

    invoke-direct {p0, v2, p3, v3}, LoN;->a(LhH;Ljava/util/Set;Lpc;)LoC;

    move-result-object v10

    sget-object v2, LoN;->a:LoC;

    if-ne v10, v2, :cond_4

    sget-object v1, LoN;->a:LoC;

    goto :goto_0

    :cond_4
    invoke-virtual {v10}, LoC;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10}, LoC;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LhH;

    invoke-virtual {p2, v2, v3}, LoK;->a(Ljava/lang/String;LhH;)V

    move v2, v4

    :goto_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10}, LoC;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v2

    goto :goto_1

    :cond_5
    move v2, v6

    goto :goto_2

    :cond_6
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lom;->a(Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect keys for function "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " required "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lom;->b()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " had "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Los;->a(Ljava/lang/String;)V

    sget-object v1, LoN;->a:LoC;

    goto/16 :goto_0

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lom;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_3
    new-instance v1, LoC;

    invoke-virtual {v0, v8}, Lom;->a(Ljava/util/Map;)LhH;

    move-result-object v0

    invoke-direct {v1, v0, v5}, LoC;-><init>(Ljava/lang/Object;Z)V

    goto/16 :goto_0

    :cond_8
    move v5, v6

    goto :goto_3
.end method

.method private a(Ljava/util/Set;Ljava/util/Set;LoQ;LoM;)LoC;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "LoL;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "LoQ;",
            "LoM;",
            ")",
            "LoC",
            "<",
            "Ljava/util/Set",
            "<",
            "LoK;",
            ">;>;"
        }
    .end annotation

    const/4 v3, 0x1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LoL;

    invoke-interface {p4}, LoM;->a()LoI;

    move-result-object v7

    invoke-virtual {p0, v0, p2, v7}, LoN;->a(LoL;Ljava/util/Set;LoI;)LoC;

    move-result-object v8

    invoke-virtual {v8}, LoC;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3, v0, v4, v5, v7}, LoQ;->a(LoL;Ljava/util/Set;Ljava/util/Set;LoI;)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v8}, LoC;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    new-instance v0, LoC;

    invoke-direct {v0, v4, v2}, LoC;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method

.method private a(LhH;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LhH;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, LoB;

    invoke-direct {v0}, LoB;-><init>()V

    invoke-direct {p0, p1, p2, v0}, LoN;->a(LhH;Ljava/util/Set;Lpc;)LoC;

    move-result-object v0

    sget-object v1, LoN;->a:LoC;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, LoC;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhH;

    invoke-static {v0}, Lpb;->c(LhH;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, LoN;->i:LnW;

    invoke-virtual {v1, v0}, LnW;->a(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/util/Map;

    iget-object v2, p0, LoN;->i:LnW;

    invoke-virtual {v2, v0}, LnW;->a(Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    const-string v0, "pushAfterEvaluate: value not a Map"

    invoke-static {v0}, Los;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "pushAfterEvaluate: value not a Map or List"

    invoke-static {v0}, Los;->b(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;LoM;)LoC;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "LoL;",
            ">;",
            "Ljava/util/Map",
            "<",
            "LoL;",
            "Ljava/util/List",
            "<",
            "LoK;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "LoL;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "LoL;",
            "Ljava/util/List",
            "<",
            "LoK;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "LoL;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "LoM;",
            ")",
            "LoC",
            "<",
            "Ljava/util/Set",
            "<",
            "LoK;",
            ">;>;"
        }
    .end annotation

    new-instance v0, LoO;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, LoO;-><init>(LoN;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-direct {p0, p2, p7, v0, p8}, LoN;->a(Ljava/util/Set;Ljava/util/Set;LoQ;LoM;)LoC;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/Set;LoM;)LoC;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "LoL;",
            ">;",
            "LoM;",
            ")",
            "LoC",
            "<",
            "Ljava/util/Set",
            "<",
            "LoK;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, LoP;

    invoke-direct {v1, p0}, LoP;-><init>(LoN;)V

    invoke-direct {p0, p1, v0, v1, p2}, LoN;->a(Ljava/util/Set;Ljava/util/Set;LoQ;LoM;)LoC;

    move-result-object v0

    return-object v0
.end method

.method a(LoK;Ljava/util/Set;LoF;)LoC;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LoK;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "LoF;",
            ")",
            "LoC",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LoN;->d:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2, p3}, LoN;->a(Ljava/util/Map;LoK;Ljava/util/Set;LoF;)LoC;

    move-result-object v1

    invoke-virtual {v1}, LoC;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhH;

    invoke-static {v0}, Lpb;->b(LhH;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lpb;->c(Ljava/lang/Object;)LhH;

    new-instance v2, LoC;

    invoke-virtual {v1}, LoC;->b()Z

    move-result v1

    invoke-direct {v2, v0, v1}, LoC;-><init>(Ljava/lang/Object;Z)V

    return-object v2
.end method

.method a(LoL;Ljava/util/Set;LoI;)LoC;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LoL;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "LoI;",
            ")",
            "LoC",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, LoL;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LoK;

    invoke-interface {p3}, LoI;->a()LoF;

    move-result-object v5

    invoke-virtual {p0, v0, p2, v5}, LoN;->a(LoK;Ljava/util/Set;LoF;)LoC;

    move-result-object v5

    invoke-virtual {v5}, LoC;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lpb;->c(Ljava/lang/Object;)LhH;

    new-instance v0, LoC;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5}, LoC;->b()Z

    move-result v2

    invoke-direct {v0, v1, v2}, LoC;-><init>(Ljava/lang/Object;Z)V

    :goto_1
    return-object v0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v5}, LoC;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, LoL;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LoK;

    invoke-interface {p3}, LoI;->b()LoF;

    move-result-object v5

    invoke-virtual {p0, v0, p2, v5}, LoN;->a(LoK;Ljava/util/Set;LoF;)LoC;

    move-result-object v5

    invoke-virtual {v5}, LoC;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lpb;->c(Ljava/lang/Object;)LhH;

    new-instance v0, LoC;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5}, LoC;->b()Z

    move-result v2

    invoke-direct {v0, v1, v2}, LoC;-><init>(Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v5}, LoC;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lpb;->c(Ljava/lang/Object;)LhH;

    new-instance v0, LoC;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2, v1}, LoC;-><init>(Ljava/lang/Object;Z)V

    goto :goto_1
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, LoN;->b(Ljava/lang/String;)V

    iget-object v0, p0, LoN;->b:Lol;

    invoke-interface {v0, p1}, Lol;->a(Ljava/lang/String;)Lok;

    move-result-object v0

    invoke-interface {v0}, Lok;->a()Lpj;

    move-result-object v1

    iget-object v0, p0, LoN;->h:Ljava/util/Set;

    invoke-interface {v1}, Lpj;->b()LoM;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, LoN;->a(Ljava/util/Set;LoM;)LoC;

    move-result-object v0

    invoke-virtual {v0}, LoC;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LoK;

    iget-object v3, p0, LoN;->c:Ljava/util/Map;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Lpj;->a()LoF;

    move-result-object v5

    invoke-direct {p0, v3, v0, v4, v5}, LoN;->a(Ljava/util/Map;LoK;Ljava/util/Set;LoF;)LoC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, LoN;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, LoN;->k:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
