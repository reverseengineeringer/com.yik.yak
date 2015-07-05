.class Lcom/parse/ParseObject$4;
.super Lcom/parse/ParseTraverser;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$fetchedObjects:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/parse/ParseObject$4;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$4;->val$fetchedObjects:Ljava/util/Map;

    invoke-direct {p0}, Lcom/parse/ParseTraverser;-><init>()V

    return-void
.end method


# virtual methods
.method protected visit(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 648
    instance-of v0, p1, Lcom/parse/ParseObject;

    if-eqz v0, :cond_0

    .line 649
    check-cast p1, Lcom/parse/ParseObject;

    .line 650
    # getter for: Lcom/parse/ParseObject;->objectId:Ljava/lang/String;
    invoke-static {p1}, Lcom/parse/ParseObject;->access$000(Lcom/parse/ParseObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/parse/ParseObject$4;->val$fetchedObjects:Ljava/util/Map;

    # getter for: Lcom/parse/ParseObject;->objectId:Ljava/lang/String;
    invoke-static {p1}, Lcom/parse/ParseObject;->access$000(Lcom/parse/ParseObject;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
