.class Lcom/parse/OfflineQueryLogic$10;
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

.field final synthetic val$allKeyConstraints:Lcom/parse/ParseQuery$KeyConstraints;

.field final synthetic val$constraint:Ljava/lang/Object;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$operator:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/parse/ParseQuery$KeyConstraints;)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$10;->this$0:Lcom/parse/OfflineQueryLogic;

    iput-object p2, p0, Lcom/parse/OfflineQueryLogic$10;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/OfflineQueryLogic$10;->val$operator:Ljava/lang/String;

    iput-object p4, p0, Lcom/parse/OfflineQueryLogic$10;->val$constraint:Ljava/lang/Object;

    iput-object p5, p0, Lcom/parse/OfflineQueryLogic$10;->val$allKeyConstraints:Lcom/parse/ParseQuery$KeyConstraints;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LR;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$10;->this$0:Lcom/parse/OfflineQueryLogic;

    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$10;->val$key:Ljava/lang/String;

    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v0, p1, v1}, Lcom/parse/OfflineQueryLogic;->access$200(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 617
    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$10;->val$operator:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/OfflineQueryLogic$10;->val$constraint:Ljava/lang/Object;

    iget-object v3, p0, Lcom/parse/OfflineQueryLogic$10;->val$allKeyConstraints:Lcom/parse/ParseQuery$KeyConstraints;

    # invokes: Lcom/parse/OfflineQueryLogic;->matchesStatelessConstraint(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/ParseQuery$KeyConstraints;)Z
    invoke-static {v1, v2, v0, v3}, Lcom/parse/OfflineQueryLogic;->access$500(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/ParseQuery$KeyConstraints;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 620
    :goto_0
    return-object v0

    .line 619
    :catch_0
    move-exception v0

    .line 620
    invoke-static {v0}, LR;->a(Ljava/lang/Exception;)LR;

    move-result-object v0

    goto :goto_0
.end method
