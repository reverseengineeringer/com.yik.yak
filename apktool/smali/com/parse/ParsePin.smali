.class Lcom/parse/ParsePin;
.super Lcom/parse/ParseObject;
.source "SourceFile"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "_Pin"
.end annotation


# static fields
.field private static final KEY_NAME:Ljava/lang/String; = "_name"

.field private static final KEY_OBJECTS:Ljava/lang/String; = "_objects"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/parse/ParseObject;-><init>()V

    .line 131
    return-void
.end method

.method static getParsePin(Ljava/lang/String;)LN;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LN",
            "<",
            "Lcom/parse/ParsePin;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 16
    const-class v0, Lcom/parse/ParsePin;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v0

    const-string v1, "_name"

    invoke-virtual {v0, v1, p0}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    move-result-object v1

    .line 22
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v0

    move-object v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/parse/OfflineStore;->findAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZZ)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePin$1;

    invoke-direct {v1, p0}, Lcom/parse/ParsePin$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LN;->c(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method static pinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/parse/ParsePin;->getParsePin(Ljava/lang/String;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePin$2;

    invoke-direct {v1, p1}, Lcom/parse/ParsePin$2;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, LN;->d(LM;)LN;

    move-result-object v0

    goto :goto_0
.end method

.method static unpinAllObjectsAsync(Ljava/lang/String;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {p0}, Lcom/parse/ParsePin;->getParsePin(Ljava/lang/String;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePin$4;

    invoke-direct {v1}, Lcom/parse/ParsePin$4;-><init>()V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method static unpinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 82
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/parse/ParsePin;->getParsePin(Ljava/lang/String;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePin$3;

    invoke-direct {v1, p1}, Lcom/parse/ParsePin$3;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, LN;->d(LM;)LN;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string v0, "_name"

    invoke-virtual {p0, v0}, Lcom/parse/ParsePin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    const-string v0, "_objects"

    invoke-virtual {p0, v0}, Lcom/parse/ParsePin;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method needsDefaultACL()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 143
    const-string v0, "_name"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParsePin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public setObjects(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    const-string v0, "_objects"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParsePin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    return-void
.end method
