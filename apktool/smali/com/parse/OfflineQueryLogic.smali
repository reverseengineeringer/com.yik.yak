.class Lcom/parse/OfflineQueryLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final store:Lcom/parse/OfflineStore;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic;->store:Lcom/parse/OfflineStore;

    .line 39
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->compareTo(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/parse/OfflineQueryLogic;)Lcom/parse/OfflineStore;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic;->store:Lcom/parse/OfflineStore;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->matchesInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/ParseQuery$KeyConstraints;)Z
    .locals 1

    .prologue
    .line 24
    invoke-static {p0, p1, p2, p3}, Lcom/parse/OfflineQueryLogic;->matchesStatelessConstraint(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/ParseQuery$KeyConstraints;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)LN;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/OfflineQueryLogic;->fetchIncludeAsync(Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    return-object v0
.end method

.method private static compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/OfflineQueryLogic$Decider;)Z
    .locals 1

    .prologue
    .line 172
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 173
    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1, p2}, Lcom/parse/OfflineQueryLogic;->compareList(Ljava/lang/Object;Ljava/util/List;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    .line 177
    :goto_0
    return v0

    .line 174
    :cond_0
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 175
    check-cast p1, Lorg/json/JSONArray;

    invoke-static {p0, p1, p2}, Lcom/parse/OfflineQueryLogic;->compareArray(Ljava/lang/Object;Lorg/json/JSONArray;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    goto :goto_0

    .line 177
    :cond_1
    invoke-interface {p2, p0, p1}, Lcom/parse/OfflineQueryLogic$Decider;->decide(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static compareArray(Ljava/lang/Object;Lorg/json/JSONArray;Lcom/parse/OfflineQueryLogic$Decider;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 153
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 155
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, p0, v2}, Lcom/parse/OfflineQueryLogic$Decider;->decide(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    const/4 v1, 0x1

    .line 163
    :cond_0
    return v1

    .line 158
    :catch_0
    move-exception v0

    .line 160
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 153
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static compareList(Ljava/lang/Object;Ljava/util/List;Lcom/parse/OfflineQueryLogic$Decider;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<*>;",
            "Lcom/parse/OfflineQueryLogic$Decider;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 141
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 142
    invoke-interface {p2, p0, v1}, Lcom/parse/OfflineQueryLogic$Decider;->decide(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static compareTo(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 119
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 120
    check-cast p0, Ljava/util/Date;

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    .line 124
    :goto_0
    return v0

    .line 121
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 122
    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 123
    :cond_1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 124
    check-cast p0, Ljava/lang/Number;

    check-cast p1, Ljava/lang/Number;

    invoke-static {p0, p1}, Lcom/parse/Parse;->compareNumbers(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    goto :goto_0

    .line 126
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot compare against "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createDontSelectMatcher(Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 577
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineQueryLogic;->createSelectMatcher(Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    .line 578
    new-instance v1, Lcom/parse/OfflineQueryLogic$9;

    invoke-direct {v1, p0, v0}, Lcom/parse/OfflineQueryLogic$9;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/OfflineQueryLogic$ConstraintMatcher;)V

    return-object v1
.end method

.method private createInQueryMatcher(Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 520
    check-cast p1, Lcom/parse/ParseQuery;

    .line 521
    new-instance v0, Lcom/parse/OfflineQueryLogic$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/parse/OfflineQueryLogic$6;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseQuery;Ljava/lang/String;)V

    return-object v0
.end method

.method private createMatcher(Lcom/parse/ParseQuery$QueryConstraints;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$QueryConstraints;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 670
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 671
    invoke-virtual {p1}, Lcom/parse/ParseQuery$QueryConstraints;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 672
    invoke-virtual {p1, v0}, Lcom/parse/ParseQuery$QueryConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 674
    const-string v2, "$or"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 679
    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/parse/OfflineQueryLogic;->createOrMatcher(Ljava/util/ArrayList;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    .line 681
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 683
    :cond_1
    instance-of v2, v1, Lcom/parse/ParseQuery$KeyConstraints;

    if-eqz v2, :cond_2

    .line 687
    check-cast v1, Lcom/parse/ParseQuery$KeyConstraints;

    .line 688
    invoke-virtual {v1}, Lcom/parse/ParseQuery$KeyConstraints;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 689
    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery$KeyConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 690
    invoke-direct {p0, v2, v6, v0, v1}, Lcom/parse/OfflineQueryLogic;->createMatcher(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseQuery$KeyConstraints;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v2

    .line 692
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 695
    :cond_2
    instance-of v2, v1, Lcom/parse/ParseQuery$RelationConstraint;

    if-eqz v2, :cond_3

    .line 699
    check-cast v1, Lcom/parse/ParseQuery$RelationConstraint;

    .line 700
    new-instance v0, Lcom/parse/OfflineQueryLogic$12;

    invoke-direct {v0, p0, v1}, Lcom/parse/OfflineQueryLogic$12;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseQuery$RelationConstraint;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 711
    :cond_3
    new-instance v2, Lcom/parse/OfflineQueryLogic$13;

    invoke-direct {v2, p0, v0, v1}, Lcom/parse/OfflineQueryLogic$13;-><init>(Lcom/parse/OfflineQueryLogic;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 729
    :cond_4
    new-instance v0, Lcom/parse/OfflineQueryLogic$14;

    invoke-direct {v0, p0, v3}, Lcom/parse/OfflineQueryLogic$14;-><init>(Lcom/parse/OfflineQueryLogic;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private createMatcher(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseQuery$KeyConstraints;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery$KeyConstraints;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 596
    const-string v0, "$inQuery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    invoke-direct {p0, p2, p3}, Lcom/parse/OfflineQueryLogic;->createInQueryMatcher(Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    .line 612
    :goto_0
    return-object v0

    .line 599
    :cond_0
    const-string v0, "$notInQuery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    invoke-direct {p0, p2, p3}, Lcom/parse/OfflineQueryLogic;->createNotInQueryMatcher(Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    goto :goto_0

    .line 602
    :cond_1
    const-string v0, "$select"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 603
    invoke-direct {p0, p2, p3}, Lcom/parse/OfflineQueryLogic;->createSelectMatcher(Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    goto :goto_0

    .line 605
    :cond_2
    const-string v0, "$dontSelect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 606
    invoke-direct {p0, p2, p3}, Lcom/parse/OfflineQueryLogic;->createDontSelectMatcher(Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    goto :goto_0

    .line 612
    :cond_3
    new-instance v0, Lcom/parse/OfflineQueryLogic$10;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/parse/OfflineQueryLogic$10;-><init>(Lcom/parse/OfflineQueryLogic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/parse/ParseQuery$KeyConstraints;)V

    goto :goto_0
.end method

.method private createNotInQueryMatcher(Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 535
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineQueryLogic;->createInQueryMatcher(Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    .line 536
    new-instance v1, Lcom/parse/OfflineQueryLogic$7;

    invoke-direct {v1, p0, v0}, Lcom/parse/OfflineQueryLogic$7;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/OfflineQueryLogic$ConstraintMatcher;)V

    return-object v1
.end method

.method private createOrMatcher(Ljava/util/ArrayList;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parse/ParseQuery$QueryConstraints;",
            ">;)",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 633
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 634
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseQuery$QueryConstraints;

    .line 635
    invoke-direct {p0, v0}, Lcom/parse/OfflineQueryLogic;->createMatcher(Lcom/parse/ParseQuery$QueryConstraints;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    .line 636
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 641
    :cond_0
    new-instance v0, Lcom/parse/OfflineQueryLogic$11;

    invoke-direct {v0, p0, v1}, Lcom/parse/OfflineQueryLogic$11;-><init>(Lcom/parse/OfflineQueryLogic;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private createSelectMatcher(Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 554
    check-cast p1, Lorg/json/JSONObject;

    .line 555
    const-string v0, "query"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseQuery;

    .line 556
    const-string v1, "key"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 557
    new-instance v2, Lcom/parse/OfflineQueryLogic$8;

    invoke-direct {v2, p0, v0, p2, v1}, Lcom/parse/OfflineQueryLogic$8;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseQuery;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private fetchIncludeAsync(Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)LN;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 936
    if-nez p1, :cond_1

    .line 937
    invoke-static {v1}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v6

    .line 989
    :cond_0
    :goto_0
    return-object v6

    .line 941
    :cond_1
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    move-object v2, p1

    .line 942
    check-cast v2, Lorg/json/JSONArray;

    .line 944
    invoke-static {v1}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    move-object v6, v0

    .line 945
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 947
    new-instance v0, Lcom/parse/OfflineQueryLogic$17;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/parse/OfflineQueryLogic$17;-><init>(Lcom/parse/OfflineQueryLogic;Lorg/json/JSONArray;ILjava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v6, v0}, LN;->d(LM;)LN;

    move-result-object v0

    .line 945
    add-int/lit8 v3, v3, 0x1

    move-object v6, v0

    goto :goto_1

    .line 956
    :cond_2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 957
    check-cast p1, Ljava/util/List;

    .line 959
    invoke-static {v1}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    .line 960
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 961
    new-instance v3, Lcom/parse/OfflineQueryLogic$18;

    invoke-direct {v3, p0, v2, p2, p3}, Lcom/parse/OfflineQueryLogic$18;-><init>(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v3}, LN;->d(LM;)LN;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v6, v0

    .line 968
    goto :goto_0

    .line 972
    :cond_4
    if-nez p2, :cond_6

    .line 973
    instance-of v0, p1, Lcom/parse/ParseObject;

    if-nez v0, :cond_5

    .line 974
    new-instance v0, Lcom/parse/ParseException;

    const/16 v1, 0x79

    const-string v2, "include is invalid for non-ParseObjects"

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, LN;->a(Ljava/lang/Exception;)LN;

    move-result-object v6

    goto :goto_0

    .line 978
    :cond_5
    check-cast p1, Lcom/parse/ParseObject;

    .line 979
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic;->store:Lcom/parse/OfflineStore;

    invoke-virtual {v0, p1, p3}, Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    invoke-virtual {v0}, LN;->j()LN;

    move-result-object v6

    goto :goto_0

    .line 984
    :cond_6
    const-string v0, "\\."

    const/4 v2, 0x2

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 985
    aget-object v2, v0, v3

    .line 986
    array-length v3, v0

    if-le v3, v4, :cond_7

    aget-object v0, v0, v4

    .line 989
    :goto_3
    invoke-static {v1}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v1

    new-instance v3, Lcom/parse/OfflineQueryLogic$20;

    invoke-direct {v3, p0, p1, p3, v2}, Lcom/parse/OfflineQueryLogic$20;-><init>(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, LN;->b(LM;)LN;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineQueryLogic$19;

    invoke-direct {v2, p0, v0, p3}, Lcom/parse/OfflineQueryLogic$19;-><init>(Lcom/parse/OfflineQueryLogic;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v1, v2}, LN;->d(LM;)LN;

    move-result-object v6

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    .line 986
    goto :goto_3
.end method

.method private getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getValue(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 6

    .prologue
    const/16 v3, 0x79

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 50
    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    const-string v1, "\\."

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 52
    aget-object v2, v1, v5

    add-int/lit8 v3, p3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    .line 57
    if-eqz v2, :cond_2

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v2, v3, :cond_2

    instance-of v3, v2, Ljava/util/Map;

    if-nez v3, :cond_2

    instance-of v3, v2, Lorg/json/JSONObject;

    if-nez v3, :cond_2

    .line 59
    if-lez p3, :cond_1

    .line 62
    :try_start_0
    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    :goto_0
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 67
    aget-object v1, v1, v4

    add-int/lit8 v2, p3, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 106
    :cond_0
    :goto_1
    return-object v0

    .line 70
    :cond_1
    new-instance v0, Lcom/parse/ParseException;

    const/16 v1, 0x66

    const-string v2, "Key %s is invalid."

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p2, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 73
    :cond_2
    aget-object v0, v1, v4

    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 76
    :cond_3
    instance-of v1, p1, Lcom/parse/ParseObject;

    if-eqz v1, :cond_a

    .line 77
    check-cast p1, Lcom/parse/ParseObject;

    .line 80
    invoke-virtual {p1}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 81
    new-instance v0, Lcom/parse/ParseException;

    const-string v1, "Bad key: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 86
    :cond_4
    const-string v0, "objectId"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 87
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 88
    :cond_5
    const-string v0, "createdAt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "_created_at"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 89
    :cond_6
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    goto :goto_1

    .line 90
    :cond_7
    const-string v0, "updatedAt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "_updated_at"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 91
    :cond_8
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getUpdatedAt()Ljava/util/Date;

    move-result-object v0

    goto :goto_1

    .line 93
    :cond_9
    invoke-virtual {p1, p2}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 96
    :cond_a
    instance-of v1, p1, Lorg/json/JSONObject;

    if-eqz v1, :cond_b

    .line 97
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 99
    :cond_b
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_c

    .line 100
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1

    .line 102
    :cond_c
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p1, v1, :cond_0

    .line 105
    if-eqz p1, :cond_0

    .line 109
    new-instance v0, Lcom/parse/ParseException;

    const-string v1, "Bad key: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method static hasReadAccess(Lcom/parse/ParseUser;Lcom/parse/ParseObject;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 753
    if-ne p0, p1, :cond_1

    .line 768
    :cond_0
    :goto_0
    return v0

    .line 757
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getACL()Lcom/parse/ParseACL;

    move-result-object v1

    .line 758
    if-eqz v1, :cond_0

    .line 761
    invoke-virtual {v1}, Lcom/parse/ParseACL;->getPublicReadAccess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 764
    if-eqz p0, :cond_2

    invoke-virtual {v1, p0}, Lcom/parse/ParseACL;->getReadAccess(Lcom/parse/ParseUser;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 768
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static hasWriteAccess(Lcom/parse/ParseUser;Lcom/parse/ParseObject;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 775
    if-ne p0, p1, :cond_1

    .line 790
    :cond_0
    :goto_0
    return v0

    .line 779
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getACL()Lcom/parse/ParseACL;

    move-result-object v1

    .line 780
    if-eqz v1, :cond_0

    .line 783
    invoke-virtual {v1}, Lcom/parse/ParseACL;->getPublicWriteAccess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 786
    if-eqz p0, :cond_2

    invoke-virtual {v1, p0}, Lcom/parse/ParseACL;->getWriteAccess(Lcom/parse/ParseUser;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 790
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static matchesAllConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 304
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 305
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 306
    invoke-static {p1, v1}, Lcom/parse/OfflineQueryLogic;->matchesInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    .line 310
    goto :goto_0

    .line 312
    :cond_3
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_5

    move v1, v2

    :goto_1
    move-object v0, p0

    .line 313
    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_4

    move-object v0, p0

    .line 314
    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 315
    invoke-static {p1, v0}, Lcom/parse/OfflineQueryLogic;->matchesInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move v2, v3

    .line 319
    goto :goto_0

    .line 321
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value type not supported for $all queries."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 186
    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    .line 187
    :cond_0
    if-ne p0, p1, :cond_2

    .line 194
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 187
    goto :goto_0

    .line 190
    :cond_3
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_4

    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_4

    .line 191
    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->compareTo(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 194
    :cond_4
    new-instance v0, Lcom/parse/OfflineQueryLogic$1;

    invoke-direct {v0}, Lcom/parse/OfflineQueryLogic$1;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/parse/OfflineQueryLogic;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    goto :goto_0
.end method

.method private static matchesExistsConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 369
    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 370
    if-eqz p1, :cond_0

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p1, v2, :cond_0

    .line 372
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 370
    goto :goto_0

    .line 372
    :cond_1
    if-eqz p1, :cond_2

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static matchesGreaterThanConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 243
    new-instance v0, Lcom/parse/OfflineQueryLogic$4;

    invoke-direct {v0}, Lcom/parse/OfflineQueryLogic$4;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/parse/OfflineQueryLogic;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    return v0
.end method

.method private static matchesGreaterThanOrEqualToConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 258
    new-instance v0, Lcom/parse/OfflineQueryLogic$5;

    invoke-direct {v0}, Lcom/parse/OfflineQueryLogic$5;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/parse/OfflineQueryLogic;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    return v0
.end method

.method private static matchesInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 274
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 288
    :cond_0
    :goto_0
    return v2

    .line 276
    :cond_1
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_3

    move v1, v2

    :goto_1
    move-object v0, p0

    .line 277
    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    move-object v0, p0

    .line 278
    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    const/4 v2, 0x1

    goto :goto_0

    .line 277
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 284
    :cond_3
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    .line 287
    if-eqz p0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value type not supported for $in queries."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static matchesLessThanConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 213
    new-instance v0, Lcom/parse/OfflineQueryLogic$2;

    invoke-direct {v0}, Lcom/parse/OfflineQueryLogic$2;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/parse/OfflineQueryLogic;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    return v0
.end method

.method private static matchesLessThanOrEqualToConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 228
    new-instance v0, Lcom/parse/OfflineQueryLogic$3;

    invoke-direct {v0}, Lcom/parse/OfflineQueryLogic$3;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/parse/OfflineQueryLogic;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    return v0
.end method

.method private static matchesNearSphereConstraint(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Double;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 381
    if-eqz p1, :cond_0

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v2, :cond_2

    :cond_0
    move v0, v1

    .line 389
    :cond_1
    :goto_0
    return v0

    .line 384
    :cond_2
    if-eqz p2, :cond_1

    .line 387
    check-cast p0, Lcom/parse/ParseGeoPoint;

    .line 388
    check-cast p1, Lcom/parse/ParseGeoPoint;

    .line 389
    invoke-virtual {p0, p1}, Lcom/parse/ParseGeoPoint;->distanceInRadiansTo(Lcom/parse/ParseGeoPoint;)D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-lez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private static matchesNotEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 206
    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static matchesNotInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 297
    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->matchesInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static matchesRegexConstraint(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 329
    if-eqz p1, :cond_0

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v0

    .line 333
    :cond_1
    if-nez p2, :cond_2

    .line 334
    const-string p2, ""

    .line 337
    :cond_2
    const-string v1, "^[imxs]*$"

    invoke-virtual {p2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 338
    new-instance v1, Lcom/parse/ParseException;

    const/16 v2, 0x66

    const-string v3, "Invalid regex options: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 343
    :cond_3
    const-string v1, "i"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 344
    const/4 v0, 0x2

    .line 346
    :cond_4
    const-string v1, "m"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 347
    or-int/lit8 v0, v0, 0x8

    .line 349
    :cond_5
    const-string v1, "x"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 350
    or-int/lit8 v0, v0, 0x4

    .line 352
    :cond_6
    const-string v1, "s"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 353
    or-int/lit8 v0, v0, 0x20

    .line 356
    :cond_7
    check-cast p0, Ljava/lang/String;

    .line 357
    invoke-static {p0, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 358
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    goto :goto_0
.end method

.method private static matchesStatelessConstraint(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/ParseQuery$KeyConstraints;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 433
    const-string v1, "$ne"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesNotEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 477
    :cond_0
    :goto_0
    return v0

    .line 436
    :cond_1
    const-string v1, "$lt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 437
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesLessThanConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 439
    :cond_2
    const-string v1, "$lte"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 440
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesLessThanOrEqualToConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 442
    :cond_3
    const-string v1, "$gt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 443
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesGreaterThanConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 445
    :cond_4
    const-string v1, "$gte"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 446
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesGreaterThanOrEqualToConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 448
    :cond_5
    const-string v1, "$in"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 449
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 451
    :cond_6
    const-string v1, "$nin"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 452
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesNotInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 454
    :cond_7
    const-string v1, "$all"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 455
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesAllConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 457
    :cond_8
    const-string v1, "$regex"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 458
    const-string v0, "$options"

    invoke-virtual {p3, v0}, Lcom/parse/ParseQuery$KeyConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 459
    invoke-static {p1, p2, v0}, Lcom/parse/OfflineQueryLogic;->matchesRegexConstraint(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 461
    :cond_9
    const-string v1, "$options"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 465
    const-string v1, "$exists"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 466
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesExistsConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    .line 468
    :cond_a
    const-string v1, "$nearSphere"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 469
    const-string v0, "$maxDistance"

    invoke-virtual {p3, v0}, Lcom/parse/ParseQuery$KeyConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 470
    invoke-static {p1, p2, v0}, Lcom/parse/OfflineQueryLogic;->matchesNearSphereConstraint(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Double;)Z

    move-result v0

    goto/16 :goto_0

    .line 472
    :cond_b
    const-string v1, "$maxDistance"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 476
    const-string v1, "$within"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 477
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesWithinConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    .line 480
    :cond_c
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "The offline store does not yet support the %s operator."

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static matchesWithinConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v8, 0x66

    .line 398
    check-cast p0, Ljava/util/HashMap;

    .line 400
    const-string v0, "$box"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 401
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseGeoPoint;

    .line 402
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseGeoPoint;

    .line 403
    check-cast p1, Lcom/parse/ParseGeoPoint;

    .line 405
    invoke-virtual {v0}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 406
    new-instance v0, Lcom/parse/ParseException;

    const-string v1, "whereWithinGeoBox queries cannot cross the International Date Line."

    invoke-direct {v0, v8, v1}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 409
    :cond_0
    invoke-virtual {v0}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    .line 410
    new-instance v0, Lcom/parse/ParseException;

    const-string v1, "The southwest corner of a geo box must be south of the northeast corner."

    invoke-direct {v0, v8, v1}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 413
    :cond_1
    invoke-virtual {v0}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v6

    sub-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    .line 414
    new-instance v0, Lcom/parse/ParseException;

    const-string v1, "Geo box queries larger than 180 degrees in longitude are not supported. Please check point order."

    invoke-direct {v0, v8, v1}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 419
    :cond_2
    invoke-virtual {p1}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_3

    invoke-virtual {p1}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_3

    invoke-virtual {p1}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v6

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_3

    invoke-virtual {p1}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v0

    cmpg-double v0, v4, v0

    if-gtz v0, :cond_3

    move v0, v2

    :goto_0
    return v0

    :cond_3
    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method createMatcher(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Z)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Z)",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 806
    invoke-virtual {p1}, Lcom/parse/ParseQuery;->getConstraints()Lcom/parse/ParseQuery$QueryConstraints;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/OfflineQueryLogic;->createMatcher(Lcom/parse/ParseQuery$QueryConstraints;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    .line 808
    new-instance v1, Lcom/parse/OfflineQueryLogic$15;

    invoke-direct {v1, p0, p3, p2, v0}, Lcom/parse/OfflineQueryLogic$15;-><init>(Lcom/parse/OfflineQueryLogic;ZLcom/parse/ParseUser;Lcom/parse/OfflineQueryLogic$ConstraintMatcher;)V

    return-object v1
.end method

.method fetchIncludes(Lcom/parse/ParseObject;Lcom/parse/ParseQuery;Lcom/parse/ParseSQLiteDatabase;)LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(TT;",
            "Lcom/parse/ParseQuery",
            "<TT;>;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1021
    invoke-virtual {p2}, Lcom/parse/ParseQuery;->getIncludes()Ljava/util/List;

    move-result-object v1

    .line 1023
    const/4 v0, 0x0

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    .line 1024
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1025
    new-instance v3, Lcom/parse/OfflineQueryLogic$21;

    invoke-direct {v3, p0, p1, v0, p3}, Lcom/parse/OfflineQueryLogic$21;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseObject;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v1, v3}, LN;->d(LM;)LN;

    move-result-object v0

    move-object v1, v0

    .line 1031
    goto :goto_0

    .line 1032
    :cond_0
    return-object v1
.end method

.method sort(Ljava/util/List;Lcom/parse/ParseQuery;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/ParseQuery",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 824
    invoke-virtual {p2}, Lcom/parse/ParseQuery;->sortKeys()[Ljava/lang/String;

    move-result-object v4

    .line 826
    array-length v3, v4

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v5, v4, v0

    .line 827
    const-string v6, "^-?[A-Za-z][A-Za-z0-9_]*$"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 828
    const-string v6, "_created_at"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "_updated_at"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 829
    new-instance v0, Lcom/parse/ParseException;

    const/16 v2, 0x69

    const-string v3, "Invalid key name: \"%s\"."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 826
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 838
    :cond_1
    invoke-virtual {p2}, Lcom/parse/ParseQuery;->getConstraints()Lcom/parse/ParseQuery$QueryConstraints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseQuery$QueryConstraints;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 839
    invoke-virtual {p2}, Lcom/parse/ParseQuery;->getConstraints()Lcom/parse/ParseQuery$QueryConstraints;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parse/ParseQuery$QueryConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 840
    instance-of v6, v1, Lcom/parse/ParseQuery$KeyConstraints;

    if-eqz v6, :cond_4

    .line 841
    check-cast v1, Lcom/parse/ParseQuery$KeyConstraints;

    .line 842
    const-string v6, "$nearSphere"

    invoke-virtual {v1, v6}, Lcom/parse/ParseQuery$KeyConstraints;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 844
    const-string v2, "$nearSphere"

    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery$KeyConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseGeoPoint;

    :goto_2
    move-object v2, v1

    move-object v3, v0

    .line 847
    goto :goto_1

    .line 852
    :cond_2
    array-length v0, v4

    if-nez v0, :cond_3

    if-nez v3, :cond_3

    .line 928
    :goto_3
    return-void

    .line 860
    :cond_3
    new-instance v0, Lcom/parse/OfflineQueryLogic$16;

    invoke-direct {v0, p0, v3, v2, v4}, Lcom/parse/OfflineQueryLogic$16;-><init>(Lcom/parse/OfflineQueryLogic;Ljava/lang/String;Lcom/parse/ParseGeoPoint;[Ljava/lang/String;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3

    :cond_4
    move-object v1, v2

    move-object v0, v3

    goto :goto_2
.end method
