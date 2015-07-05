.class Lcom/parse/OfflineQueryLogic$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineQueryLogic;

.field final synthetic val$keys:[Ljava/lang/String;

.field final synthetic val$nearSphereKey:Ljava/lang/String;

.field final synthetic val$nearSphereValue:Lcom/parse/ParseGeoPoint;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic;Ljava/lang/String;Lcom/parse/ParseGeoPoint;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$16;->this$0:Lcom/parse/OfflineQueryLogic;

    iput-object p2, p0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereValue:Lcom/parse/ParseGeoPoint;

    iput-object p4, p0, Lcom/parse/OfflineQueryLogic$16;->val$keys:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/parse/ParseObject;Lcom/parse/ParseObject;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 863
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 867
    :try_start_0
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$16;->this$0:Lcom/parse/OfflineQueryLogic;

    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereKey:Ljava/lang/String;

    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v0, p1, v1}, Lcom/parse/OfflineQueryLogic;->access$200(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseGeoPoint;

    .line 868
    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$16;->this$0:Lcom/parse/OfflineQueryLogic;

    iget-object v4, p0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereKey:Ljava/lang/String;

    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v1, p2, v4}, Lcom/parse/OfflineQueryLogic;->access$200(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseGeoPoint;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    iget-object v4, p0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereValue:Lcom/parse/ParseGeoPoint;

    invoke-virtual {v0, v4}, Lcom/parse/ParseGeoPoint;->distanceInRadiansTo(Lcom/parse/ParseGeoPoint;)D

    move-result-wide v6

    .line 875
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereValue:Lcom/parse/ParseGeoPoint;

    invoke-virtual {v1, v0}, Lcom/parse/ParseGeoPoint;->distanceInRadiansTo(Lcom/parse/ParseGeoPoint;)D

    move-result-wide v0

    .line 876
    cmpl-double v4, v6, v0

    if-eqz v4, :cond_2

    .line 877
    sub-double v0, v6, v0

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_1

    move v0, v2

    .line 925
    :cond_0
    :goto_0
    return v0

    .line 869
    :catch_0
    move-exception v0

    .line 870
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move v0, v3

    .line 877
    goto :goto_0

    :cond_2
    move v4, v5

    .line 881
    :goto_1
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$16;->val$keys:[Ljava/lang/String;

    array-length v0, v0

    if-ge v4, v0, :cond_10

    .line 882
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$16;->val$keys:[Ljava/lang/String;

    aget-object v0, v0, v4

    .line 884
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 886
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move v8, v2

    move-object v9, v0

    .line 892
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$16;->this$0:Lcom/parse/OfflineQueryLogic;

    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v0, p1, v9}, Lcom/parse/OfflineQueryLogic;->access$200(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 893
    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$16;->this$0:Lcom/parse/OfflineQueryLogic;

    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v1, p2, v9}, Lcom/parse/OfflineQueryLogic;->access$200(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/parse/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 898
    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v0, v6, :cond_3

    if-nez v0, :cond_5

    :cond_3
    move v6, v2

    .line 899
    :goto_3
    sget-object v7, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v1, v7, :cond_4

    if-nez v1, :cond_6

    :cond_4
    move v7, v2

    .line 901
    :goto_4
    if-nez v6, :cond_7

    if-eqz v7, :cond_7

    move v0, v2

    .line 921
    :goto_5
    if-eqz v0, :cond_f

    .line 922
    if-eqz v8, :cond_0

    neg-int v0, v0

    goto :goto_0

    .line 894
    :catch_1
    move-exception v0

    .line 895
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    move v6, v5

    .line 898
    goto :goto_3

    :cond_6
    move v7, v5

    .line 899
    goto :goto_4

    .line 904
    :cond_7
    if-eqz v6, :cond_8

    if-nez v7, :cond_8

    move v0, v3

    .line 905
    goto :goto_5

    .line 906
    :cond_8
    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    move v0, v5

    .line 907
    goto :goto_5

    .line 908
    :cond_9
    instance-of v6, v0, Ljava/util/Date;

    if-eqz v6, :cond_a

    .line 909
    check-cast v0, Ljava/util/Date;

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    goto :goto_5

    .line 910
    :cond_a
    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_b

    .line 911
    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_5

    .line 912
    :cond_b
    instance-of v6, v0, Ljava/lang/Integer;

    if-eqz v6, :cond_c

    .line 913
    check-cast v0, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    goto :goto_5

    .line 914
    :cond_c
    instance-of v6, v0, Ljava/lang/Float;

    if-eqz v6, :cond_d

    .line 915
    check-cast v0, Ljava/lang/Float;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v0

    goto :goto_5

    .line 916
    :cond_d
    instance-of v6, v0, Ljava/lang/Double;

    if-eqz v6, :cond_e

    .line 917
    check-cast v0, Ljava/lang/Double;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    goto :goto_5

    .line 919
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to sort by key %s."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v9, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 881
    :cond_f
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    :cond_10
    move v0, v5

    .line 925
    goto/16 :goto_0

    :cond_11
    move v8, v5

    move-object v9, v0

    goto/16 :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 860
    check-cast p1, Lcom/parse/ParseObject;

    check-cast p2, Lcom/parse/ParseObject;

    invoke-virtual {p0, p1, p2}, Lcom/parse/OfflineQueryLogic$16;->compare(Lcom/parse/ParseObject;Lcom/parse/ParseObject;)I

    move-result v0

    return v0
.end method
