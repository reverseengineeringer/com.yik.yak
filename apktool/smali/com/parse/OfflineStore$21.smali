.class Lcom/parse/OfflineStore$21;
.super Lcom/parse/ParseTraverser;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$objectsInTree:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 966
    iput-object p1, p0, Lcom/parse/OfflineStore$21;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$21;->val$objectsInTree:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/parse/ParseTraverser;-><init>()V

    return-void
.end method


# virtual methods
.method protected visit(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 969
    instance-of v0, p1, Lcom/parse/ParseObject;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/parse/OfflineStore$21;->val$objectsInTree:Ljava/util/ArrayList;

    check-cast p1, Lcom/parse/ParseObject;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
