.class Lcom/parse/EventuallyPin;
.super Lcom/parse/ParseObject;
.source "SourceFile"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "_EventuallyPin"
.end annotation


# static fields
.field public static final PIN_NAME:Ljava/lang/String; = "_eventuallyPin"

.field public static final TYPE_COMMAND:I = 0x3

.field public static final TYPE_DELETE:I = 0x2

.field public static final TYPE_SAVE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "_EventuallyPin"

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static findAllPinned()LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LR",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parse/EventuallyPin;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/EventuallyPin;->findAllPinned(Ljava/util/Collection;)LR;

    move-result-object v0

    return-object v0
.end method

.method public static findAllPinned(Ljava/util/Collection;)LR;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "LR",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parse/EventuallyPin;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lcom/parse/ParseQuery;

    const-class v1, Lcom/parse/EventuallyPin;

    invoke-direct {v0, v1}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/Class;)V

    const-string v1, "_eventuallyPin"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;Z)Lcom/parse/ParseQuery;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->orderByAscending(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v1

    .line 137
    if-eqz p0, :cond_0

    .line 138
    const-string v0, "uuid"

    invoke-virtual {v1, v0, p0}, Lcom/parse/ParseQuery;->whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;

    .line 143
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lcom/parse/ParseUser;

    invoke-virtual {v1, v0}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/ParseUser;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/EventuallyPin$2;

    invoke-direct {v1}, Lcom/parse/EventuallyPin$2;-><init>()V

    invoke-virtual {v0, v1}, LR;->b(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method private static pinEventuallyCommand(ILcom/parse/ParseObject;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)LR;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/parse/ParseObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "LR",
            "<",
            "Lcom/parse/EventuallyPin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/parse/EventuallyPin;

    invoke-direct {v0}, Lcom/parse/EventuallyPin;-><init>()V

    .line 104
    const-string v1, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    const-string v1, "time"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    const-string v1, "type"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    if-eqz p1, :cond_0

    .line 108
    const-string v1, "object"

    invoke-virtual {v0, v1, p1}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    :cond_0
    if-eqz p2, :cond_1

    .line 111
    const-string v1, "operationSetUUID"

    invoke-virtual {v0, v1, p2}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    :cond_1
    if-eqz p3, :cond_2

    .line 114
    const-string v1, "sessionToken"

    invoke-virtual {v0, v1, p3}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    :cond_2
    if-eqz p4, :cond_3

    .line 117
    const-string v1, "command"

    invoke-virtual {v0, v1, p4}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    :cond_3
    const-string v1, "_eventuallyPin"

    invoke-virtual {v0, v1}, Lcom/parse/EventuallyPin;->pinInBackground(Ljava/lang/String;)LR;

    move-result-object v1

    new-instance v2, Lcom/parse/EventuallyPin$1;

    invoke-direct {v2, v0}, Lcom/parse/EventuallyPin$1;-><init>(Lcom/parse/EventuallyPin;)V

    invoke-virtual {v1, v2}, LR;->a(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method public static pinEventuallyCommand(Lcom/parse/ParseObject;Lcom/parse/ParseCommand;)LR;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseCommand;",
            ")",
            "LR",
            "<",
            "Lcom/parse/EventuallyPin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/parse/ParseCommand;->getOp()Ljava/lang/String;

    move-result-object v1

    .line 68
    const/4 v0, 0x0

    .line 69
    const-string v2, "create"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "update"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    :cond_0
    const/4 v1, 0x1

    .line 77
    :goto_0
    invoke-virtual {p1}, Lcom/parse/ParseCommand;->getOperationSetUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parse/ParseCommand;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p0, v2, v3, v0}, Lcom/parse/EventuallyPin;->pinEventuallyCommand(ILcom/parse/ParseObject;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)LR;

    move-result-object v0

    return-object v0

    .line 71
    :cond_1
    const-string v2, "delete"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    const/4 v1, 0x2

    goto :goto_0

    .line 74
    :cond_2
    const/4 v1, 0x3

    .line 75
    invoke-virtual {p1}, Lcom/parse/ParseCommand;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getCommand()Lcom/parse/ParseCommand;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v1, "command"

    invoke-virtual {p0, v1}, Lcom/parse/EventuallyPin;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parse/ParseCommand;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public getObject()Lcom/parse/ParseObject;
    .locals 1

    .prologue
    .line 50
    const-string v0, "object"

    invoke-virtual {p0, v0}, Lcom/parse/EventuallyPin;->getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method public getOperationSetUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "operationSetUUID"

    invoke-virtual {p0, v0}, Lcom/parse/EventuallyPin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "sessionToken"

    invoke-virtual {p0, v0}, Lcom/parse/EventuallyPin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 46
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/parse/EventuallyPin;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "uuid"

    invoke-virtual {p0, v0}, Lcom/parse/EventuallyPin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
