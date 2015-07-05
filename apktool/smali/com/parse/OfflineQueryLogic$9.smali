.class Lcom/parse/OfflineQueryLogic$9;
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

.field final synthetic val$selectMatcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/OfflineQueryLogic$ConstraintMatcher;)V
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$9;->this$0:Lcom/parse/OfflineQueryLogic;

    iput-object p2, p0, Lcom/parse/OfflineQueryLogic$9;->val$selectMatcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LR;
    .locals 2
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
    .line 581
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$9;->val$selectMatcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    invoke-interface {v0, p1, p2}, Lcom/parse/OfflineQueryLogic$ConstraintMatcher;->matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineQueryLogic$9$1;

    invoke-direct {v1, p0}, Lcom/parse/OfflineQueryLogic$9$1;-><init>(Lcom/parse/OfflineQueryLogic$9;)V

    invoke-virtual {v0, v1}, LR;->c(LQ;)LR;

    move-result-object v0

    return-object v0
.end method
