.class LpL;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/lang/Long;

.field private static c:Ljava/lang/Double;

.field private static d:LpK;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/Boolean;

.field private static g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Lev;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 35
    const/4 v0, 0x0

    sput-object v0, LpL;->a:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v6, v7}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, LpL;->b:Ljava/lang/Long;

    .line 45
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, LpL;->c:Ljava/lang/Double;

    .line 46
    invoke-static {v6, v7}, LpK;->a(J)LpK;

    move-result-object v0

    sput-object v0, LpL;->d:LpK;

    .line 47
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, LpL;->e:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v4}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, LpL;->f:Ljava/lang/Boolean;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, LpL;->g:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LpL;->h:Ljava/util/Map;

    .line 51
    sget-object v0, LpL;->e:Ljava/lang/String;

    invoke-static {v0}, LpL;->a(Ljava/lang/Object;)Lev;

    move-result-object v0

    sput-object v0, LpL;->i:Lev;

    return-void
.end method

.method public static a()Lev;
    .locals 1

    .prologue
    .line 90
    sget-object v0, LpL;->i:Lev;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lev;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 183
    invoke-static {}, Lev;->F()Lex;

    move-result-object v4

    .line 186
    instance-of v0, p0, Lev;

    if-eqz v0, :cond_0

    .line 187
    check-cast p0, Lev;

    .line 241
    :goto_0
    return-object p0

    .line 188
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 189
    sget-object v0, LeA;->a:LeA;

    invoke-virtual {v4, v0}, Lex;->a(LeA;)Lex;

    move-result-object v0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lex;->a(Ljava/lang/String;)Lex;

    .line 238
    :goto_1
    if-eqz v1, :cond_1

    .line 239
    invoke-virtual {v4, v2}, Lex;->b(Z)Lex;

    .line 241
    :cond_1
    invoke-virtual {v4}, Lex;->c()Lev;

    move-result-object p0

    goto :goto_0

    .line 191
    :cond_2
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_7

    .line 192
    sget-object v0, LeA;->b:LeA;

    invoke-virtual {v4, v0}, Lex;->a(LeA;)Lex;

    .line 193
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 194
    invoke-static {v5}, LpL;->a(Ljava/lang/Object;)Lev;

    move-result-object v5

    .line 195
    sget-object v6, LpL;->i:Lev;

    if-ne v5, v6, :cond_3

    .line 198
    sget-object p0, LpL;->i:Lev;

    goto :goto_0

    .line 200
    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {v5}, Lev;->E()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v2

    .line 201
    :goto_3
    invoke-virtual {v4, v5}, Lex;->b(Lev;)Lex;

    goto :goto_2

    :cond_5
    move v0, v1

    .line 200
    goto :goto_3

    :cond_6
    move v1, v0

    .line 203
    goto :goto_1

    .line 204
    :cond_7
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_d

    .line 205
    sget-object v0, LeA;->c:LeA;

    invoke-virtual {v4, v0}, Lex;->a(LeA;)Lex;

    .line 207
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v1

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 209
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, LpL;->a(Ljava/lang/Object;)Lev;

    move-result-object v6

    .line 210
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LpL;->a(Ljava/lang/Object;)Lev;

    move-result-object v7

    .line 211
    sget-object v0, LpL;->i:Lev;

    if-eq v6, v0, :cond_8

    sget-object v0, LpL;->i:Lev;

    if-ne v7, v0, :cond_9

    .line 214
    :cond_8
    sget-object p0, LpL;->i:Lev;

    goto/16 :goto_0

    .line 216
    :cond_9
    if-nez v3, :cond_a

    invoke-virtual {v6}, Lev;->E()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v7}, Lev;->E()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    move v0, v2

    .line 217
    :goto_5
    invoke-virtual {v4, v6}, Lex;->c(Lev;)Lex;

    .line 218
    invoke-virtual {v4, v7}, Lex;->d(Lev;)Lex;

    move v3, v0

    .line 220
    goto :goto_4

    :cond_b
    move v0, v1

    .line 216
    goto :goto_5

    :cond_c
    move v1, v3

    .line 221
    goto/16 :goto_1

    :cond_d
    invoke-static {p0}, LpL;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 224
    sget-object v0, LeA;->a:LeA;

    invoke-virtual {v4, v0}, Lex;->a(LeA;)Lex;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lex;->a(Ljava/lang/String;)Lex;

    goto/16 :goto_1

    .line 226
    :cond_e
    invoke-static {p0}, LpL;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 227
    sget-object v0, LeA;->f:LeA;

    invoke-virtual {v4, v0}, Lex;->a(LeA;)Lex;

    move-result-object v0

    invoke-static {p0}, LpL;->d(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lex;->a(J)Lex;

    goto/16 :goto_1

    .line 229
    :cond_f
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    .line 230
    sget-object v0, LeA;->h:LeA;

    invoke-virtual {v4, v0}, Lex;->a(LeA;)Lex;

    move-result-object v0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lex;->a(Z)Lex;

    goto/16 :goto_1

    .line 233
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Converting to Value from unknown object type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p0, :cond_11

    const-string v0, "null"

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpv;->a(Ljava/lang/String;)V

    .line 235
    sget-object p0, LpL;->i:Lev;

    goto/16 :goto_0

    .line 233
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private static b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 287
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_0

    instance-of v0, p0, LpK;

    if-eqz v0, :cond_1

    check-cast p0, LpK;

    invoke-virtual {p0}, LpK;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 310
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p0, LpK;

    if-eqz v0, :cond_1

    check-cast p0, LpK;

    invoke-virtual {p0}, LpK;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 321
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 322
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 325
    :goto_0
    return-wide v0

    .line 324
    :cond_0
    const-string v0, "getInt64 received non-Number"

    invoke-static {v0}, Lpv;->a(Ljava/lang/String;)V

    .line 325
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
