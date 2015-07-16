.class Lcom/parse/OfflineQueryLogic$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/parse/OfflineQueryLogic$ConstraintMatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineQueryLogic;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$queryConstraintValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 711
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$13;->this$0:Lcom/parse/OfflineQueryLogic;

    iput-object p2, p0, Lcom/parse/OfflineQueryLogic$13;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/OfflineQueryLogic$13;->val$queryConstraintValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$13;->this$0:Lcom/parse/OfflineQueryLogic;

    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$13;->val$key:Ljava/lang/String;

    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v0, p1, v1}, Lcom/parse/OfflineQueryLogic;->access$200(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 720
    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$13;->val$queryConstraintValue:Ljava/lang/Object;

    # invokes: Lcom/parse/OfflineQueryLogic;->matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v1, v0}, Lcom/parse/OfflineQueryLogic;->access$400(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    :goto_0
    return-object v0

    .line 717
    :catch_0
    move-exception v0

    .line 718
    invoke-static {v0}, LN;->a(Ljava/lang/Exception;)LN;

    move-result-object v0

    goto :goto_0
.end method
