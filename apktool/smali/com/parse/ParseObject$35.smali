.class final Lcom/parse/ParseObject$35;
.super Lcom/parse/ParseTraverser;
.source "SourceFile"


# instance fields
.field final synthetic val$alreadySeen:Ljava/util/IdentityHashMap;

.field final synthetic val$alreadySeenNew:Ljava/util/IdentityHashMap;

.field final synthetic val$dirtyChildren:Ljava/util/List;

.field final synthetic val$dirtyFiles:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 2145
    iput-object p1, p0, Lcom/parse/ParseObject$35;->val$dirtyFiles:Ljava/util/List;

    iput-object p2, p0, Lcom/parse/ParseObject$35;->val$alreadySeen:Ljava/util/IdentityHashMap;

    iput-object p3, p0, Lcom/parse/ParseObject$35;->val$alreadySeenNew:Ljava/util/IdentityHashMap;

    iput-object p4, p0, Lcom/parse/ParseObject$35;->val$dirtyChildren:Ljava/util/List;

    invoke-direct {p0}, Lcom/parse/ParseTraverser;-><init>()V

    return-void
.end method


# virtual methods
.method protected visit(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2149
    instance-of v0, p1, Lcom/parse/ParseFile;

    if-eqz v0, :cond_1

    .line 2150
    check-cast p1, Lcom/parse/ParseFile;

    .line 2151
    invoke-virtual {p1}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2152
    iget-object v0, p0, Lcom/parse/ParseObject$35;->val$dirtyFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2197
    :cond_0
    :goto_0
    return v5

    .line 2158
    :cond_1
    instance-of v0, p1, Lcom/parse/ParseObject;

    if-eqz v0, :cond_0

    .line 2163
    check-cast p1, Lcom/parse/ParseObject;

    .line 2164
    iget-object v1, p0, Lcom/parse/ParseObject$35;->val$alreadySeen:Ljava/util/IdentityHashMap;

    .line 2165
    iget-object v2, p0, Lcom/parse/ParseObject$35;->val$alreadySeenNew:Ljava/util/IdentityHashMap;

    .line 2169
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2170
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 2182
    :goto_1
    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2185
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2, v1}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    .line 2186
    invoke-virtual {v2, p1, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2191
    # getter for: Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;
    invoke-static {p1}, Lcom/parse/ParseObject;->access$300(Lcom/parse/ParseObject;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/parse/ParseObject$35;->val$dirtyChildren:Ljava/util/List;

    iget-object v4, p0, Lcom/parse/ParseObject$35;->val$dirtyFiles:Ljava/util/List;

    # invokes: Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V
    invoke-static {v1, v3, v4, v2, v0}, Lcom/parse/ParseObject;->access$1300(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    .line 2193
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/parse/ParseObject;->isDirty(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2194
    iget-object v0, p0, Lcom/parse/ParseObject$35;->val$dirtyChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2172
    :cond_2
    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2173
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Found a circular dependency while saving."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2175
    :cond_3
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0, v2}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    .line 2176
    invoke-virtual {v0, p1, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
