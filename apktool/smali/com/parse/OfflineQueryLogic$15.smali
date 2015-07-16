.class Lcom/parse/OfflineQueryLogic$15;
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

.field final synthetic val$constraintMatcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

.field final synthetic val$ignoreACLs:Z

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic;ZLcom/parse/ParseUser;Lcom/parse/OfflineQueryLogic$ConstraintMatcher;)V
    .locals 0

    .prologue
    .line 808
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$15;->this$0:Lcom/parse/OfflineQueryLogic;

    iput-boolean p2, p0, Lcom/parse/OfflineQueryLogic$15;->val$ignoreACLs:Z

    iput-object p3, p0, Lcom/parse/OfflineQueryLogic$15;->val$user:Lcom/parse/ParseUser;

    iput-object p4, p0, Lcom/parse/OfflineQueryLogic$15;->val$constraintMatcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;
    .locals 1
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
    .line 811
    iget-boolean v0, p0, Lcom/parse/OfflineQueryLogic$15;->val$ignoreACLs:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$15;->val$user:Lcom/parse/ParseUser;

    invoke-static {v0, p1}, Lcom/parse/OfflineQueryLogic;->hasReadAccess(Lcom/parse/ParseUser;Lcom/parse/ParseObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    .line 814
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$15;->val$constraintMatcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    invoke-interface {v0, p1, p2}, Lcom/parse/OfflineQueryLogic$ConstraintMatcher;->matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    goto :goto_0
.end method
