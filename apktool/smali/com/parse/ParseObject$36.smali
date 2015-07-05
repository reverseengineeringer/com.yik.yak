.class Lcom/parse/ParseObject$36;
.super Lcom/parse/ParseTraverser;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$result:LP;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;LP;)V
    .locals 0

    .prologue
    .line 2224
    iput-object p1, p0, Lcom/parse/ParseObject$36;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$36;->val$result:LP;

    invoke-direct {p0}, Lcom/parse/ParseTraverser;-><init>()V

    return-void
.end method


# virtual methods
.method protected visit(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 2227
    instance-of v0, p1, Lcom/parse/ParseObject;

    if-eqz v0, :cond_0

    .line 2228
    check-cast p1, Lcom/parse/ParseObject;

    .line 2229
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2230
    iget-object v0, p0, Lcom/parse/ParseObject$36;->val$result:LP;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, LP;->a(Ljava/lang/Object;)V

    .line 2235
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseObject$36;->val$result:LP;

    invoke-virtual {v0}, LP;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
